// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appstate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState<S, E> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading, S? data) loading,
    required TResult Function(S data, Map<String, dynamic>? extra) success,
    required TResult Function(E data, Map<String, dynamic>? extra) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading, S? data)? loading,
    TResult? Function(S data, Map<String, dynamic>? extra)? success,
    TResult? Function(E data, Map<String, dynamic>? extra)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading, S? data)? loading,
    TResult Function(S data, Map<String, dynamic>? extra)? success,
    TResult Function(E data, Map<String, dynamic>? extra)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<S, E> value) initial,
    required TResult Function(_Loading<S, E> value) loading,
    required TResult Function(_Success<S, E> value) success,
    required TResult Function(_Error<S, E> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<S, E> value)? initial,
    TResult? Function(_Loading<S, E> value)? loading,
    TResult? Function(_Success<S, E> value)? success,
    TResult? Function(_Error<S, E> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<S, E> value)? initial,
    TResult Function(_Loading<S, E> value)? loading,
    TResult Function(_Success<S, E> value)? success,
    TResult Function(_Error<S, E> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<S, E, $Res> {
  factory $AppStateCopyWith(
          AppState<S, E> value, $Res Function(AppState<S, E>) then) =
      _$AppStateCopyWithImpl<S, E, $Res, AppState<S, E>>;
}

/// @nodoc
class _$AppStateCopyWithImpl<S, E, $Res, $Val extends AppState<S, E>>
    implements $AppStateCopyWith<S, E, $Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<S, E, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<S, E> value, $Res Function(_$InitialImpl<S, E>) then) =
      __$$InitialImplCopyWithImpl<S, E, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<S, E, $Res>
    extends _$AppStateCopyWithImpl<S, E, $Res, _$InitialImpl<S, E>>
    implements _$$InitialImplCopyWith<S, E, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<S, E> _value, $Res Function(_$InitialImpl<S, E>) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<S, E> implements _Initial<S, E> {
  _$InitialImpl();

  @override
  String toString() {
    return 'AppState<$S, $E>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<S, E>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading, S? data) loading,
    required TResult Function(S data, Map<String, dynamic>? extra) success,
    required TResult Function(E data, Map<String, dynamic>? extra) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading, S? data)? loading,
    TResult? Function(S data, Map<String, dynamic>? extra)? success,
    TResult? Function(E data, Map<String, dynamic>? extra)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading, S? data)? loading,
    TResult Function(S data, Map<String, dynamic>? extra)? success,
    TResult Function(E data, Map<String, dynamic>? extra)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<S, E> value) initial,
    required TResult Function(_Loading<S, E> value) loading,
    required TResult Function(_Success<S, E> value) success,
    required TResult Function(_Error<S, E> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<S, E> value)? initial,
    TResult? Function(_Loading<S, E> value)? loading,
    TResult? Function(_Success<S, E> value)? success,
    TResult? Function(_Error<S, E> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<S, E> value)? initial,
    TResult Function(_Loading<S, E> value)? loading,
    TResult Function(_Success<S, E> value)? success,
    TResult Function(_Error<S, E> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<S, E> implements AppState<S, E> {
  factory _Initial() = _$InitialImpl<S, E>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<S, E, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<S, E> value, $Res Function(_$LoadingImpl<S, E>) then) =
      __$$LoadingImplCopyWithImpl<S, E, $Res>;
  @useResult
  $Res call({bool loading, S? data});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<S, E, $Res>
    extends _$AppStateCopyWithImpl<S, E, $Res, _$LoadingImpl<S, E>>
    implements _$$LoadingImplCopyWith<S, E, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<S, E> _value, $Res Function(_$LoadingImpl<S, E>) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? data = freezed,
  }) {
    return _then(_$LoadingImpl<S, E>(
      null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as S?,
    ));
  }
}

/// @nodoc

class _$LoadingImpl<S, E> implements _Loading<S, E> {
  _$LoadingImpl(this.loading, {this.data});

  @override
  final bool loading;
  @override
  final S? data;

  @override
  String toString() {
    return 'AppState<$S, $E>.loading(loading: $loading, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl<S, E> &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loading, const DeepCollectionEquality().hash(data));

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<S, E, _$LoadingImpl<S, E>> get copyWith =>
      __$$LoadingImplCopyWithImpl<S, E, _$LoadingImpl<S, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading, S? data) loading,
    required TResult Function(S data, Map<String, dynamic>? extra) success,
    required TResult Function(E data, Map<String, dynamic>? extra) error,
  }) {
    return loading(this.loading, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading, S? data)? loading,
    TResult? Function(S data, Map<String, dynamic>? extra)? success,
    TResult? Function(E data, Map<String, dynamic>? extra)? error,
  }) {
    return loading?.call(this.loading, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading, S? data)? loading,
    TResult Function(S data, Map<String, dynamic>? extra)? success,
    TResult Function(E data, Map<String, dynamic>? extra)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this.loading, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<S, E> value) initial,
    required TResult Function(_Loading<S, E> value) loading,
    required TResult Function(_Success<S, E> value) success,
    required TResult Function(_Error<S, E> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<S, E> value)? initial,
    TResult? Function(_Loading<S, E> value)? loading,
    TResult? Function(_Success<S, E> value)? success,
    TResult? Function(_Error<S, E> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<S, E> value)? initial,
    TResult Function(_Loading<S, E> value)? loading,
    TResult Function(_Success<S, E> value)? success,
    TResult Function(_Error<S, E> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<S, E> implements AppState<S, E> {
  factory _Loading(final bool loading, {final S? data}) = _$LoadingImpl<S, E>;

  bool get loading;
  S? get data;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<S, E, _$LoadingImpl<S, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<S, E, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<S, E> value, $Res Function(_$SuccessImpl<S, E>) then) =
      __$$SuccessImplCopyWithImpl<S, E, $Res>;
  @useResult
  $Res call({S data, Map<String, dynamic>? extra});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<S, E, $Res>
    extends _$AppStateCopyWithImpl<S, E, $Res, _$SuccessImpl<S, E>>
    implements _$$SuccessImplCopyWith<S, E, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<S, E> _value, $Res Function(_$SuccessImpl<S, E>) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? extra = freezed,
  }) {
    return _then(_$SuccessImpl<S, E>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as S,
      extra: freezed == extra
          ? _value._extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<S, E> implements _Success<S, E> {
  _$SuccessImpl(this.data, {final Map<String, dynamic>? extra})
      : _extra = extra;

  @override
  final S data;
  final Map<String, dynamic>? _extra;
  @override
  Map<String, dynamic>? get extra {
    final value = _extra;
    if (value == null) return null;
    if (_extra is EqualUnmodifiableMapView) return _extra;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'AppState<$S, $E>.success(data: $data, extra: $extra)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<S, E> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other._extra, _extra));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(_extra));

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<S, E, _$SuccessImpl<S, E>> get copyWith =>
      __$$SuccessImplCopyWithImpl<S, E, _$SuccessImpl<S, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading, S? data) loading,
    required TResult Function(S data, Map<String, dynamic>? extra) success,
    required TResult Function(E data, Map<String, dynamic>? extra) error,
  }) {
    return success(data, extra);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading, S? data)? loading,
    TResult? Function(S data, Map<String, dynamic>? extra)? success,
    TResult? Function(E data, Map<String, dynamic>? extra)? error,
  }) {
    return success?.call(data, extra);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading, S? data)? loading,
    TResult Function(S data, Map<String, dynamic>? extra)? success,
    TResult Function(E data, Map<String, dynamic>? extra)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, extra);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<S, E> value) initial,
    required TResult Function(_Loading<S, E> value) loading,
    required TResult Function(_Success<S, E> value) success,
    required TResult Function(_Error<S, E> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<S, E> value)? initial,
    TResult? Function(_Loading<S, E> value)? loading,
    TResult? Function(_Success<S, E> value)? success,
    TResult? Function(_Error<S, E> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<S, E> value)? initial,
    TResult Function(_Loading<S, E> value)? loading,
    TResult Function(_Success<S, E> value)? success,
    TResult Function(_Error<S, E> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<S, E> implements AppState<S, E> {
  factory _Success(final S data, {final Map<String, dynamic>? extra}) =
      _$SuccessImpl<S, E>;

  S get data;
  Map<String, dynamic>? get extra;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<S, E, _$SuccessImpl<S, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<S, E, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<S, E> value, $Res Function(_$ErrorImpl<S, E>) then) =
      __$$ErrorImplCopyWithImpl<S, E, $Res>;
  @useResult
  $Res call({E data, Map<String, dynamic>? extra});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<S, E, $Res>
    extends _$AppStateCopyWithImpl<S, E, $Res, _$ErrorImpl<S, E>>
    implements _$$ErrorImplCopyWith<S, E, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<S, E> _value, $Res Function(_$ErrorImpl<S, E>) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? extra = freezed,
  }) {
    return _then(_$ErrorImpl<S, E>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as E,
      extra: freezed == extra
          ? _value._extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<S, E> implements _Error<S, E> {
  _$ErrorImpl(this.data, {final Map<String, dynamic>? extra}) : _extra = extra;

  @override
  final E data;
  final Map<String, dynamic>? _extra;
  @override
  Map<String, dynamic>? get extra {
    final value = _extra;
    if (value == null) return null;
    if (_extra is EqualUnmodifiableMapView) return _extra;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'AppState<$S, $E>.error(data: $data, extra: $extra)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<S, E> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other._extra, _extra));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(_extra));

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<S, E, _$ErrorImpl<S, E>> get copyWith =>
      __$$ErrorImplCopyWithImpl<S, E, _$ErrorImpl<S, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading, S? data) loading,
    required TResult Function(S data, Map<String, dynamic>? extra) success,
    required TResult Function(E data, Map<String, dynamic>? extra) error,
  }) {
    return error(data, extra);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading, S? data)? loading,
    TResult? Function(S data, Map<String, dynamic>? extra)? success,
    TResult? Function(E data, Map<String, dynamic>? extra)? error,
  }) {
    return error?.call(data, extra);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading, S? data)? loading,
    TResult Function(S data, Map<String, dynamic>? extra)? success,
    TResult Function(E data, Map<String, dynamic>? extra)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data, extra);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<S, E> value) initial,
    required TResult Function(_Loading<S, E> value) loading,
    required TResult Function(_Success<S, E> value) success,
    required TResult Function(_Error<S, E> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<S, E> value)? initial,
    TResult? Function(_Loading<S, E> value)? loading,
    TResult? Function(_Success<S, E> value)? success,
    TResult? Function(_Error<S, E> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<S, E> value)? initial,
    TResult Function(_Loading<S, E> value)? loading,
    TResult Function(_Success<S, E> value)? success,
    TResult Function(_Error<S, E> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<S, E> implements AppState<S, E> {
  factory _Error(final E data, {final Map<String, dynamic>? extra}) =
      _$ErrorImpl<S, E>;

  E get data;
  Map<String, dynamic>? get extra;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<S, E, _$ErrorImpl<S, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
