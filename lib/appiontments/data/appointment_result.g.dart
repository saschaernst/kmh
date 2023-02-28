// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppointmentResult _$$_AppointmentResultFromJson(Map<String, dynamic> json) =>
    _$_AppointmentResult(
      $enumDecode(_$AppointmentStateEnumMap, json['state']),
      json['comment'] as String? ?? '',
    );

Map<String, dynamic> _$$_AppointmentResultToJson(
        _$_AppointmentResult instance) =>
    <String, dynamic>{
      'state': _$AppointmentStateEnumMap[instance.state]!,
      'comment': instance.comment,
    };

const _$AppointmentStateEnumMap = {
  AppointmentState.open: 'open',
  AppointmentState.success: 'success',
  AppointmentState.failure: 'failure',
  AppointmentState.discontinued: 'discontinued',
  AppointmentState.cancelledByUs: 'cancelledByUs',
  AppointmentState.cancelledByCustomer: 'cancelledByCustomer',
};
