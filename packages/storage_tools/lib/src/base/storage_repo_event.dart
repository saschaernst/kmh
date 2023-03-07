import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_repo_event.freezed.dart';

@freezed
class StorageRepoEvent<T> with _$StorageRepoEvent<T> {
  const factory StorageRepoEvent.add(String key, T value) = _Add;
  const factory StorageRepoEvent.update(String key, T value) = _Update;
  const factory StorageRepoEvent.delete(String key) = _Delete;
}
