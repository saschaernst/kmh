// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RemoteEvent<T> _$$_RemoteEventFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_RemoteEvent<T>(
      $enumDecode(_$StorageActionEnumMap, json['action']),
      json['id'] as String,
      fromJsonT(json['data']),
    );

Map<String, dynamic> _$$_RemoteEventToJson<T>(
  _$_RemoteEvent<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'action': _$StorageActionEnumMap[instance.action]!,
      'id': instance.id,
      'data': toJsonT(instance.data),
    };

const _$StorageActionEnumMap = {
  StorageAction.create: 'create',
  StorageAction.delete: 'delete',
  StorageAction.update: 'update',
};
