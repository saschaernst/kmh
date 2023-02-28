// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppointmentDetails _$$_AppointmentDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_AppointmentDetails(
      DateTime.parse(json['date'] as String),
      json['duration'] as int,
      json['companyId'] as String,
    );

Map<String, dynamic> _$$_AppointmentDetailsToJson(
        _$_AppointmentDetails instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'duration': instance.duration,
      'companyId': instance.companyId,
    };
