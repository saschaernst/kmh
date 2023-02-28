// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppointmentResult _$AppointmentResultFromJson(Map<String, dynamic> json) {
  return _AppointmentResult.fromJson(json);
}

/// @nodoc
mixin _$AppointmentResult {
  AppointmentState get state => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentResultCopyWith<AppointmentResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentResultCopyWith<$Res> {
  factory $AppointmentResultCopyWith(
          AppointmentResult value, $Res Function(AppointmentResult) then) =
      _$AppointmentResultCopyWithImpl<$Res, AppointmentResult>;
  @useResult
  $Res call({AppointmentState state, String comment});
}

/// @nodoc
class _$AppointmentResultCopyWithImpl<$Res, $Val extends AppointmentResult>
    implements $AppointmentResultCopyWith<$Res> {
  _$AppointmentResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AppointmentState,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppointmentResultCopyWith<$Res>
    implements $AppointmentResultCopyWith<$Res> {
  factory _$$_AppointmentResultCopyWith(_$_AppointmentResult value,
          $Res Function(_$_AppointmentResult) then) =
      __$$_AppointmentResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppointmentState state, String comment});
}

/// @nodoc
class __$$_AppointmentResultCopyWithImpl<$Res>
    extends _$AppointmentResultCopyWithImpl<$Res, _$_AppointmentResult>
    implements _$$_AppointmentResultCopyWith<$Res> {
  __$$_AppointmentResultCopyWithImpl(
      _$_AppointmentResult _value, $Res Function(_$_AppointmentResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? comment = null,
  }) {
    return _then(_$_AppointmentResult(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AppointmentState,
      null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppointmentResult implements _AppointmentResult {
  const _$_AppointmentResult(this.state, [this.comment = '']);

  factory _$_AppointmentResult.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentResultFromJson(json);

  @override
  final AppointmentState state;
  @override
  @JsonKey()
  final String comment;

  @override
  String toString() {
    return 'AppointmentResult(state: $state, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppointmentResult &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, state, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentResultCopyWith<_$_AppointmentResult> get copyWith =>
      __$$_AppointmentResultCopyWithImpl<_$_AppointmentResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentResultToJson(
      this,
    );
  }
}

abstract class _AppointmentResult implements AppointmentResult {
  const factory _AppointmentResult(final AppointmentState state,
      [final String comment]) = _$_AppointmentResult;

  factory _AppointmentResult.fromJson(Map<String, dynamic> json) =
      _$_AppointmentResult.fromJson;

  @override
  AppointmentState get state;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentResultCopyWith<_$_AppointmentResult> get copyWith =>
      throw _privateConstructorUsedError;
}
