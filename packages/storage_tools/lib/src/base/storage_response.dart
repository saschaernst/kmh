import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_response.freezed.dart';

@freezed
class StorageResponse with _$StorageResponse {
  const factory StorageResponse.warning(
    String message,
  ) = _StorageResponseWarning;

  const factory StorageResponse.error(
    String message,
  ) = _StorageResponseError;
}
