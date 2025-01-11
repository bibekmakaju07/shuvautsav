// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
mixin _$CartModel {
  String get cartId => throw _privateConstructorUsedError;
  Carts get carts => throw _privateConstructorUsedError;

  /// Serializes this CartModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call({String cartId, Carts carts});

  $CartsCopyWith<$Res> get carts;
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? carts = null,
  }) {
    return _then(_value.copyWith(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      carts: null == carts
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as Carts,
    ) as $Val);
  }

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartsCopyWith<$Res> get carts {
    return $CartsCopyWith<$Res>(_value.carts, (value) {
      return _then(_value.copyWith(carts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartModelImplCopyWith<$Res>
    implements $CartModelCopyWith<$Res> {
  factory _$$CartModelImplCopyWith(
          _$CartModelImpl value, $Res Function(_$CartModelImpl) then) =
      __$$CartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cartId, Carts carts});

  @override
  $CartsCopyWith<$Res> get carts;
}

/// @nodoc
class __$$CartModelImplCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$CartModelImpl>
    implements _$$CartModelImplCopyWith<$Res> {
  __$$CartModelImplCopyWithImpl(
      _$CartModelImpl _value, $Res Function(_$CartModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? carts = null,
  }) {
    return _then(_$CartModelImpl(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      carts: null == carts
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as Carts,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartModelImpl implements _CartModel {
  const _$CartModelImpl({this.cartId = '', this.carts = const Carts()});

  factory _$CartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartModelImplFromJson(json);

  @override
  @JsonKey()
  final String cartId;
  @override
  @JsonKey()
  final Carts carts;

  @override
  String toString() {
    return 'CartModel(cartId: $cartId, carts: $carts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.carts, carts) || other.carts == carts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cartId, carts);

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      __$$CartModelImplCopyWithImpl<_$CartModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartModelImplToJson(
      this,
    );
  }
}

abstract class _CartModel implements CartModel {
  const factory _CartModel({final String cartId, final Carts carts}) =
      _$CartModelImpl;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$CartModelImpl.fromJson;

  @override
  String get cartId;
  @override
  Carts get carts;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Carts _$CartsFromJson(Map<String, dynamic> json) {
  return _Carts.fromJson(json);
}

/// @nodoc
mixin _$Carts {
  List<Cart> get cart => throw _privateConstructorUsedError;

  /// Serializes this Carts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Carts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartsCopyWith<Carts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartsCopyWith<$Res> {
  factory $CartsCopyWith(Carts value, $Res Function(Carts) then) =
      _$CartsCopyWithImpl<$Res, Carts>;
  @useResult
  $Res call({List<Cart> cart});
}

/// @nodoc
class _$CartsCopyWithImpl<$Res, $Val extends Carts>
    implements $CartsCopyWith<$Res> {
  _$CartsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Carts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_value.copyWith(
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartsImplCopyWith<$Res> implements $CartsCopyWith<$Res> {
  factory _$$CartsImplCopyWith(
          _$CartsImpl value, $Res Function(_$CartsImpl) then) =
      __$$CartsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Cart> cart});
}

/// @nodoc
class __$$CartsImplCopyWithImpl<$Res>
    extends _$CartsCopyWithImpl<$Res, _$CartsImpl>
    implements _$$CartsImplCopyWith<$Res> {
  __$$CartsImplCopyWithImpl(
      _$CartsImpl _value, $Res Function(_$CartsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Carts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$CartsImpl(
      cart: null == cart
          ? _value._cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartsImpl implements _Carts {
  const _$CartsImpl({final List<Cart> cart = const []}) : _cart = cart;

  factory _$CartsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartsImplFromJson(json);

  final List<Cart> _cart;
  @override
  @JsonKey()
  List<Cart> get cart {
    if (_cart is EqualUnmodifiableListView) return _cart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cart);
  }

  @override
  String toString() {
    return 'Carts(cart: $cart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartsImpl &&
            const DeepCollectionEquality().equals(other._cart, _cart));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cart));

  /// Create a copy of Carts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartsImplCopyWith<_$CartsImpl> get copyWith =>
      __$$CartsImplCopyWithImpl<_$CartsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartsImplToJson(
      this,
    );
  }
}

abstract class _Carts implements Carts {
  const factory _Carts({final List<Cart> cart}) = _$CartsImpl;

  factory _Carts.fromJson(Map<String, dynamic> json) = _$CartsImpl.fromJson;

  @override
  List<Cart> get cart;

  /// Create a copy of Carts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartsImplCopyWith<_$CartsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  String get id => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get total_weight => throw _privateConstructorUsedError;
  String get total_amount => throw _privateConstructorUsedError;

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
      {String id,
      String quantity,
      String productName,
      String total_weight,
      String total_amount});
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
    Object? productName = null,
    Object? total_weight = null,
    Object? total_amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      total_weight: null == total_weight
          ? _value.total_weight
          : total_weight // ignore: cast_nullable_to_non_nullable
              as String,
      total_amount: null == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as String,
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
      {String id,
      String quantity,
      String productName,
      String total_weight,
      String total_amount});
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
    Object? productName = null,
    Object? total_weight = null,
    Object? total_amount = null,
  }) {
    return _then(_$CartImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      total_weight: null == total_weight
          ? _value.total_weight
          : total_weight // ignore: cast_nullable_to_non_nullable
              as String,
      total_amount: null == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartImpl implements _Cart {
  const _$CartImpl(
      {this.id = '',
      this.quantity = '',
      this.productName = '',
      this.total_weight = '',
      this.total_amount = ''});

  factory _$CartImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String quantity;
  @override
  @JsonKey()
  final String productName;
  @override
  @JsonKey()
  final String total_weight;
  @override
  @JsonKey()
  final String total_amount;

  @override
  String toString() {
    return 'Cart(id: $id, quantity: $quantity, productName: $productName, total_weight: $total_weight, total_amount: $total_amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.total_weight, total_weight) ||
                other.total_weight == total_weight) &&
            (identical(other.total_amount, total_amount) ||
                other.total_amount == total_amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, quantity, productName, total_weight, total_amount);

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
      {final String id,
      final String quantity,
      final String productName,
      final String total_weight,
      final String total_amount}) = _$CartImpl;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$CartImpl.fromJson;

  @override
  String get id;
  @override
  String get quantity;
  @override
  String get productName;
  @override
  String get total_weight;
  @override
  String get total_amount;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
