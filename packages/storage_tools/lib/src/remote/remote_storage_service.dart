import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:storage_tools/base.dart';
import 'package:tools/services.dart';
import 'package:tools/utils.dart';

import 'package.dart';

class RemoteStorageService<T> with SubscriptionsMixin {
  final StorageRepo<T> _remote;
  final StorageRepo<T> _local;
  final StorageRepo<StorageChange> _changes;
  final ConnectivityService _connectivity;
  final AuthenticationService _authentication;
  final UuidService _uuids;
  final RemoteStorageMode _mode;

  late Function() _listener;
  bool _isRemoteRunning = false;

  RemoteStorageService(
    this._remote,
    this._local,
    this._changes,
    this._connectivity,
    this._authentication,
    this._uuids,
    this._mode,
  ) {
    _listener = _connectivity.addListener(_onConnectivity);
  }

  StateNotifier<Map<String, T>> get notifier => _local;

  Map<String, T> get all => _local.all;

  void _onConnectivity(ConnectivityState state) {
    if (state.hasData) {
      init();
    } else {
      disposeSubs();
    }
  }

  Future<void> init() async {
    await _authentication.login();
    final result = await _remote.init();
    _isRemoteRunning = result.isRight();

    if (_isRemoteRunning) {
      if (_isReadOnly) {
        addSub(_remote.stream.listen(_onRemoteUpdate));
      }

      if (_isReadOnly || (_local.isEmpty && _changes.isEmpty)) {
        _local.reset(_remote.all);
      } else {
        _syncRemote();
      }
    }
  }

  Future<void> reset() async {
    if (!_isReadOnly) {
      for (final key in all.keys) {
        await delete(key);
      }
    }
  }

  void _onRemoteUpdate(Map<String, T> event) => _local.reset(_remote.all);

  StreamSubscription listen(
    void Function(StorageRepoEvent<T> event) handler, [
    bool Function(StorageRepoEvent<T> event)? predicate,
  ]) =>
      _local.listen(
        handler,
        predicate ?? (event) => true,
      );

  Future<Either<StorageResponse, Unit>> add(T data, {String? id}) =>
      _handleLocalResult(
        (repo, id) => repo.add(id, data),
        id ?? _uuids.next,
        StorageAction.create,
      );

  T read(String id) => _local.read(id);

  Future<Either<StorageResponse, Unit>> update(
    String id,
    T Function(T) updater,
  ) =>
      _handleLocalResult(
        (repo, id) => repo.update(id, updater),
        id,
        StorageAction.update,
      );

  Future<Either<StorageResponse, Unit>> delete(String id) => _handleLocalResult(
        (repo, id) => repo.delete(id),
        id,
        StorageAction.delete,
      );

  Future<Either<StorageResponse, Unit>> _handleLocalResult(
    Future<Either<StorageResponse, Unit>> Function(
      StorageRepo<T> repo,
      String id,
    )
        handler,
    String id,
    StorageAction action,
  ) async {
    final result = await handler(_local, id);

    return result.match(
      (l) => result,
      (r) async {
        await _changes.add(id, const StorageChange.yes());

        return _syncRemote();
      },
    );
  }

  bool get _isReadOnly => _mode == RemoteStorageMode.readOnly;

  Future<Either<StorageResponse, Unit>> _syncRemote() async {
    final keys = _changes.all.keys;

    for (final key in keys) {
      if (!_local.hasKey(key)) {
        final result = await _handleRemoteCall(
          _remote.delete(key),
          key,
        );

        if (result.isLeft()) return result;
      } else if (!_remote.hasKey(key)) {
        final result = await _handleRemoteCall(
          _remote.add(key, _local.read(key)),
          key,
        );

        if (result.isLeft()) return result;
      } else if (_remote.read(key) != _local.read(key)) {
        final result = await _handleRemoteCall(
          _remote.update(key, (v) => _local.read(key)),
          key,
        );

        if (result.isLeft()) return result;
      }
    }

    return const Right(unit);
  }

  Future<Either<StorageResponse, Unit>> _handleRemoteCall(
    Future<Either<StorageResponse, Unit>> futureAction,
    String key,
  ) async {
    await _authentication.login();

    if (!_authentication.isLoggedIn) {
      return const Left(StorageResponse.warning('not_authorized'));
    }

    final result = await futureAction;

    if (result.isRight()) {
      await _changes.delete(key);
    }

    return result;
  }

  Future<void> dispose() async {
    await disposeSubs();
    _listener();
  }
}
