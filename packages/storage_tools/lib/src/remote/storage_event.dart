import 'package:freezed_annotation/freezed_annotation.dart';

import 'package.dart';

part 'storage_event.freezed.dart';
part 'storage_event.g.dart';

@freezed
class StorageEvent with _$StorageEvent {
  const factory StorageEvent(
    StorageAction action,
    String id,
    DateTime timestamp,
  ) = _StorageEvent;

  factory StorageEvent.empty() => StorageEvent(
        StorageAction.create,
        '',
        DateTime.now(),
      );

  factory StorageEvent.fromJson(Map<String, dynamic> json) =>
      _$StorageEventFromJson(json);
}
