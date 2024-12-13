// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(EsewaPaymentSuccessResult result) success,
    required TResult Function() failure,
    required TResult Function() cancellation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(EsewaPaymentSuccessResult result)? success,
    TResult? Function()? failure,
    TResult? Function()? cancellation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(EsewaPaymentSuccessResult result)? success,
    TResult Function()? failure,
    TResult Function()? cancellation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentSuccess value) success,
    required TResult Function(PaymentFailure value) failure,
    required TResult Function(PaymentCancellation value) cancellation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentInitial value)? initial,
    TResult? Function(PaymentSuccess value)? success,
    TResult? Function(PaymentFailure value)? failure,
    TResult? Function(PaymentCancellation value)? cancellation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentSuccess value)? success,
    TResult Function(PaymentFailure value)? failure,
    TResult Function(PaymentCancellation value)? cancellation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PaymentInitialImplCopyWith<$Res> {
  factory _$$PaymentInitialImplCopyWith(_$PaymentInitialImpl value,
          $Res Function(_$PaymentInitialImpl) then) =
      __$$PaymentInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentInitialImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentInitialImpl>
    implements _$$PaymentInitialImplCopyWith<$Res> {
  __$$PaymentInitialImplCopyWithImpl(
      _$PaymentInitialImpl _value, $Res Function(_$PaymentInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaymentInitialImpl implements PaymentInitial {
  const _$PaymentInitialImpl();

  @override
  String toString() {
    return 'PaymentState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(EsewaPaymentSuccessResult result) success,
    required TResult Function() failure,
    required TResult Function() cancellation,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(EsewaPaymentSuccessResult result)? success,
    TResult? Function()? failure,
    TResult? Function()? cancellation,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(EsewaPaymentSuccessResult result)? success,
    TResult Function()? failure,
    TResult Function()? cancellation,
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
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentSuccess value) success,
    required TResult Function(PaymentFailure value) failure,
    required TResult Function(PaymentCancellation value) cancellation,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentInitial value)? initial,
    TResult? Function(PaymentSuccess value)? success,
    TResult? Function(PaymentFailure value)? failure,
    TResult? Function(PaymentCancellation value)? cancellation,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentSuccess value)? success,
    TResult Function(PaymentFailure value)? failure,
    TResult Function(PaymentCancellation value)? cancellation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PaymentInitial implements PaymentState {
  const factory PaymentInitial() = _$PaymentInitialImpl;
}

/// @nodoc
abstract class _$$PaymentSuccessImplCopyWith<$Res> {
  factory _$$PaymentSuccessImplCopyWith(_$PaymentSuccessImpl value,
          $Res Function(_$PaymentSuccessImpl) then) =
      __$$PaymentSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EsewaPaymentSuccessResult result});
}

/// @nodoc
class __$$PaymentSuccessImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentSuccessImpl>
    implements _$$PaymentSuccessImplCopyWith<$Res> {
  __$$PaymentSuccessImplCopyWithImpl(
      _$PaymentSuccessImpl _value, $Res Function(_$PaymentSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$PaymentSuccessImpl(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as EsewaPaymentSuccessResult,
    ));
  }
}

/// @nodoc

class _$PaymentSuccessImpl implements PaymentSuccess {
  const _$PaymentSuccessImpl(this.result);

  @override
  final EsewaPaymentSuccessResult result;

  @override
  String toString() {
    return 'PaymentState.success(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSuccessImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentSuccessImplCopyWith<_$PaymentSuccessImpl> get copyWith =>
      __$$PaymentSuccessImplCopyWithImpl<_$PaymentSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(EsewaPaymentSuccessResult result) success,
    required TResult Function() failure,
    required TResult Function() cancellation,
  }) {
    return success(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(EsewaPaymentSuccessResult result)? success,
    TResult? Function()? failure,
    TResult? Function()? cancellation,
  }) {
    return success?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(EsewaPaymentSuccessResult result)? success,
    TResult Function()? failure,
    TResult Function()? cancellation,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentSuccess value) success,
    required TResult Function(PaymentFailure value) failure,
    required TResult Function(PaymentCancellation value) cancellation,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentInitial value)? initial,
    TResult? Function(PaymentSuccess value)? success,
    TResult? Function(PaymentFailure value)? failure,
    TResult? Function(PaymentCancellation value)? cancellation,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentSuccess value)? success,
    TResult Function(PaymentFailure value)? failure,
    TResult Function(PaymentCancellation value)? cancellation,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PaymentSuccess implements PaymentState {
  const factory PaymentSuccess(final EsewaPaymentSuccessResult result) =
      _$PaymentSuccessImpl;

  EsewaPaymentSuccessResult get result;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentSuccessImplCopyWith<_$PaymentSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentFailureImplCopyWith<$Res> {
  factory _$$PaymentFailureImplCopyWith(_$PaymentFailureImpl value,
          $Res Function(_$PaymentFailureImpl) then) =
      __$$PaymentFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentFailureImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentFailureImpl>
    implements _$$PaymentFailureImplCopyWith<$Res> {
  __$$PaymentFailureImplCopyWithImpl(
      _$PaymentFailureImpl _value, $Res Function(_$PaymentFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaymentFailureImpl implements PaymentFailure {
  const _$PaymentFailureImpl();

  @override
  String toString() {
    return 'PaymentState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(EsewaPaymentSuccessResult result) success,
    required TResult Function() failure,
    required TResult Function() cancellation,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(EsewaPaymentSuccessResult result)? success,
    TResult? Function()? failure,
    TResult? Function()? cancellation,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(EsewaPaymentSuccessResult result)? success,
    TResult Function()? failure,
    TResult Function()? cancellation,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentSuccess value) success,
    required TResult Function(PaymentFailure value) failure,
    required TResult Function(PaymentCancellation value) cancellation,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentInitial value)? initial,
    TResult? Function(PaymentSuccess value)? success,
    TResult? Function(PaymentFailure value)? failure,
    TResult? Function(PaymentCancellation value)? cancellation,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentSuccess value)? success,
    TResult Function(PaymentFailure value)? failure,
    TResult Function(PaymentCancellation value)? cancellation,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class PaymentFailure implements PaymentState {
  const factory PaymentFailure() = _$PaymentFailureImpl;
}

/// @nodoc
abstract class _$$PaymentCancellationImplCopyWith<$Res> {
  factory _$$PaymentCancellationImplCopyWith(_$PaymentCancellationImpl value,
          $Res Function(_$PaymentCancellationImpl) then) =
      __$$PaymentCancellationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentCancellationImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentCancellationImpl>
    implements _$$PaymentCancellationImplCopyWith<$Res> {
  __$$PaymentCancellationImplCopyWithImpl(_$PaymentCancellationImpl _value,
      $Res Function(_$PaymentCancellationImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaymentCancellationImpl implements PaymentCancellation {
  const _$PaymentCancellationImpl();

  @override
  String toString() {
    return 'PaymentState.cancellation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentCancellationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(EsewaPaymentSuccessResult result) success,
    required TResult Function() failure,
    required TResult Function() cancellation,
  }) {
    return cancellation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(EsewaPaymentSuccessResult result)? success,
    TResult? Function()? failure,
    TResult? Function()? cancellation,
  }) {
    return cancellation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(EsewaPaymentSuccessResult result)? success,
    TResult Function()? failure,
    TResult Function()? cancellation,
    required TResult orElse(),
  }) {
    if (cancellation != null) {
      return cancellation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentSuccess value) success,
    required TResult Function(PaymentFailure value) failure,
    required TResult Function(PaymentCancellation value) cancellation,
  }) {
    return cancellation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentInitial value)? initial,
    TResult? Function(PaymentSuccess value)? success,
    TResult? Function(PaymentFailure value)? failure,
    TResult? Function(PaymentCancellation value)? cancellation,
  }) {
    return cancellation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentSuccess value)? success,
    TResult Function(PaymentFailure value)? failure,
    TResult Function(PaymentCancellation value)? cancellation,
    required TResult orElse(),
  }) {
    if (cancellation != null) {
      return cancellation(this);
    }
    return orElse();
  }
}

abstract class PaymentCancellation implements PaymentState {
  const factory PaymentCancellation() = _$PaymentCancellationImpl;
}
