// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_amount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryModel _$DeliveryModelFromJson(Map<String, dynamic> json) {
  return _DeliveryModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryModel {
  int get status => throw _privateConstructorUsedError;
  DeliveryData get data => throw _privateConstructorUsedError;

  /// Serializes this DeliveryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryModelCopyWith<DeliveryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryModelCopyWith<$Res> {
  factory $DeliveryModelCopyWith(
          DeliveryModel value, $Res Function(DeliveryModel) then) =
      _$DeliveryModelCopyWithImpl<$Res, DeliveryModel>;
  @useResult
  $Res call({int status, DeliveryData data});

  $DeliveryDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DeliveryModelCopyWithImpl<$Res, $Val extends DeliveryModel>
    implements $DeliveryModelCopyWith<$Res> {
  _$DeliveryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryModel
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
              as DeliveryData,
    ) as $Val);
  }

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryDataCopyWith<$Res> get data {
    return $DeliveryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryModelImplCopyWith<$Res>
    implements $DeliveryModelCopyWith<$Res> {
  factory _$$DeliveryModelImplCopyWith(
          _$DeliveryModelImpl value, $Res Function(_$DeliveryModelImpl) then) =
      __$$DeliveryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, DeliveryData data});

  @override
  $DeliveryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DeliveryModelImplCopyWithImpl<$Res>
    extends _$DeliveryModelCopyWithImpl<$Res, _$DeliveryModelImpl>
    implements _$$DeliveryModelImplCopyWith<$Res> {
  __$$DeliveryModelImplCopyWithImpl(
      _$DeliveryModelImpl _value, $Res Function(_$DeliveryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$DeliveryModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DeliveryData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryModelImpl implements _DeliveryModel {
  const _$DeliveryModelImpl(
      {this.status = -1, this.data = const DeliveryData()});

  factory _$DeliveryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryModelImplFromJson(json);

  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final DeliveryData data;

  @override
  String toString() {
    return 'DeliveryModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryModelImplCopyWith<_$DeliveryModelImpl> get copyWith =>
      __$$DeliveryModelImplCopyWithImpl<_$DeliveryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryModelImplToJson(
      this,
    );
  }
}

abstract class _DeliveryModel implements DeliveryModel {
  const factory _DeliveryModel({final int status, final DeliveryData data}) =
      _$DeliveryModelImpl;

  factory _DeliveryModel.fromJson(Map<String, dynamic> json) =
      _$DeliveryModelImpl.fromJson;

  @override
  int get status;
  @override
  DeliveryData get data;

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryModelImplCopyWith<_$DeliveryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryData _$DeliveryDataFromJson(Map<String, dynamic> json) {
  return _DeliveryData.fromJson(json);
}

/// @nodoc
mixin _$DeliveryData {
  int get id => throw _privateConstructorUsedError;
  String get initial_price => throw _privateConstructorUsedError;
  String get incremental_price => throw _privateConstructorUsedError;
  int get city_id => throw _privateConstructorUsedError;
  int get area_id => throw _privateConstructorUsedError;
  int get delivery_from => throw _privateConstructorUsedError;
  int get delivery_to => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;

  /// Serializes this DeliveryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryDataCopyWith<DeliveryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryDataCopyWith<$Res> {
  factory $DeliveryDataCopyWith(
          DeliveryData value, $Res Function(DeliveryData) then) =
      _$DeliveryDataCopyWithImpl<$Res, DeliveryData>;
  @useResult
  $Res call(
      {int id,
      String initial_price,
      String incremental_price,
      int city_id,
      int area_id,
      int delivery_from,
      int delivery_to,
      String created_at,
      String updated_at});
}

/// @nodoc
class _$DeliveryDataCopyWithImpl<$Res, $Val extends DeliveryData>
    implements $DeliveryDataCopyWith<$Res> {
  _$DeliveryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? initial_price = null,
    Object? incremental_price = null,
    Object? city_id = null,
    Object? area_id = null,
    Object? delivery_from = null,
    Object? delivery_to = null,
    Object? created_at = null,
    Object? updated_at = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      initial_price: null == initial_price
          ? _value.initial_price
          : initial_price // ignore: cast_nullable_to_non_nullable
              as String,
      incremental_price: null == incremental_price
          ? _value.incremental_price
          : incremental_price // ignore: cast_nullable_to_non_nullable
              as String,
      city_id: null == city_id
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as int,
      area_id: null == area_id
          ? _value.area_id
          : area_id // ignore: cast_nullable_to_non_nullable
              as int,
      delivery_from: null == delivery_from
          ? _value.delivery_from
          : delivery_from // ignore: cast_nullable_to_non_nullable
              as int,
      delivery_to: null == delivery_to
          ? _value.delivery_to
          : delivery_to // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryDataImplCopyWith<$Res>
    implements $DeliveryDataCopyWith<$Res> {
  factory _$$DeliveryDataImplCopyWith(
          _$DeliveryDataImpl value, $Res Function(_$DeliveryDataImpl) then) =
      __$$DeliveryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String initial_price,
      String incremental_price,
      int city_id,
      int area_id,
      int delivery_from,
      int delivery_to,
      String created_at,
      String updated_at});
}

/// @nodoc
class __$$DeliveryDataImplCopyWithImpl<$Res>
    extends _$DeliveryDataCopyWithImpl<$Res, _$DeliveryDataImpl>
    implements _$$DeliveryDataImplCopyWith<$Res> {
  __$$DeliveryDataImplCopyWithImpl(
      _$DeliveryDataImpl _value, $Res Function(_$DeliveryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? initial_price = null,
    Object? incremental_price = null,
    Object? city_id = null,
    Object? area_id = null,
    Object? delivery_from = null,
    Object? delivery_to = null,
    Object? created_at = null,
    Object? updated_at = null,
  }) {
    return _then(_$DeliveryDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      initial_price: null == initial_price
          ? _value.initial_price
          : initial_price // ignore: cast_nullable_to_non_nullable
              as String,
      incremental_price: null == incremental_price
          ? _value.incremental_price
          : incremental_price // ignore: cast_nullable_to_non_nullable
              as String,
      city_id: null == city_id
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as int,
      area_id: null == area_id
          ? _value.area_id
          : area_id // ignore: cast_nullable_to_non_nullable
              as int,
      delivery_from: null == delivery_from
          ? _value.delivery_from
          : delivery_from // ignore: cast_nullable_to_non_nullable
              as int,
      delivery_to: null == delivery_to
          ? _value.delivery_to
          : delivery_to // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryDataImpl implements _DeliveryData {
  const _$DeliveryDataImpl(
      {this.id = -1,
      this.initial_price = '0.00',
      this.incremental_price = '0.00',
      this.city_id = -1,
      this.area_id = -1,
      this.delivery_from = -1,
      this.delivery_to = -1,
      this.created_at = '',
      this.updated_at = ''});

  factory _$DeliveryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryDataImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String initial_price;
  @override
  @JsonKey()
  final String incremental_price;
  @override
  @JsonKey()
  final int city_id;
  @override
  @JsonKey()
  final int area_id;
  @override
  @JsonKey()
  final int delivery_from;
  @override
  @JsonKey()
  final int delivery_to;
  @override
  @JsonKey()
  final String created_at;
  @override
  @JsonKey()
  final String updated_at;

  @override
  String toString() {
    return 'DeliveryData(id: $id, initial_price: $initial_price, incremental_price: $incremental_price, city_id: $city_id, area_id: $area_id, delivery_from: $delivery_from, delivery_to: $delivery_to, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.initial_price, initial_price) ||
                other.initial_price == initial_price) &&
            (identical(other.incremental_price, incremental_price) ||
                other.incremental_price == incremental_price) &&
            (identical(other.city_id, city_id) || other.city_id == city_id) &&
            (identical(other.area_id, area_id) || other.area_id == area_id) &&
            (identical(other.delivery_from, delivery_from) ||
                other.delivery_from == delivery_from) &&
            (identical(other.delivery_to, delivery_to) ||
                other.delivery_to == delivery_to) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      initial_price,
      incremental_price,
      city_id,
      area_id,
      delivery_from,
      delivery_to,
      created_at,
      updated_at);

  /// Create a copy of DeliveryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryDataImplCopyWith<_$DeliveryDataImpl> get copyWith =>
      __$$DeliveryDataImplCopyWithImpl<_$DeliveryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryDataImplToJson(
      this,
    );
  }
}

abstract class _DeliveryData implements DeliveryData {
  const factory _DeliveryData(
      {final int id,
      final String initial_price,
      final String incremental_price,
      final int city_id,
      final int area_id,
      final int delivery_from,
      final int delivery_to,
      final String created_at,
      final String updated_at}) = _$DeliveryDataImpl;

  factory _DeliveryData.fromJson(Map<String, dynamic> json) =
      _$DeliveryDataImpl.fromJson;

  @override
  int get id;
  @override
  String get initial_price;
  @override
  String get incremental_price;
  @override
  int get city_id;
  @override
  int get area_id;
  @override
  int get delivery_from;
  @override
  int get delivery_to;
  @override
  String get created_at;
  @override
  String get updated_at;

  /// Create a copy of DeliveryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryDataImplCopyWith<_$DeliveryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
