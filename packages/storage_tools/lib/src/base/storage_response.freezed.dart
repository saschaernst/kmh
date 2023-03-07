// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StorageResponse {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) warning,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? warning,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? warning,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StorageResponseWarning value) warning,
    required TResult Function(_StorageResponseError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StorageResponseWarning value)? warning,
    TResult? Function(_StorageResponseError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StorageResponseWarning value)? warning,
    TResult Function(_StorageResponseError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StorageResponseCopyWith<StorageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageResponseCopyWith<$Res> {
  factory $StorageResponseCopyWith(
          StorageResponse value, $Res Function(StorageResponse) then) =
      _$StorageResponseCopyWithImpl<$Res, StorageResponse>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$StorageResponseCopyWithImpl<$Res, $Val extends StorageResponse>
    implements $StorageResponseCopyWith<$Res> {
  _$StorageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StorageResponseWarningCopyWith<$Res>
    implements $StorageResponseCopyWith<$Res> {
  factory _$$_StorageResponseWarningCopyWith(_$_StorageResponseWarning value,
          $Res Function(_$_StorageResponseWarning) then) =
      __$$_StorageResponseWarningCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_StorageResponseWarningCopyWithImpl<$Res>
    extends _$StorageResponseCopyWithImpl<$Res, _$_StorageResponseWarning>
    implements _$$_StorageResponseWarningCopyWith<$Res> {
  __$$_StorageResponseWarningCopyWithImpl(_$_StorageResponseWarning _value,
      $Res Function(_$_StorageResponseWarning) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_StorageResponseWarning(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StorageResponseWarning implements _StorageResponseWarning {
  const _$_StorageResponseWarning(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StorageResponse.warning(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StorageResponseWarning &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StorageResponseWarningCopyWith<_$_StorageResponseWarning> get copyWith =>
      __$$_StorageResponseWarningCopyWithImpl<_$_StorageResponseWarning>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) warning,
    required TResult Function(String message) error,
  }) {
    return warning(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? warning,
    TResult? Function(String message)? error,
  }) {
    return warning?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? warning,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (warning != null) {
      return warning(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StorageResponseWarning value) warning,
    required TResult Function(_StorageResponseError value) error,
  }) {
    return warning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StorageResponseWarning value)? warning,
    TResult? Function(_StorageResponseError value)? error,
  }) {
    return warning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StorageResponseWarning value)? warning,
    TResult Function(_StorageResponseError value)? error,
    required TResult orElse(),
  }) {
    if (warning != null) {
      return warning(this);
    }
    return orElse();
  }
}

abstract class _StorageResponseWarning implements StorageResponse {
  const factory _StorageResponseWarning(final String message) =
      _$_StorageResponseWarning;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_StorageResponseWarningCopyWith<_$_StorageResponseWarning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StorageResponseErrorCopyWith<$Res>
    implements $StorageResponseCopyWith<$Res> {
  factory _$$_StorageResponseErrorCopyWith(_$_StorageResponseError value,
          $Res Function(_$_StorageResponseError) then) =
      __$$_StorageResponseErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_StorageResponseErrorCopyWithImpl<$Res>
    extends _$StorageResponseCopyWithImpl<$Res, _$_StorageResponseError>
    implements _$$_StorageResponseErrorCopyWith<$Res> {
  __$$_StorageResponseErrorCopyWithImpl(_$_StorageResponseError _value,
      $Res Function(_$_StorageResponseError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_StorageResponseError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StorageResponseError implements _StorageResponseError {
  const _$_StorageResponseError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StorageResponse.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StorageResponseError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StorageResponseErrorCopyWith<_$_StorageResponseError> get copyWith =>
      __$$_StorageResponseErrorCopyWithImpl<_$_StorageResponseError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) warning,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? warning,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? warning,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StorageResponseWarning value) warning,
    required TResult Function(_StorageResponseError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StorageResponseWarning value)? warning,
    TResult? Function(_StorageResponseError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StorageResponseWarning value)? warning,
    TResult Function(_StorageResponseError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StorageResponseError implements StorageResponse {
  const factory _StorageResponseError(final String message) =
      _$_StorageResponseError;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_StorageResponseErrorCopyWith<_$_StorageResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}
