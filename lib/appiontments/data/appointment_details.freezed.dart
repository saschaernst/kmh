// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppointmentDetails _$AppointmentDetailsFromJson(Map<String, dynamic> json) {
  return _AppointmentDetails.fromJson(json);
}

/// @nodoc
mixin _$AppointmentDetails {
  DateTime get date => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentDetailsCopyWith<AppointmentDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDetailsCopyWith<$Res> {
  factory $AppointmentDetailsCopyWith(
          AppointmentDetails value, $Res Function(AppointmentDetails) then) =
      _$AppointmentDetailsCopyWithImpl<$Res, AppointmentDetails>;
  @useResult
  $Res call({DateTime date, int duration, String companyId});
}

/// @nodoc
class _$AppointmentDetailsCopyWithImpl<$Res, $Val extends AppointmentDetails>
    implements $AppointmentDetailsCopyWith<$Res> {
  _$AppointmentDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? duration = null,
    Object? companyId = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppointmentDetailsCopyWith<$Res>
    implements $AppointmentDetailsCopyWith<$Res> {
  factory _$$_AppointmentDetailsCopyWith(_$_AppointmentDetails value,
          $Res Function(_$_AppointmentDetails) then) =
      __$$_AppointmentDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, int duration, String companyId});
}

/// @nodoc
class __$$_AppointmentDetailsCopyWithImpl<$Res>
    extends _$AppointmentDetailsCopyWithImpl<$Res, _$_AppointmentDetails>
    implements _$$_AppointmentDetailsCopyWith<$Res> {
  __$$_AppointmentDetailsCopyWithImpl(
      _$_AppointmentDetails _value, $Res Function(_$_AppointmentDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? duration = null,
    Object? companyId = null,
  }) {
    return _then(_$_AppointmentDetails(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppointmentDetails implements _AppointmentDetails {
  const _$_AppointmentDetails(this.date, this.duration, this.companyId);

  factory _$_AppointmentDetails.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentDetailsFromJson(json);

  @override
  final DateTime date;
  @override
  final int duration;
  @override
  final String companyId;

  @override
  String toString() {
    return 'AppointmentDetails(date: $date, duration: $duration, companyId: $companyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppointmentDetails &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, duration, companyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentDetailsCopyWith<_$_AppointmentDetails> get copyWith =>
      __$$_AppointmentDetailsCopyWithImpl<_$_AppointmentDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentDetailsToJson(
      this,
    );
  }
}

abstract class _AppointmentDetails implements AppointmentDetails {
  const factory _AppointmentDetails(
          final DateTime date, final int duration, final String companyId) =
      _$_AppointmentDetails;

  factory _AppointmentDetails.fromJson(Map<String, dynamic> json) =
      _$_AppointmentDetails.fromJson;

  @override
  DateTime get date;
  @override
  int get duration;
  @override
  String get companyId;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentDetailsCopyWith<_$_AppointmentDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
