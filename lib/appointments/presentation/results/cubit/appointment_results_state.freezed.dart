// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_results_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppointmentResultsState {
  List<AppointmentResultData> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentResultsStateCopyWith<AppointmentResultsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentResultsStateCopyWith<$Res> {
  factory $AppointmentResultsStateCopyWith(AppointmentResultsState value,
          $Res Function(AppointmentResultsState) then) =
      _$AppointmentResultsStateCopyWithImpl<$Res, AppointmentResultsState>;
  @useResult
  $Res call({List<AppointmentResultData> list});
}

/// @nodoc
class _$AppointmentResultsStateCopyWithImpl<$Res,
        $Val extends AppointmentResultsState>
    implements $AppointmentResultsStateCopyWith<$Res> {
  _$AppointmentResultsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<AppointmentResultData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppointmentResultsStateCopyWith<$Res>
    implements $AppointmentResultsStateCopyWith<$Res> {
  factory _$$_AppointmentResultsStateCopyWith(_$_AppointmentResultsState value,
          $Res Function(_$_AppointmentResultsState) then) =
      __$$_AppointmentResultsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppointmentResultData> list});
}

/// @nodoc
class __$$_AppointmentResultsStateCopyWithImpl<$Res>
    extends _$AppointmentResultsStateCopyWithImpl<$Res,
        _$_AppointmentResultsState>
    implements _$$_AppointmentResultsStateCopyWith<$Res> {
  __$$_AppointmentResultsStateCopyWithImpl(_$_AppointmentResultsState _value,
      $Res Function(_$_AppointmentResultsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_AppointmentResultsState(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<AppointmentResultData>,
    ));
  }
}

/// @nodoc

class _$_AppointmentResultsState implements _AppointmentResultsState {
  const _$_AppointmentResultsState(final List<AppointmentResultData> list)
      : _list = list;

  final List<AppointmentResultData> _list;
  @override
  List<AppointmentResultData> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'AppointmentResultsState(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppointmentResultsState &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentResultsStateCopyWith<_$_AppointmentResultsState>
      get copyWith =>
          __$$_AppointmentResultsStateCopyWithImpl<_$_AppointmentResultsState>(
              this, _$identity);
}

abstract class _AppointmentResultsState implements AppointmentResultsState {
  const factory _AppointmentResultsState(
      final List<AppointmentResultData> list) = _$_AppointmentResultsState;

  @override
  List<AppointmentResultData> get list;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentResultsStateCopyWith<_$_AppointmentResultsState>
      get copyWith => throw _privateConstructorUsedError;
}
