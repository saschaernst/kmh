import 'package:freezed_annotation/freezed_annotation.dart';

import 'package.dart';

part 'remote_event.freezed.dart';
part 'remote_event.g.dart';

@Freezed(genericArgumentFactories: true)
class RemoteEvent<T> with _$RemoteEvent<T> {
  const factory RemoteEvent(StorageAction action, String id, T data) =
      _RemoteEvent;

  factory RemoteEvent.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$RemoteEventFromJson(json, fromJsonT);
}
