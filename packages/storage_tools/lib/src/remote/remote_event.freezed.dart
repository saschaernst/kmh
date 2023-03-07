// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoteEvent<T> _$RemoteEventFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _RemoteEvent<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$RemoteEvent<T> {
  StorageAction get action => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoteEventCopyWith<T, RemoteEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteEventCopyWith<T, $Res> {
  factory $RemoteEventCopyWith(
          RemoteEvent<T> value, $Res Function(RemoteEvent<T>) then) =
      _$RemoteEventCopyWithImpl<T, $Res, RemoteEvent<T>>;
  @useResult
  $Res call({StorageAction action, String id, T data});
}

/// @nodoc
class _$RemoteEventCopyWithImpl<T, $Res, $Val extends RemoteEvent<T>>
    implements $RemoteEventCopyWith<T, $Res> {
  _$RemoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? id = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as StorageAction,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoteEventCopyWith<T, $Res>
    implements $RemoteEventCopyWith<T, $Res> {
  factory _$$_RemoteEventCopyWith(
          _$_RemoteEvent<T> value, $Res Function(_$_RemoteEvent<T>) then) =
      __$$_RemoteEventCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({StorageAction action, String id, T data});
}

/// @nodoc
class __$$_RemoteEventCopyWithImpl<T, $Res>
    extends _$RemoteEventCopyWithImpl<T, $Res, _$_RemoteEvent<T>>
    implements _$$_RemoteEventCopyWith<T, $Res> {
  __$$_RemoteEventCopyWithImpl(
      _$_RemoteEvent<T> _value, $Res Function(_$_RemoteEvent<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? id = null,
    Object? data = freezed,
  }) {
    return _then(_$_RemoteEvent<T>(
      null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as StorageAction,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_RemoteEvent<T> implements _RemoteEvent<T> {
  const _$_RemoteEvent(this.action, this.id, this.data);

  factory _$_RemoteEvent.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_RemoteEventFromJson(json, fromJsonT);

  @override
  final StorageAction action;
  @override
  final String id;
  @override
  final T data;

  @override
  String toString() {
    return 'RemoteEvent<$T>(action: $action, id: $id, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteEvent<T> &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, action, id, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteEventCopyWith<T, _$_RemoteEvent<T>> get copyWith =>
      __$$_RemoteEventCopyWithImpl<T, _$_RemoteEvent<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_RemoteEventToJson<T>(this, toJsonT);
  }
}

abstract class _RemoteEvent<T> implements RemoteEvent<T> {
  const factory _RemoteEvent(
          final StorageAction action, final String id, final T data) =
      _$_RemoteEvent<T>;

  factory _RemoteEvent.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_RemoteEvent<T>.fromJson;

  @override
  StorageAction get action;
  @override
  String get id;
  @override
  T get data;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteEventCopyWith<T, _$_RemoteEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
