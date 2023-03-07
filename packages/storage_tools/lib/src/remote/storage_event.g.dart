// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StorageEvent _$$_StorageEventFromJson(Map<String, dynamic> json) =>
    _$_StorageEvent(
      $enumDecode(_$StorageActionEnumMap, json['action']),
      json['id'] as String,
      DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$_StorageEventToJson(_$_StorageEvent instance) =>
    <String, dynamic>{
      'action': _$StorageActionEnumMap[instance.action]!,
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
    };

const _$StorageActionEnumMap = {
  StorageAction.create: 'create',
  StorageAction.delete: 'delete',
  StorageAction.update: 'update',
};
