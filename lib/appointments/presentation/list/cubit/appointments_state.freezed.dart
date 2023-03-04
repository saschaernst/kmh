// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointments_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppointmentsState {
  List<AppointmentsData> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentsStateCopyWith<AppointmentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentsStateCopyWith<$Res> {
  factory $AppointmentsStateCopyWith(
          AppointmentsState value, $Res Function(AppointmentsState) then) =
      _$AppointmentsStateCopyWithImpl<$Res, AppointmentsState>;
  @useResult
  $Res call({List<AppointmentsData> data});
}

/// @nodoc
class _$AppointmentsStateCopyWithImpl<$Res, $Val extends AppointmentsState>
    implements $AppointmentsStateCopyWith<$Res> {
  _$AppointmentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AppointmentsData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppointmentsStateCopyWith<$Res>
    implements $AppointmentsStateCopyWith<$Res> {
  factory _$$_AppointmentsStateCopyWith(_$_AppointmentsState value,
          $Res Function(_$_AppointmentsState) then) =
      __$$_AppointmentsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppointmentsData> data});
}

/// @nodoc
class __$$_AppointmentsStateCopyWithImpl<$Res>
    extends _$AppointmentsStateCopyWithImpl<$Res, _$_AppointmentsState>
    implements _$$_AppointmentsStateCopyWith<$Res> {
  __$$_AppointmentsStateCopyWithImpl(
      _$_AppointmentsState _value, $Res Function(_$_AppointmentsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_AppointmentsState(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AppointmentsData>,
    ));
  }
}

/// @nodoc

class _$_AppointmentsState implements _AppointmentsState {
  _$_AppointmentsState(final List<AppointmentsData> data) : _data = data;

  final List<AppointmentsData> _data;
  @override
  List<AppointmentsData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AppointmentsState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppointmentsState &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentsStateCopyWith<_$_AppointmentsState> get copyWith =>
      __$$_AppointmentsStateCopyWithImpl<_$_AppointmentsState>(
          this, _$identity);
}

abstract class _AppointmentsState implements AppointmentsState {
  factory _AppointmentsState(final List<AppointmentsData> data) =
      _$_AppointmentsState;

  @override
  List<AppointmentsData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentsStateCopyWith<_$_AppointmentsState> get copyWith =>
      throw _privateConstructorUsedError;
}
