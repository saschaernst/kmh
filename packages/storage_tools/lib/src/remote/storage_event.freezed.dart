// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StorageEvent _$StorageEventFromJson(Map<String, dynamic> json) {
  return _StorageEvent.fromJson(json);
}

/// @nodoc
mixin _$StorageEvent {
  StorageAction get action => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorageEventCopyWith<StorageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageEventCopyWith<$Res> {
  factory $StorageEventCopyWith(
          StorageEvent value, $Res Function(StorageEvent) then) =
      _$StorageEventCopyWithImpl<$Res, StorageEvent>;
  @useResult
  $Res call({StorageAction action, String id, DateTime timestamp});
}

/// @nodoc
class _$StorageEventCopyWithImpl<$Res, $Val extends StorageEvent>
    implements $StorageEventCopyWith<$Res> {
  _$StorageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? id = null,
    Object? timestamp = null,
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
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StorageEventCopyWith<$Res>
    implements $StorageEventCopyWith<$Res> {
  factory _$$_StorageEventCopyWith(
          _$_StorageEvent value, $Res Function(_$_StorageEvent) then) =
      __$$_StorageEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StorageAction action, String id, DateTime timestamp});
}

/// @nodoc
class __$$_StorageEventCopyWithImpl<$Res>
    extends _$StorageEventCopyWithImpl<$Res, _$_StorageEvent>
    implements _$$_StorageEventCopyWith<$Res> {
  __$$_StorageEventCopyWithImpl(
      _$_StorageEvent _value, $Res Function(_$_StorageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? id = null,
    Object? timestamp = null,
  }) {
    return _then(_$_StorageEvent(
      null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as StorageAction,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StorageEvent implements _StorageEvent {
  const _$_StorageEvent(this.action, this.id, this.timestamp);

  factory _$_StorageEvent.fromJson(Map<String, dynamic> json) =>
      _$$_StorageEventFromJson(json);

  @override
  final StorageAction action;
  @override
  final String id;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'StorageEvent(action: $action, id: $id, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StorageEvent &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, action, id, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StorageEventCopyWith<_$_StorageEvent> get copyWith =>
      __$$_StorageEventCopyWithImpl<_$_StorageEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StorageEventToJson(
      this,
    );
  }
}

abstract class _StorageEvent implements StorageEvent {
  const factory _StorageEvent(final StorageAction action, final String id,
      final DateTime timestamp) = _$_StorageEvent;

  factory _StorageEvent.fromJson(Map<String, dynamic> json) =
      _$_StorageEvent.fromJson;

  @override
  StorageAction get action;
  @override
  String get id;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$_StorageEventCopyWith<_$_StorageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
