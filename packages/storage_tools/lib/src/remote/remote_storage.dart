import 'package:fpdart/fpdart.dart';
import 'package:storage_tools/base.dart';

import 'package.dart';

abstract class RemoteStorage<T> {
  TaskEither<StorageResponse, T> create(String id, T data);
  TaskEither<StorageResponse, T> read(String id);
  TaskEither<StorageResponse, T> update(String id, T data);
  TaskEither<StorageResponse, Unit> delete(String id);
  TaskEither<StorageResponse, Map<String, T>> query();
  Stream<RemoteEvent<T>> get stream;
  Future<void> dispose();
}
