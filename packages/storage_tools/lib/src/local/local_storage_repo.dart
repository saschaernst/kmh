import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:stash/stash_api.dart';
import 'package:storage_tools/base.dart';
import 'package:storage_tools/local.dart';

class LocalStorageRepo<T> extends StorageRepo<T> {
  final Vault<T> _storage;

  LocalStorageRepo(
    this._storage,
    super._getDefValue, [
    super.state = const {},
  ]);

  @override
  Future<Either<StorageResponse, Unit>> init() => runInitTask(
        TaskEither.tryCatch(
          _storage.loadData,
          _parseError,
        ),
      );

  @override
  Future<Either<StorageResponse, Unit>> reset([
    Map<String, T> data = const {},
  ]) async {
    await _storage.clear();

    for (var element in data.entries) {
      await _storage.put(element.key, element.value);
    }

    batchUpdateState(data);

    return const Right<StorageResponse, Unit>(unit);
  }

  @override
  Future<Either<StorageResponse, Unit>> add(String key, T value) =>
      _put(key, value, addEntry);

  @override
  Future<Either<StorageResponse, Unit>> update(
    String key,
    T Function(T value) updater,
  ) async {
    if (!hasKey(key)) {
      return const Left(StorageResponse.error('key_already_exists'));
    }

    final value = updater(read(key));

    return _put(key, value, updateEntry);
  }

  Future<Either<StorageResponse, Unit>> _put(
    String key,
    value,
    bool Function(String key, dynamic value) changeEntry,
  ) async {
    final result = await TaskEither.tryCatch(
      () => _storage.put(key, value),
      _parseError,
    ).run();

    return handleResult(result, key, ((key) => changeEntry(key, value)));
  }

  @override
  Future<Either<StorageResponse, Unit>> delete(String key) async {
    if (!hasKey(key)) {
      return const Left(StorageResponse.error('key_already_exists'));
    }

    final result = await TaskEither.tryCatch(
      () async {
        await _storage.remove(key);
        return unit;
      },
      _parseError,
    ).run();

    return handleResult(result, key, deleteEntry);
  }

  StorageResponse _parseError(Object error, StackTrace stackTrace) {
    return const StorageResponse.error('unknown_error');
  }
}
