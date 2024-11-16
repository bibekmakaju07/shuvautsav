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
  Map<String, String> get provinces => throw _privateConstructorUsedError;
  Map<String, String> get cities => throw _privateConstructorUsedError;
  Map<String, String> get areas => throw _privateConstructorUsedError;
  List<dynamic> get countries => throw _privateConstructorUsedError;
  List<Cart> get carts => throw _privateConstructorUsedError;
  Map<String, String> get districts => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_weight')
  double? get totalWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  int? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_charge')
  int? get shippingCharge => throw _privateConstructorUsedError;

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
      {Map<String, String> provinces,
      Map<String, String> cities,
      Map<String, String> areas,
      List<dynamic> countries,
      List<Cart> carts,
      Map<String, String> districts,
      @JsonKey(name: 'total_weight') double? totalWeight,
      @JsonKey(name: 'total_amount') int? totalAmount,
      @JsonKey(name: 'shipping_charge') int? shippingCharge});
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
    Object? countries = null,
    Object? carts = null,
    Object? districts = null,
    Object? totalWeight = freezed,
    Object? totalAmount = freezed,
    Object? shippingCharge = freezed,
  }) {
    return _then(_value.copyWith(
      provinces: null == provinces
          ? _value.provinces
          : provinces // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      areas: null == areas
          ? _value.areas
          : areas // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      carts: null == carts
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
      districts: null == districts
          ? _value.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      totalWeight: freezed == totalWeight
          ? _value.totalWeight
          : totalWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingCharge: freezed == shippingCharge
          ? _value.shippingCharge
          : shippingCharge // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
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
      {Map<String, String> provinces,
      Map<String, String> cities,
      Map<String, String> areas,
      List<dynamic> countries,
      List<Cart> carts,
      Map<String, String> districts,
      @JsonKey(name: 'total_weight') double? totalWeight,
      @JsonKey(name: 'total_amount') int? totalAmount,
      @JsonKey(name: 'shipping_charge') int? shippingCharge});
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
    Object? countries = null,
    Object? carts = null,
    Object? districts = null,
    Object? totalWeight = freezed,
    Object? totalAmount = freezed,
    Object? shippingCharge = freezed,
  }) {
    return _then(_$LocationDataImpl(
      provinces: null == provinces
          ? _value._provinces
          : provinces // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      areas: null == areas
          ? _value._areas
          : areas // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      carts: null == carts
          ? _value._carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
      districts: null == districts
          ? _value._districts
          : districts // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      totalWeight: freezed == totalWeight
          ? _value.totalWeight
          : totalWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingCharge: freezed == shippingCharge
          ? _value.shippingCharge
          : shippingCharge // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationDataImpl implements _LocationData {
  const _$LocationDataImpl(
      {final Map<String, String> provinces = const {},
      final Map<String, String> cities = const {},
      final Map<String, String> areas = const {},
      final List<dynamic> countries = const [],
      final List<Cart> carts = const [],
      final Map<String, String> districts = const {},
      @JsonKey(name: 'total_weight') this.totalWeight,
      @JsonKey(name: 'total_amount') this.totalAmount,
      @JsonKey(name: 'shipping_charge') this.shippingCharge})
      : _provinces = provinces,
        _cities = cities,
        _areas = areas,
        _countries = countries,
        _carts = carts,
        _districts = districts;

  factory _$LocationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationDataImplFromJson(json);

  final Map<String, String> _provinces;
  @override
  @JsonKey()
  Map<String, String> get provinces {
    if (_provinces is EqualUnmodifiableMapView) return _provinces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_provinces);
  }

  final Map<String, String> _cities;
  @override
  @JsonKey()
  Map<String, String> get cities {
    if (_cities is EqualUnmodifiableMapView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cities);
  }

  final Map<String, String> _areas;
  @override
  @JsonKey()
  Map<String, String> get areas {
    if (_areas is EqualUnmodifiableMapView) return _areas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_areas);
  }

  final List<dynamic> _countries;
  @override
  @JsonKey()
  List<dynamic> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  final List<Cart> _carts;
  @override
  @JsonKey()
  List<Cart> get carts {
    if (_carts is EqualUnmodifiableListView) return _carts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carts);
  }

  final Map<String, String> _districts;
  @override
  @JsonKey()
  Map<String, String> get districts {
    if (_districts is EqualUnmodifiableMapView) return _districts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_districts);
  }

  @override
  @JsonKey(name: 'total_weight')
  final double? totalWeight;
  @override
  @JsonKey(name: 'total_amount')
  final int? totalAmount;
  @override
  @JsonKey(name: 'shipping_charge')
  final int? shippingCharge;

  @override
  String toString() {
    return 'LocationData(provinces: $provinces, cities: $cities, areas: $areas, countries: $countries, carts: $carts, districts: $districts, totalWeight: $totalWeight, totalAmount: $totalAmount, shippingCharge: $shippingCharge)';
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
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            const DeepCollectionEquality().equals(other._carts, _carts) &&
            const DeepCollectionEquality()
                .equals(other._districts, _districts) &&
            (identical(other.totalWeight, totalWeight) ||
                other.totalWeight == totalWeight) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.shippingCharge, shippingCharge) ||
                other.shippingCharge == shippingCharge));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_provinces),
      const DeepCollectionEquality().hash(_cities),
      const DeepCollectionEquality().hash(_areas),
      const DeepCollectionEquality().hash(_countries),
      const DeepCollectionEquality().hash(_carts),
      const DeepCollectionEquality().hash(_districts),
      totalWeight,
      totalAmount,
      shippingCharge);

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
          {final Map<String, String> provinces,
          final Map<String, String> cities,
          final Map<String, String> areas,
          final List<dynamic> countries,
          final List<Cart> carts,
          final Map<String, String> districts,
          @JsonKey(name: 'total_weight') final double? totalWeight,
          @JsonKey(name: 'total_amount') final int? totalAmount,
          @JsonKey(name: 'shipping_charge') final int? shippingCharge}) =
      _$LocationDataImpl;

  factory _LocationData.fromJson(Map<String, dynamic> json) =
      _$LocationDataImpl.fromJson;

  @override
  Map<String, String> get provinces;
  @override
  Map<String, String> get cities;
  @override
  Map<String, String> get areas;
  @override
  List<dynamic> get countries;
  @override
  List<Cart> get carts;
  @override
  Map<String, String> get districts;
  @override
  @JsonKey(name: 'total_weight')
  double? get totalWeight;
  @override
  @JsonKey(name: 'total_amount')
  int? get totalAmount;
  @override
  @JsonKey(name: 'shipping_charge')
  int? get shippingCharge;

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
  int get totalAmount => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'total_amount') int totalAmount});
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
              as int,
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
      @JsonKey(name: 'total_amount') int totalAmount});
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
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartImpl implements _Cart {
  const _$CartImpl(
      {required this.id,
      required this.quantity,
      @JsonKey(name: 'total_weight') required this.totalWeight,
      @JsonKey(name: 'total_amount') required this.totalAmount});

  factory _$CartImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartImplFromJson(json);

  @override
  final int id;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'total_weight')
  final double totalWeight;
  @override
  @JsonKey(name: 'total_amount')
  final int totalAmount;

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
          {required final int id,
          required final int quantity,
          @JsonKey(name: 'total_weight') required final double totalWeight,
          @JsonKey(name: 'total_amount') required final int totalAmount}) =
      _$CartImpl;

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
  int get totalAmount;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
