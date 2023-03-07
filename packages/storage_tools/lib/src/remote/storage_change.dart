import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_change.freezed.dart';
part 'storage_change.g.dart';

@freezed
class StorageChange with _$StorageChange {
  const factory StorageChange.yes() = _Yes;
  const factory StorageChange.no() = _No;

  factory StorageChange.fromJson(Map<String, dynamic> json) =>
      _$StorageChangeFromJson(json);
}
