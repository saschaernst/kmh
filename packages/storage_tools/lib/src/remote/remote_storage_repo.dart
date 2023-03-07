import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:storage_tools/base.dart';
import 'package:storage_tools/remote.dart';

class RemoteStorageRepo<T> extends StorageRepo<T> {
  final RemoteStorage<T> _storage;

  StreamSubscription<RemoteEvent<T>>? _subscription;

  RemoteStorageRepo(
    this._storage,
    super._getDefault, [
    super._state = const {},
  ]);

  @override
  Future<Either<StorageResponse, Unit>> init() async {
    final result = await runInitTask(_storage.query());
    await _subscription?.cancel();

    if (result.isRight()) {
      _subscription = _storage.stream.listen(_onStreamEvent);
    }

    return result;
  }

  @override
  Future<Either<StorageResponse, Unit>> reset([
    Map<String, T> data = const {},
  ]) async =>
      const Right<StorageResponse, Unit>(unit);

  @override
  Future<Either<StorageResponse, Unit>> add(String key, T value) async {
    final result = await _storage.create(key, value).run();

    return handleResult(result, key, (key) => addEntry(key, value));
  }

  @override
  Future<Either<StorageResponse, Unit>> update(
    String key,
    T Function(T) updater,
  ) async {
    final value = updater(read(key));
    final result = await _storage.update(key, value).run();

    return handleResult(result, key, (key) => updateEntry(key, value));
  }

  @override
  Future<Either<StorageResponse, Unit>> delete(String key) async {
    final result = await _storage.delete(key).run();

    return handleResult(result, key, deleteEntry);
  }

  void _onStreamEvent(RemoteEvent<T> event) {
    final id = event.id;
    final data = event.data;

    switch (event.action) {
      case StorageAction.create:
        addEntry(id, data);
        break;
      case StorageAction.update:
        updateEntry(id, data);
        break;
      case StorageAction.delete:
        deleteEntry(id);
        break;
    }
  }
}
