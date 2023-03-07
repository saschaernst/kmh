// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_change.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StorageChange _$StorageChangeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'yes':
      return _Yes.fromJson(json);
    case 'no':
      return _No.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'StorageChange',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$StorageChange {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() yes,
    required TResult Function() no,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? yes,
    TResult? Function()? no,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? yes,
    TResult Function()? no,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Yes value) yes,
    required TResult Function(_No value) no,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Yes value)? yes,
    TResult? Function(_No value)? no,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Yes value)? yes,
    TResult Function(_No value)? no,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageChangeCopyWith<$Res> {
  factory $StorageChangeCopyWith(
          StorageChange value, $Res Function(StorageChange) then) =
      _$StorageChangeCopyWithImpl<$Res, StorageChange>;
}

/// @nodoc
class _$StorageChangeCopyWithImpl<$Res, $Val extends StorageChange>
    implements $StorageChangeCopyWith<$Res> {
  _$StorageChangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_YesCopyWith<$Res> {
  factory _$$_YesCopyWith(_$_Yes value, $Res Function(_$_Yes) then) =
      __$$_YesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_YesCopyWithImpl<$Res>
    extends _$StorageChangeCopyWithImpl<$Res, _$_Yes>
    implements _$$_YesCopyWith<$Res> {
  __$$_YesCopyWithImpl(_$_Yes _value, $Res Function(_$_Yes) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_Yes implements _Yes {
  const _$_Yes({final String? $type}) : $type = $type ?? 'yes';

  factory _$_Yes.fromJson(Map<String, dynamic> json) => _$$_YesFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StorageChange.yes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Yes);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() yes,
    required TResult Function() no,
  }) {
    return yes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? yes,
    TResult? Function()? no,
  }) {
    return yes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? yes,
    TResult Function()? no,
    required TResult orElse(),
  }) {
    if (yes != null) {
      return yes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Yes value) yes,
    required TResult Function(_No value) no,
  }) {
    return yes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Yes value)? yes,
    TResult? Function(_No value)? no,
  }) {
    return yes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Yes value)? yes,
    TResult Function(_No value)? no,
    required TResult orElse(),
  }) {
    if (yes != null) {
      return yes(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_YesToJson(
      this,
    );
  }
}

abstract class _Yes implements StorageChange {
  const factory _Yes() = _$_Yes;

  factory _Yes.fromJson(Map<String, dynamic> json) = _$_Yes.fromJson;
}

/// @nodoc
abstract class _$$_NoCopyWith<$Res> {
  factory _$$_NoCopyWith(_$_No value, $Res Function(_$_No) then) =
      __$$_NoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoCopyWithImpl<$Res> extends _$StorageChangeCopyWithImpl<$Res, _$_No>
    implements _$$_NoCopyWith<$Res> {
  __$$_NoCopyWithImpl(_$_No _value, $Res Function(_$_No) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_No implements _No {
  const _$_No({final String? $type}) : $type = $type ?? 'no';

  factory _$_No.fromJson(Map<String, dynamic> json) => _$$_NoFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StorageChange.no()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_No);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() yes,
    required TResult Function() no,
  }) {
    return no();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? yes,
    TResult? Function()? no,
  }) {
    return no?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? yes,
    TResult Function()? no,
    required TResult orElse(),
  }) {
    if (no != null) {
      return no();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Yes value) yes,
    required TResult Function(_No value) no,
  }) {
    return no(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Yes value)? yes,
    TResult? Function(_No value)? no,
  }) {
    return no?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Yes value)? yes,
    TResult Function(_No value)? no,
    required TResult orElse(),
  }) {
    if (no != null) {
      return no(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoToJson(
      this,
    );
  }
}

abstract class _No implements StorageChange {
  const factory _No() = _$_No;

  factory _No.fromJson(Map<String, dynamic> json) = _$_No.fromJson;
}
