// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_repo_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StorageRepoEvent<T> {
  String get key => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key, T value) add,
    required TResult Function(String key, T value) update,
    required TResult Function(String key) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key, T value)? add,
    TResult? Function(String key, T value)? update,
    TResult? Function(String key)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key, T value)? add,
    TResult Function(String key, T value)? update,
    TResult Function(String key)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add<T> value) add,
    required TResult Function(_Update<T> value) update,
    required TResult Function(_Delete<T> value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add<T> value)? add,
    TResult? Function(_Update<T> value)? update,
    TResult? Function(_Delete<T> value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add<T> value)? add,
    TResult Function(_Update<T> value)? update,
    TResult Function(_Delete<T> value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StorageRepoEventCopyWith<T, StorageRepoEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageRepoEventCopyWith<T, $Res> {
  factory $StorageRepoEventCopyWith(
          StorageRepoEvent<T> value, $Res Function(StorageRepoEvent<T>) then) =
      _$StorageRepoEventCopyWithImpl<T, $Res, StorageRepoEvent<T>>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class _$StorageRepoEventCopyWithImpl<T, $Res, $Val extends StorageRepoEvent<T>>
    implements $StorageRepoEventCopyWith<T, $Res> {
  _$StorageRepoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddCopyWith<T, $Res>
    implements $StorageRepoEventCopyWith<T, $Res> {
  factory _$$_AddCopyWith(_$_Add<T> value, $Res Function(_$_Add<T>) then) =
      __$$_AddCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String key, T value});
}

/// @nodoc
class __$$_AddCopyWithImpl<T, $Res>
    extends _$StorageRepoEventCopyWithImpl<T, $Res, _$_Add<T>>
    implements _$$_AddCopyWith<T, $Res> {
  __$$_AddCopyWithImpl(_$_Add<T> _value, $Res Function(_$_Add<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = freezed,
  }) {
    return _then(_$_Add<T>(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Add<T> implements _Add<T> {
  const _$_Add(this.key, this.value);

  @override
  final String key;
  @override
  final T value;

  @override
  String toString() {
    return 'StorageRepoEvent<$T>.add(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Add<T> &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, key, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCopyWith<T, _$_Add<T>> get copyWith =>
      __$$_AddCopyWithImpl<T, _$_Add<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key, T value) add,
    required TResult Function(String key, T value) update,
    required TResult Function(String key) delete,
  }) {
    return add(key, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key, T value)? add,
    TResult? Function(String key, T value)? update,
    TResult? Function(String key)? delete,
  }) {
    return add?.call(key, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key, T value)? add,
    TResult Function(String key, T value)? update,
    TResult Function(String key)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(key, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add<T> value) add,
    required TResult Function(_Update<T> value) update,
    required TResult Function(_Delete<T> value) delete,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add<T> value)? add,
    TResult? Function(_Update<T> value)? update,
    TResult? Function(_Delete<T> value)? delete,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add<T> value)? add,
    TResult Function(_Update<T> value)? update,
    TResult Function(_Delete<T> value)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add<T> implements StorageRepoEvent<T> {
  const factory _Add(final String key, final T value) = _$_Add<T>;

  @override
  String get key;
  T get value;
  @override
  @JsonKey(ignore: true)
  _$$_AddCopyWith<T, _$_Add<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<T, $Res>
    implements $StorageRepoEventCopyWith<T, $Res> {
  factory _$$_UpdateCopyWith(
          _$_Update<T> value, $Res Function(_$_Update<T>) then) =
      __$$_UpdateCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String key, T value});
}

/// @nodoc
class __$$_UpdateCopyWithImpl<T, $Res>
    extends _$StorageRepoEventCopyWithImpl<T, $Res, _$_Update<T>>
    implements _$$_UpdateCopyWith<T, $Res> {
  __$$_UpdateCopyWithImpl(
      _$_Update<T> _value, $Res Function(_$_Update<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = freezed,
  }) {
    return _then(_$_Update<T>(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Update<T> implements _Update<T> {
  const _$_Update(this.key, this.value);

  @override
  final String key;
  @override
  final T value;

  @override
  String toString() {
    return 'StorageRepoEvent<$T>.update(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update<T> &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, key, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCopyWith<T, _$_Update<T>> get copyWith =>
      __$$_UpdateCopyWithImpl<T, _$_Update<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key, T value) add,
    required TResult Function(String key, T value) update,
    required TResult Function(String key) delete,
  }) {
    return update(key, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key, T value)? add,
    TResult? Function(String key, T value)? update,
    TResult? Function(String key)? delete,
  }) {
    return update?.call(key, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key, T value)? add,
    TResult Function(String key, T value)? update,
    TResult Function(String key)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(key, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add<T> value) add,
    required TResult Function(_Update<T> value) update,
    required TResult Function(_Delete<T> value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add<T> value)? add,
    TResult? Function(_Update<T> value)? update,
    TResult? Function(_Delete<T> value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add<T> value)? add,
    TResult Function(_Update<T> value)? update,
    TResult Function(_Delete<T> value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update<T> implements StorageRepoEvent<T> {
  const factory _Update(final String key, final T value) = _$_Update<T>;

  @override
  String get key;
  T get value;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<T, _$_Update<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<T, $Res>
    implements $StorageRepoEventCopyWith<T, $Res> {
  factory _$$_DeleteCopyWith(
          _$_Delete<T> value, $Res Function(_$_Delete<T>) then) =
      __$$_DeleteCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$_DeleteCopyWithImpl<T, $Res>
    extends _$StorageRepoEventCopyWithImpl<T, $Res, _$_Delete<T>>
    implements _$$_DeleteCopyWith<T, $Res> {
  __$$_DeleteCopyWithImpl(
      _$_Delete<T> _value, $Res Function(_$_Delete<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$_Delete<T>(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Delete<T> implements _Delete<T> {
  const _$_Delete(this.key);

  @override
  final String key;

  @override
  String toString() {
    return 'StorageRepoEvent<$T>.delete(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete<T> &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCopyWith<T, _$_Delete<T>> get copyWith =>
      __$$_DeleteCopyWithImpl<T, _$_Delete<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key, T value) add,
    required TResult Function(String key, T value) update,
    required TResult Function(String key) delete,
  }) {
    return delete(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key, T value)? add,
    TResult? Function(String key, T value)? update,
    TResult? Function(String key)? delete,
  }) {
    return delete?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key, T value)? add,
    TResult Function(String key, T value)? update,
    TResult Function(String key)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add<T> value) add,
    required TResult Function(_Update<T> value) update,
    required TResult Function(_Delete<T> value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add<T> value)? add,
    TResult? Function(_Update<T> value)? update,
    TResult? Function(_Delete<T> value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add<T> value)? add,
    TResult Function(_Update<T> value)? update,
    TResult Function(_Delete<T> value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete<T> implements StorageRepoEvent<T> {
  const factory _Delete(final String key) = _$_Delete<T>;

  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<T, _$_Delete<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
