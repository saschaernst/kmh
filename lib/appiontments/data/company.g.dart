// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Company _$$_CompanyFromJson(Map<String, dynamic> json) => _$_Company(
      json['name'] as String,
      json['street'] as String,
      json['zip'] as String,
      json['city'] as String,
      json['contact'] as String,
    );

Map<String, dynamic> _$$_CompanyToJson(_$_Company instance) =>
    <String, dynamic>{
      'name': instance.name,
      'street': instance.street,
      'zip': instance.zip,
      'city': instance.city,
      'contact': instance.contact,
    };
