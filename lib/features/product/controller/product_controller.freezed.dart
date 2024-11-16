// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginationState {
  bool get isLoading => throw _privateConstructorUsedError;
  CategoryProductResponse? get productResponse =>
      throw _privateConstructorUsedError;
  NetworkFailure? get error => throw _privateConstructorUsedError;
  bool get isPageEnd => throw _privateConstructorUsedError;

  /// Create a copy of PaginationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationStateCopyWith<PaginationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationStateCopyWith<$Res> {
  factory $PaginationStateCopyWith(
          PaginationState value, $Res Function(PaginationState) then) =
      _$PaginationStateCopyWithImpl<$Res, PaginationState>;
  @useResult
  $Res call(
      {bool isLoading,
      CategoryProductResponse? productResponse,
      NetworkFailure? error,
      bool isPageEnd});

  $CategoryProductResponseCopyWith<$Res>? get productResponse;
}

/// @nodoc
class _$PaginationStateCopyWithImpl<$Res, $Val extends PaginationState>
    implements $PaginationStateCopyWith<$Res> {
  _$PaginationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? productResponse = freezed,
    Object? error = freezed,
    Object? isPageEnd = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      productResponse: freezed == productResponse
          ? _value.productResponse
          : productResponse // ignore: cast_nullable_to_non_nullable
              as CategoryProductResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkFailure?,
      isPageEnd: null == isPageEnd
          ? _value.isPageEnd
          : isPageEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of PaginationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryProductResponseCopyWith<$Res>? get productResponse {
    if (_value.productResponse == null) {
      return null;
    }

    return $CategoryProductResponseCopyWith<$Res>(_value.productResponse!,
        (value) {
      return _then(_value.copyWith(productResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginationStateImplCopyWith<$Res>
    implements $PaginationStateCopyWith<$Res> {
  factory _$$PaginationStateImplCopyWith(_$PaginationStateImpl value,
          $Res Function(_$PaginationStateImpl) then) =
      __$$PaginationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      CategoryProductResponse? productResponse,
      NetworkFailure? error,
      bool isPageEnd});

  @override
  $CategoryProductResponseCopyWith<$Res>? get productResponse;
}

/// @nodoc
class __$$PaginationStateImplCopyWithImpl<$Res>
    extends _$PaginationStateCopyWithImpl<$Res, _$PaginationStateImpl>
    implements _$$PaginationStateImplCopyWith<$Res> {
  __$$PaginationStateImplCopyWithImpl(
      _$PaginationStateImpl _value, $Res Function(_$PaginationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? productResponse = freezed,
    Object? error = freezed,
    Object? isPageEnd = null,
  }) {
    return _then(_$PaginationStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      productResponse: freezed == productResponse
          ? _value.productResponse
          : productResponse // ignore: cast_nullable_to_non_nullable
              as CategoryProductResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkFailure?,
      isPageEnd: null == isPageEnd
          ? _value.isPageEnd
          : isPageEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PaginationStateImpl implements _PaginationState {
  const _$PaginationStateImpl(
      {this.isLoading = false,
      this.productResponse,
      this.error,
      this.isPageEnd = false});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final CategoryProductResponse? productResponse;
  @override
  final NetworkFailure? error;
  @override
  @JsonKey()
  final bool isPageEnd;

  @override
  String toString() {
    return 'PaginationState(isLoading: $isLoading, productResponse: $productResponse, error: $error, isPageEnd: $isPageEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.productResponse, productResponse) ||
                other.productResponse == productResponse) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isPageEnd, isPageEnd) ||
                other.isPageEnd == isPageEnd));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, productResponse, error, isPageEnd);

  /// Create a copy of PaginationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationStateImplCopyWith<_$PaginationStateImpl> get copyWith =>
      __$$PaginationStateImplCopyWithImpl<_$PaginationStateImpl>(
          this, _$identity);
}

abstract class _PaginationState implements PaginationState {
  const factory _PaginationState(
      {final bool isLoading,
      final CategoryProductResponse? productResponse,
      final NetworkFailure? error,
      final bool isPageEnd}) = _$PaginationStateImpl;

  @override
  bool get isLoading;
  @override
  CategoryProductResponse? get productResponse;
  @override
  NetworkFailure? get error;
  @override
  bool get isPageEnd;

  /// Create a copy of PaginationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationStateImplCopyWith<_$PaginationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
