import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_state.freezed.dart';

@freezed
class StorageState with _$StorageState {
  const factory StorageState.none() = _None;
  const factory StorageState.ready() = _Ready;
  const factory StorageState.error() = _Error;
}
