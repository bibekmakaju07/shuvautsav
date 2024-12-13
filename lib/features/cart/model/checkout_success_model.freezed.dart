// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_success_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  LocationData get data => throw _privateConstructorUsedError;

  /// Serializes this LocationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call({LocationData data});

  $LocationDataCopyWith<$Res> get data;
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LocationData,
    ) as $Val);
  }

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDataCopyWith<$Res> get data {
    return $LocationDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationModelImplCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$LocationModelImplCopyWith(
          _$LocationModelImpl value, $Res Function(_$LocationModelImpl) then) =
      __$$LocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationData data});

  @override
  $LocationDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LocationModelImplCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$LocationModelImpl>
    implements _$$LocationModelImplCopyWith<$Res> {
  __$$LocationModelImplCopyWithImpl(
      _$LocationModelImpl _value, $Res Function(_$LocationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LocationModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LocationData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationModelImpl implements _LocationModel {
  const _$LocationModelImpl({this.data = const LocationData()});

  factory _$LocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationModelImplFromJson(json);

  @override
  @JsonKey()
  final LocationData data;

  @override
  String toString() {
    return 'LocationModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      __$$LocationModelImplCopyWithImpl<_$LocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationModelImplToJson(
      this,
    );
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel({final LocationData data}) = _$LocationModelImpl;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$LocationModelImpl.fromJson;

  @override
  LocationData get data;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationData _$LocationDataFromJson(Map<String, dynamic> json) {
  return _LocationData.fromJson(json);
}

/// @nodoc
mixin _$LocationData {
  Map<String, String?> get provinces => throw _privateConstructorUsedError;
  Map<String, String?> get cities => throw _privateConstructorUsedError;
  Map<String, String?> get areas =>
      throw _privateConstructorUsedError; // @Default({}) Map<String, String?> countries,
  List<int> get wards => throw _privateConstructorUsedError;
  dynamic get iaddress => throw _privateConstructorUsedError;
  List<Cart> get carts => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_weight')
  double get totalWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  int get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_charge')
  double get shippingCharge => throw _privateConstructorUsedError;
  Customer? get customer => throw _privateConstructorUsedError;

  /// Serializes this LocationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationDataCopyWith<LocationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDataCopyWith<$Res> {
  factory $LocationDataCopyWith(
          LocationData value, $Res Function(LocationData) then) =
      _$LocationDataCopyWithImpl<$Res, LocationData>;
  @useResult
  $Res call(
      {Map<String, String?> provinces,
      Map<String, String?> cities,
      Map<String, String?> areas,
      List<int> wards,
      dynamic iaddress,
      List<Cart> carts,
      @JsonKey(name: 'total_weight') double totalWeight,
      @JsonKey(name: 'total_amount') int totalAmount,
      @JsonKey(name: 'shipping_charge') double shippingCharge,
      Customer? customer});

  $CustomerCopyWith<$Res>? get customer;
}

/// @nodoc
class _$LocationDataCopyWithImpl<$Res, $Val extends LocationData>
    implements $LocationDataCopyWith<$Res> {
  _$LocationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinces = null,
    Object? cities = null,
    Object? areas = null,
    Object? wards = null,
    Object? iaddress = freezed,
    Object? carts = null,
    Object? totalWeight = null,
    Object? totalAmount = null,
    Object? shippingCharge = null,
    Object? customer = freezed,
  }) {
    return _then(_value.copyWith(
      provinces: null == provinces
          ? _value.provinces
          : provinces // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
      areas: null == areas
          ? _value.areas
          : areas // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
      wards: null == wards
          ? _value.wards
          : wards // ignore: cast_nullable_to_non_nullable
              as List<int>,
      iaddress: freezed == iaddress
          ? _value.iaddress
          : iaddress // ignore: cast_nullable_to_non_nullable
              as dynamic,
      carts: null == carts
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
      totalWeight: null == totalWeight
          ? _value.totalWeight
          : totalWeight // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      shippingCharge: null == shippingCharge
          ? _value.shippingCharge
          : shippingCharge // ignore: cast_nullable_to_non_nullable
              as double,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
    ) as $Val);
  }

  /// Create a copy of LocationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationDataImplCopyWith<$Res>
    implements $LocationDataCopyWith<$Res> {
  factory _$$LocationDataImplCopyWith(
          _$LocationDataImpl value, $Res Function(_$LocationDataImpl) then) =
      __$$LocationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, String?> provinces,
      Map<String, String?> cities,
      Map<String, String?> areas,
      List<int> wards,
      dynamic iaddress,
      List<Cart> carts,
      @JsonKey(name: 'total_weight') double totalWeight,
      @JsonKey(name: 'total_amount') int totalAmount,
      @JsonKey(name: 'shipping_charge') double shippingCharge,
      Customer? customer});

  @override
  $CustomerCopyWith<$Res>? get customer;
}

/// @nodoc
class __$$LocationDataImplCopyWithImpl<$Res>
    extends _$LocationDataCopyWithImpl<$Res, _$LocationDataImpl>
    implements _$$LocationDataImplCopyWith<$Res> {
  __$$LocationDataImplCopyWithImpl(
      _$LocationDataImpl _value, $Res Function(_$LocationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinces = null,
    Object? cities = null,
    Object? areas = null,
    Object? wards = null,
    Object? iaddress = freezed,
    Object? carts = null,
    Object? totalWeight = null,
    Object? totalAmount = null,
    Object? shippingCharge = null,
    Object? customer = freezed,
  }) {
    return _then(_$LocationDataImpl(
      provinces: null == provinces
          ? _value._provinces
          : provinces // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
      areas: null == areas
          ? _value._areas
          : areas // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
      wards: null == wards
          ? _value._wards
          : wards // ignore: cast_nullable_to_non_nullable
              as List<int>,
      iaddress: freezed == iaddress
          ? _value.iaddress
          : iaddress // ignore: cast_nullable_to_non_nullable
              as dynamic,
      carts: null == carts
          ? _value._carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
      totalWeight: null == totalWeight
          ? _value.totalWeight
          : totalWeight // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      shippingCharge: null == shippingCharge
          ? _value.shippingCharge
          : shippingCharge // ignore: cast_nullable_to_non_nullable
              as double,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationDataImpl implements _LocationData {
  const _$LocationDataImpl(
      {final Map<String, String?> provinces = const {},
      final Map<String, String?> cities = const {},
      final Map<String, String?> areas = const {},
      final List<int> wards = const [],
      this.iaddress,
      final List<Cart> carts = const [],
      @JsonKey(name: 'total_weight') this.totalWeight = 0.0,
      @JsonKey(name: 'total_amount') this.totalAmount = -1,
      @JsonKey(name: 'shipping_charge') this.shippingCharge = 0.0,
      this.customer})
      : _provinces = provinces,
        _cities = cities,
        _areas = areas,
        _wards = wards,
        _carts = carts;

  factory _$LocationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationDataImplFromJson(json);

  final Map<String, String?> _provinces;
  @override
  @JsonKey()
  Map<String, String?> get provinces {
    if (_provinces is EqualUnmodifiableMapView) return _provinces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_provinces);
  }

  final Map<String, String?> _cities;
  @override
  @JsonKey()
  Map<String, String?> get cities {
    if (_cities is EqualUnmodifiableMapView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cities);
  }

  final Map<String, String?> _areas;
  @override
  @JsonKey()
  Map<String, String?> get areas {
    if (_areas is EqualUnmodifiableMapView) return _areas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_areas);
  }

// @Default({}) Map<String, String?> countries,
  final List<int> _wards;
// @Default({}) Map<String, String?> countries,
  @override
  @JsonKey()
  List<int> get wards {
    if (_wards is EqualUnmodifiableListView) return _wards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wards);
  }

  @override
  final dynamic iaddress;
  final List<Cart> _carts;
  @override
  @JsonKey()
  List<Cart> get carts {
    if (_carts is EqualUnmodifiableListView) return _carts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carts);
  }

  @override
  @JsonKey(name: 'total_weight')
  final double totalWeight;
  @override
  @JsonKey(name: 'total_amount')
  final int totalAmount;
  @override
  @JsonKey(name: 'shipping_charge')
  final double shippingCharge;
  @override
  final Customer? customer;

  @override
  String toString() {
    return 'LocationData(provinces: $provinces, cities: $cities, areas: $areas, wards: $wards, iaddress: $iaddress, carts: $carts, totalWeight: $totalWeight, totalAmount: $totalAmount, shippingCharge: $shippingCharge, customer: $customer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDataImpl &&
            const DeepCollectionEquality()
                .equals(other._provinces, _provinces) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality().equals(other._areas, _areas) &&
            const DeepCollectionEquality().equals(other._wards, _wards) &&
            const DeepCollectionEquality().equals(other.iaddress, iaddress) &&
            const DeepCollectionEquality().equals(other._carts, _carts) &&
            (identical(other.totalWeight, totalWeight) ||
                other.totalWeight == totalWeight) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.shippingCharge, shippingCharge) ||
                other.shippingCharge == shippingCharge) &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_provinces),
      const DeepCollectionEquality().hash(_cities),
      const DeepCollectionEquality().hash(_areas),
      const DeepCollectionEquality().hash(_wards),
      const DeepCollectionEquality().hash(iaddress),
      const DeepCollectionEquality().hash(_carts),
      totalWeight,
      totalAmount,
      shippingCharge,
      customer);

  /// Create a copy of LocationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDataImplCopyWith<_$LocationDataImpl> get copyWith =>
      __$$LocationDataImplCopyWithImpl<_$LocationDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationDataImplToJson(
      this,
    );
  }
}

abstract class _LocationData implements LocationData {
  const factory _LocationData(
      {final Map<String, String?> provinces,
      final Map<String, String?> cities,
      final Map<String, String?> areas,
      final List<int> wards,
      final dynamic iaddress,
      final List<Cart> carts,
      @JsonKey(name: 'total_weight') final double totalWeight,
      @JsonKey(name: 'total_amount') final int totalAmount,
      @JsonKey(name: 'shipping_charge') final double shippingCharge,
      final Customer? customer}) = _$LocationDataImpl;

  factory _LocationData.fromJson(Map<String, dynamic> json) =
      _$LocationDataImpl.fromJson;

  @override
  Map<String, String?> get provinces;
  @override
  Map<String, String?> get cities;
  @override
  Map<String, String?>
      get areas; // @Default({}) Map<String, String?> countries,
  @override
  List<int> get wards;
  @override
  dynamic get iaddress;
  @override
  List<Cart> get carts;
  @override
  @JsonKey(name: 'total_weight')
  double get totalWeight;
  @override
  @JsonKey(name: 'total_amount')
  int get totalAmount;
  @override
  @JsonKey(name: 'shipping_charge')
  double get shippingCharge;
  @override
  Customer? get customer;

  /// Create a copy of LocationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationDataImplCopyWith<_$LocationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  int get id => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_weight')
  double get totalWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  double get totalAmount => throw _privateConstructorUsedError;

  /// Serializes this Cart to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call(
      {int id,
      int quantity,
      @JsonKey(name: 'total_weight') double totalWeight,
      @JsonKey(name: 'total_amount') double totalAmount});
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? totalWeight = null,
    Object? totalAmount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalWeight: null == totalWeight
          ? _value.totalWeight
          : totalWeight // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartImplCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$CartImplCopyWith(
          _$CartImpl value, $Res Function(_$CartImpl) then) =
      __$$CartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int quantity,
      @JsonKey(name: 'total_weight') double totalWeight,
      @JsonKey(name: 'total_amount') double totalAmount});
}

/// @nodoc
class __$$CartImplCopyWithImpl<$Res>
    extends _$CartCopyWithImpl<$Res, _$CartImpl>
    implements _$$CartImplCopyWith<$Res> {
  __$$CartImplCopyWithImpl(_$CartImpl _value, $Res Function(_$CartImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? totalWeight = null,
    Object? totalAmount = null,
  }) {
    return _then(_$CartImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalWeight: null == totalWeight
          ? _value.totalWeight
          : totalWeight // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartImpl implements _Cart {
  const _$CartImpl(
      {this.id = 0,
      this.quantity = 0,
      @JsonKey(name: 'total_weight') this.totalWeight = 0.0,
      @JsonKey(name: 'total_amount') this.totalAmount = 0.0});

  factory _$CartImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey(name: 'total_weight')
  final double totalWeight;
  @override
  @JsonKey(name: 'total_amount')
  final double totalAmount;

  @override
  String toString() {
    return 'Cart(id: $id, quantity: $quantity, totalWeight: $totalWeight, totalAmount: $totalAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.totalWeight, totalWeight) ||
                other.totalWeight == totalWeight) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, quantity, totalWeight, totalAmount);

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      __$$CartImplCopyWithImpl<_$CartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartImplToJson(
      this,
    );
  }
}

abstract class _Cart implements Cart {
  const factory _Cart(
      {final int id,
      final int quantity,
      @JsonKey(name: 'total_weight') final double totalWeight,
      @JsonKey(name: 'total_amount') final double totalAmount}) = _$CartImpl;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$CartImpl.fromJson;

  @override
  int get id;
  @override
  int get quantity;
  @override
  @JsonKey(name: 'total_weight')
  double get totalWeight;
  @override
  @JsonKey(name: 'total_amount')
  double get totalAmount;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
mixin _$Customer {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'province_id')
  int get provinceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  int get cityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_id')
  int get areaId => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get i_state => throw _privateConstructorUsedError;
  String? get i_suburb => throw _privateConstructorUsedError;
  String? get i_postcode => throw _privateConstructorUsedError;
  String? get i_street => throw _privateConstructorUsedError;
  dynamic get international_address_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_id')
  int get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_id')
  int get addressId => throw _privateConstructorUsedError;

  /// Serializes this Customer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res, Customer>;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String phone,
      @JsonKey(name: 'province_id') int provinceId,
      @JsonKey(name: 'city_id') int cityId,
      @JsonKey(name: 'area_id') int areaId,
      String? street,
      String? i_state,
      String? i_suburb,
      String? i_postcode,
      String? i_street,
      dynamic international_address_id,
      @JsonKey(name: 'country_id') int countryId,
      @JsonKey(name: 'address_id') int addressId});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res, $Val extends Customer>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? provinceId = null,
    Object? cityId = null,
    Object? areaId = null,
    Object? street = freezed,
    Object? i_state = freezed,
    Object? i_suburb = freezed,
    Object? i_postcode = freezed,
    Object? i_street = freezed,
    Object? international_address_id = freezed,
    Object? countryId = null,
    Object? addressId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      i_state: freezed == i_state
          ? _value.i_state
          : i_state // ignore: cast_nullable_to_non_nullable
              as String?,
      i_suburb: freezed == i_suburb
          ? _value.i_suburb
          : i_suburb // ignore: cast_nullable_to_non_nullable
              as String?,
      i_postcode: freezed == i_postcode
          ? _value.i_postcode
          : i_postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      i_street: freezed == i_street
          ? _value.i_street
          : i_street // ignore: cast_nullable_to_non_nullable
              as String?,
      international_address_id: freezed == international_address_id
          ? _value.international_address_id
          : international_address_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerImplCopyWith<$Res>
    implements $CustomerCopyWith<$Res> {
  factory _$$CustomerImplCopyWith(
          _$CustomerImpl value, $Res Function(_$CustomerImpl) then) =
      __$$CustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String phone,
      @JsonKey(name: 'province_id') int provinceId,
      @JsonKey(name: 'city_id') int cityId,
      @JsonKey(name: 'area_id') int areaId,
      String? street,
      String? i_state,
      String? i_suburb,
      String? i_postcode,
      String? i_street,
      dynamic international_address_id,
      @JsonKey(name: 'country_id') int countryId,
      @JsonKey(name: 'address_id') int addressId});
}

/// @nodoc
class __$$CustomerImplCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$CustomerImpl>
    implements _$$CustomerImplCopyWith<$Res> {
  __$$CustomerImplCopyWithImpl(
      _$CustomerImpl _value, $Res Function(_$CustomerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? provinceId = null,
    Object? cityId = null,
    Object? areaId = null,
    Object? street = freezed,
    Object? i_state = freezed,
    Object? i_suburb = freezed,
    Object? i_postcode = freezed,
    Object? i_street = freezed,
    Object? international_address_id = freezed,
    Object? countryId = null,
    Object? addressId = null,
  }) {
    return _then(_$CustomerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      i_state: freezed == i_state
          ? _value.i_state
          : i_state // ignore: cast_nullable_to_non_nullable
              as String?,
      i_suburb: freezed == i_suburb
          ? _value.i_suburb
          : i_suburb // ignore: cast_nullable_to_non_nullable
              as String?,
      i_postcode: freezed == i_postcode
          ? _value.i_postcode
          : i_postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      i_street: freezed == i_street
          ? _value.i_street
          : i_street // ignore: cast_nullable_to_non_nullable
              as String?,
      international_address_id: freezed == international_address_id
          ? _value.international_address_id
          : international_address_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerImpl implements _Customer {
  const _$CustomerImpl(
      {this.id = -1,
      this.name = '',
      this.email = '',
      this.phone = '',
      @JsonKey(name: 'province_id') this.provinceId = -1,
      @JsonKey(name: 'city_id') this.cityId = -1,
      @JsonKey(name: 'area_id') this.areaId = -1,
      this.street,
      this.i_state,
      this.i_suburb,
      this.i_postcode,
      this.i_street,
      this.international_address_id,
      @JsonKey(name: 'country_id') this.countryId = -1,
      @JsonKey(name: 'address_id') this.addressId = -1});

  factory _$CustomerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey(name: 'province_id')
  final int provinceId;
  @override
  @JsonKey(name: 'city_id')
  final int cityId;
  @override
  @JsonKey(name: 'area_id')
  final int areaId;
  @override
  final String? street;
  @override
  final String? i_state;
  @override
  final String? i_suburb;
  @override
  final String? i_postcode;
  @override
  final String? i_street;
  @override
  final dynamic international_address_id;
  @override
  @JsonKey(name: 'country_id')
  final int countryId;
  @override
  @JsonKey(name: 'address_id')
  final int addressId;

  @override
  String toString() {
    return 'Customer(id: $id, name: $name, email: $email, phone: $phone, provinceId: $provinceId, cityId: $cityId, areaId: $areaId, street: $street, i_state: $i_state, i_suburb: $i_suburb, i_postcode: $i_postcode, i_street: $i_street, international_address_id: $international_address_id, countryId: $countryId, addressId: $addressId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.i_state, i_state) || other.i_state == i_state) &&
            (identical(other.i_suburb, i_suburb) ||
                other.i_suburb == i_suburb) &&
            (identical(other.i_postcode, i_postcode) ||
                other.i_postcode == i_postcode) &&
            (identical(other.i_street, i_street) ||
                other.i_street == i_street) &&
            const DeepCollectionEquality().equals(
                other.international_address_id, international_address_id) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      phone,
      provinceId,
      cityId,
      areaId,
      street,
      i_state,
      i_suburb,
      i_postcode,
      i_street,
      const DeepCollectionEquality().hash(international_address_id),
      countryId,
      addressId);

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      __$$CustomerImplCopyWithImpl<_$CustomerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerImplToJson(
      this,
    );
  }
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {final int id,
      final String name,
      final String email,
      final String phone,
      @JsonKey(name: 'province_id') final int provinceId,
      @JsonKey(name: 'city_id') final int cityId,
      @JsonKey(name: 'area_id') final int areaId,
      final String? street,
      final String? i_state,
      final String? i_suburb,
      final String? i_postcode,
      final String? i_street,
      final dynamic international_address_id,
      @JsonKey(name: 'country_id') final int countryId,
      @JsonKey(name: 'address_id') final int addressId}) = _$CustomerImpl;

  factory _Customer.fromJson(Map<String, dynamic> json) =
      _$CustomerImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get phone;
  @override
  @JsonKey(name: 'province_id')
  int get provinceId;
  @override
  @JsonKey(name: 'city_id')
  int get cityId;
  @override
  @JsonKey(name: 'area_id')
  int get areaId;
  @override
  String? get street;
  @override
  String? get i_state;
  @override
  String? get i_suburb;
  @override
  String? get i_postcode;
  @override
  String? get i_street;
  @override
  dynamic get international_address_id;
  @override
  @JsonKey(name: 'country_id')
  int get countryId;
  @override
  @JsonKey(name: 'address_id')
  int get addressId;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
