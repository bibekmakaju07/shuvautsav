// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_store_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderResponseModel _$OrderResponseModelFromJson(Map<String, dynamic> json) {
  return _OrderResponseModel.fromJson(json);
}

/// @nodoc
mixin _$OrderResponseModel {
  int get status => throw _privateConstructorUsedError; // Default status as 0
  OrderResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this OrderResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderResponseModelCopyWith<OrderResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderResponseModelCopyWith<$Res> {
  factory $OrderResponseModelCopyWith(
          OrderResponseModel value, $Res Function(OrderResponseModel) then) =
      _$OrderResponseModelCopyWithImpl<$Res, OrderResponseModel>;
  @useResult
  $Res call({int status, OrderResponseData data});

  $OrderResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$OrderResponseModelCopyWithImpl<$Res, $Val extends OrderResponseModel>
    implements $OrderResponseModelCopyWith<$Res> {
  _$OrderResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderResponseData,
    ) as $Val);
  }

  /// Create a copy of OrderResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderResponseDataCopyWith<$Res> get data {
    return $OrderResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderResponseModelImplCopyWith<$Res>
    implements $OrderResponseModelCopyWith<$Res> {
  factory _$$OrderResponseModelImplCopyWith(_$OrderResponseModelImpl value,
          $Res Function(_$OrderResponseModelImpl) then) =
      __$$OrderResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, OrderResponseData data});

  @override
  $OrderResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$OrderResponseModelImplCopyWithImpl<$Res>
    extends _$OrderResponseModelCopyWithImpl<$Res, _$OrderResponseModelImpl>
    implements _$$OrderResponseModelImplCopyWith<$Res> {
  __$$OrderResponseModelImplCopyWithImpl(_$OrderResponseModelImpl _value,
      $Res Function(_$OrderResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$OrderResponseModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderResponseModelImpl implements _OrderResponseModel {
  const _$OrderResponseModelImpl(
      {this.status = 0, this.data = const OrderResponseData()});

  factory _$OrderResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderResponseModelImplFromJson(json);

  @override
  @JsonKey()
  final int status;
// Default status as 0
  @override
  @JsonKey()
  final OrderResponseData data;

  @override
  String toString() {
    return 'OrderResponseModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of OrderResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderResponseModelImplCopyWith<_$OrderResponseModelImpl> get copyWith =>
      __$$OrderResponseModelImplCopyWithImpl<_$OrderResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderResponseModelImplToJson(
      this,
    );
  }
}

abstract class _OrderResponseModel implements OrderResponseModel {
  const factory _OrderResponseModel(
      {final int status,
      final OrderResponseData data}) = _$OrderResponseModelImpl;

  factory _OrderResponseModel.fromJson(Map<String, dynamic> json) =
      _$OrderResponseModelImpl.fromJson;

  @override
  int get status; // Default status as 0
  @override
  OrderResponseData get data;

  /// Create a copy of OrderResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderResponseModelImplCopyWith<_$OrderResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderResponseData _$OrderResponseDataFromJson(Map<String, dynamic> json) {
  return _OrderResponseData.fromJson(json);
}

/// @nodoc
mixin _$OrderResponseData {
  String get message => throw _privateConstructorUsedError;

  /// Serializes this OrderResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderResponseDataCopyWith<OrderResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderResponseDataCopyWith<$Res> {
  factory $OrderResponseDataCopyWith(
          OrderResponseData value, $Res Function(OrderResponseData) then) =
      _$OrderResponseDataCopyWithImpl<$Res, OrderResponseData>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$OrderResponseDataCopyWithImpl<$Res, $Val extends OrderResponseData>
    implements $OrderResponseDataCopyWith<$Res> {
  _$OrderResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderResponseData
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$OrderResponseDataImplCopyWith<$Res>
    implements $OrderResponseDataCopyWith<$Res> {
  factory _$$OrderResponseDataImplCopyWith(_$OrderResponseDataImpl value,
          $Res Function(_$OrderResponseDataImpl) then) =
      __$$OrderResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OrderResponseDataImplCopyWithImpl<$Res>
    extends _$OrderResponseDataCopyWithImpl<$Res, _$OrderResponseDataImpl>
    implements _$$OrderResponseDataImplCopyWith<$Res> {
  __$$OrderResponseDataImplCopyWithImpl(_$OrderResponseDataImpl _value,
      $Res Function(_$OrderResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OrderResponseDataImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderResponseDataImpl implements _OrderResponseData {
  const _$OrderResponseDataImpl({this.message = ''});

  factory _$OrderResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderResponseDataImplFromJson(json);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'OrderResponseData(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderResponseDataImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of OrderResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderResponseDataImplCopyWith<_$OrderResponseDataImpl> get copyWith =>
      __$$OrderResponseDataImplCopyWithImpl<_$OrderResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderResponseDataImplToJson(
      this,
    );
  }
}

abstract class _OrderResponseData implements OrderResponseData {
  const factory _OrderResponseData({final String message}) =
      _$OrderResponseDataImpl;

  factory _OrderResponseData.fromJson(Map<String, dynamic> json) =
      _$OrderResponseDataImpl.fromJson;

  @override
  String get message;

  /// Create a copy of OrderResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderResponseDataImplCopyWith<_$OrderResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
