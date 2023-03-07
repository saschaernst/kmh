// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function() loggingIn,
    required TResult Function(T session) loggedIn,
    required TResult Function() loggingOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function()? loggingIn,
    TResult? Function(T session)? loggedIn,
    TResult? Function()? loggingOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function()? loggingIn,
    TResult Function(T session)? loggedIn,
    TResult Function()? loggingOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedOut<T> value) loggedOut,
    required TResult Function(LoggingIn<T> value) loggingIn,
    required TResult Function(LoggedIn<T> value) loggedIn,
    required TResult Function(LoggingOut<T> value) loggingOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedOut<T> value)? loggedOut,
    TResult? Function(LoggingIn<T> value)? loggingIn,
    TResult? Function(LoggedIn<T> value)? loggedIn,
    TResult? Function(LoggingOut<T> value)? loggingOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedOut<T> value)? loggedOut,
    TResult Function(LoggingIn<T> value)? loggingIn,
    TResult Function(LoggedIn<T> value)? loggedIn,
    TResult Function(LoggingOut<T> value)? loggingOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<T, $Res> {
  factory $AuthenticationStateCopyWith(AuthenticationState<T> value,
          $Res Function(AuthenticationState<T>) then) =
      _$AuthenticationStateCopyWithImpl<T, $Res, AuthenticationState<T>>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<T, $Res,
        $Val extends AuthenticationState<T>>
    implements $AuthenticationStateCopyWith<T, $Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoggedOutCopyWith<T, $Res> {
  factory _$$LoggedOutCopyWith(
          _$LoggedOut<T> value, $Res Function(_$LoggedOut<T>) then) =
      __$$LoggedOutCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoggedOutCopyWithImpl<T, $Res>
    extends _$AuthenticationStateCopyWithImpl<T, $Res, _$LoggedOut<T>>
    implements _$$LoggedOutCopyWith<T, $Res> {
  __$$LoggedOutCopyWithImpl(
      _$LoggedOut<T> _value, $Res Function(_$LoggedOut<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedOut<T> implements LoggedOut<T> {
  const _$LoggedOut();

  @override
  String toString() {
    return 'AuthenticationState<$T>.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOut<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function() loggingIn,
    required TResult Function(T session) loggedIn,
    required TResult Function() loggingOut,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function()? loggingIn,
    TResult? Function(T session)? loggedIn,
    TResult? Function()? loggingOut,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function()? loggingIn,
    TResult Function(T session)? loggedIn,
    TResult Function()? loggingOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedOut<T> value) loggedOut,
    required TResult Function(LoggingIn<T> value) loggingIn,
    required TResult Function(LoggedIn<T> value) loggedIn,
    required TResult Function(LoggingOut<T> value) loggingOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedOut<T> value)? loggedOut,
    TResult? Function(LoggingIn<T> value)? loggingIn,
    TResult? Function(LoggedIn<T> value)? loggedIn,
    TResult? Function(LoggingOut<T> value)? loggingOut,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedOut<T> value)? loggedOut,
    TResult Function(LoggingIn<T> value)? loggingIn,
    TResult Function(LoggedIn<T> value)? loggedIn,
    TResult Function(LoggingOut<T> value)? loggingOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class LoggedOut<T> implements AuthenticationState<T> {
  const factory LoggedOut() = _$LoggedOut<T>;
}

/// @nodoc
abstract class _$$LoggingInCopyWith<T, $Res> {
  factory _$$LoggingInCopyWith(
          _$LoggingIn<T> value, $Res Function(_$LoggingIn<T>) then) =
      __$$LoggingInCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoggingInCopyWithImpl<T, $Res>
    extends _$AuthenticationStateCopyWithImpl<T, $Res, _$LoggingIn<T>>
    implements _$$LoggingInCopyWith<T, $Res> {
  __$$LoggingInCopyWithImpl(
      _$LoggingIn<T> _value, $Res Function(_$LoggingIn<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggingIn<T> implements LoggingIn<T> {
  const _$LoggingIn();

  @override
  String toString() {
    return 'AuthenticationState<$T>.loggingIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggingIn<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function() loggingIn,
    required TResult Function(T session) loggedIn,
    required TResult Function() loggingOut,
  }) {
    return loggingIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function()? loggingIn,
    TResult? Function(T session)? loggedIn,
    TResult? Function()? loggingOut,
  }) {
    return loggingIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function()? loggingIn,
    TResult Function(T session)? loggedIn,
    TResult Function()? loggingOut,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedOut<T> value) loggedOut,
    required TResult Function(LoggingIn<T> value) loggingIn,
    required TResult Function(LoggedIn<T> value) loggedIn,
    required TResult Function(LoggingOut<T> value) loggingOut,
  }) {
    return loggingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedOut<T> value)? loggedOut,
    TResult? Function(LoggingIn<T> value)? loggingIn,
    TResult? Function(LoggedIn<T> value)? loggedIn,
    TResult? Function(LoggingOut<T> value)? loggingOut,
  }) {
    return loggingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedOut<T> value)? loggedOut,
    TResult Function(LoggingIn<T> value)? loggingIn,
    TResult Function(LoggedIn<T> value)? loggedIn,
    TResult Function(LoggingOut<T> value)? loggingOut,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn(this);
    }
    return orElse();
  }
}

abstract class LoggingIn<T> implements AuthenticationState<T> {
  const factory LoggingIn() = _$LoggingIn<T>;
}

/// @nodoc
abstract class _$$LoggedInCopyWith<T, $Res> {
  factory _$$LoggedInCopyWith(
          _$LoggedIn<T> value, $Res Function(_$LoggedIn<T>) then) =
      __$$LoggedInCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T session});
}

/// @nodoc
class __$$LoggedInCopyWithImpl<T, $Res>
    extends _$AuthenticationStateCopyWithImpl<T, $Res, _$LoggedIn<T>>
    implements _$$LoggedInCopyWith<T, $Res> {
  __$$LoggedInCopyWithImpl(
      _$LoggedIn<T> _value, $Res Function(_$LoggedIn<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = freezed,
  }) {
    return _then(_$LoggedIn<T>(
      freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$LoggedIn<T> implements LoggedIn<T> {
  const _$LoggedIn(this.session);

  @override
  final T session;

  @override
  String toString() {
    return 'AuthenticationState<$T>.loggedIn(session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedIn<T> &&
            const DeepCollectionEquality().equals(other.session, session));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(session));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInCopyWith<T, _$LoggedIn<T>> get copyWith =>
      __$$LoggedInCopyWithImpl<T, _$LoggedIn<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function() loggingIn,
    required TResult Function(T session) loggedIn,
    required TResult Function() loggingOut,
  }) {
    return loggedIn(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function()? loggingIn,
    TResult? Function(T session)? loggedIn,
    TResult? Function()? loggingOut,
  }) {
    return loggedIn?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function()? loggingIn,
    TResult Function(T session)? loggedIn,
    TResult Function()? loggingOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedOut<T> value) loggedOut,
    required TResult Function(LoggingIn<T> value) loggingIn,
    required TResult Function(LoggedIn<T> value) loggedIn,
    required TResult Function(LoggingOut<T> value) loggingOut,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedOut<T> value)? loggedOut,
    TResult? Function(LoggingIn<T> value)? loggingIn,
    TResult? Function(LoggedIn<T> value)? loggedIn,
    TResult? Function(LoggingOut<T> value)? loggingOut,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedOut<T> value)? loggedOut,
    TResult Function(LoggingIn<T> value)? loggingIn,
    TResult Function(LoggedIn<T> value)? loggedIn,
    TResult Function(LoggingOut<T> value)? loggingOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedIn<T> implements AuthenticationState<T> {
  const factory LoggedIn(final T session) = _$LoggedIn<T>;

  T get session;
  @JsonKey(ignore: true)
  _$$LoggedInCopyWith<T, _$LoggedIn<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggingOutCopyWith<T, $Res> {
  factory _$$LoggingOutCopyWith(
          _$LoggingOut<T> value, $Res Function(_$LoggingOut<T>) then) =
      __$$LoggingOutCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoggingOutCopyWithImpl<T, $Res>
    extends _$AuthenticationStateCopyWithImpl<T, $Res, _$LoggingOut<T>>
    implements _$$LoggingOutCopyWith<T, $Res> {
  __$$LoggingOutCopyWithImpl(
      _$LoggingOut<T> _value, $Res Function(_$LoggingOut<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggingOut<T> implements LoggingOut<T> {
  const _$LoggingOut();

  @override
  String toString() {
    return 'AuthenticationState<$T>.loggingOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggingOut<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function() loggingIn,
    required TResult Function(T session) loggedIn,
    required TResult Function() loggingOut,
  }) {
    return loggingOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function()? loggingIn,
    TResult? Function(T session)? loggedIn,
    TResult? Function()? loggingOut,
  }) {
    return loggingOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function()? loggingIn,
    TResult Function(T session)? loggedIn,
    TResult Function()? loggingOut,
    required TResult orElse(),
  }) {
    if (loggingOut != null) {
      return loggingOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedOut<T> value) loggedOut,
    required TResult Function(LoggingIn<T> value) loggingIn,
    required TResult Function(LoggedIn<T> value) loggedIn,
    required TResult Function(LoggingOut<T> value) loggingOut,
  }) {
    return loggingOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedOut<T> value)? loggedOut,
    TResult? Function(LoggingIn<T> value)? loggingIn,
    TResult? Function(LoggedIn<T> value)? loggedIn,
    TResult? Function(LoggingOut<T> value)? loggingOut,
  }) {
    return loggingOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedOut<T> value)? loggedOut,
    TResult Function(LoggingIn<T> value)? loggingIn,
    TResult Function(LoggedIn<T> value)? loggedIn,
    TResult Function(LoggingOut<T> value)? loggingOut,
    required TResult orElse(),
  }) {
    if (loggingOut != null) {
      return loggingOut(this);
    }
    return orElse();
  }
}

abstract class LoggingOut<T> implements AuthenticationState<T> {
  const factory LoggingOut() = _$LoggingOut<T>;
}
