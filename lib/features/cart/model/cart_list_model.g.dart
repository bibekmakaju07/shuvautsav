// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartModelImpl _$$CartModelImplFromJson(Map<String, dynamic> json) =>
    _$CartModelImpl(
      cartId: json['cartId'] as String? ?? '',
      carts: json['carts'] == null
          ? const Carts()
          : Carts.fromJson(json['carts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartModelImplToJson(_$CartModelImpl instance) =>
    <String, dynamic>{
      'cartId': instance.cartId,
      'carts': instance.carts,
    };

_$CartsImpl _$$CartsImplFromJson(Map<String, dynamic> json) => _$CartsImpl(
      cart: (json['cart'] as List<dynamic>?)
              ?.map((e) => Cart.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CartsImplToJson(_$CartsImpl instance) =>
    <String, dynamic>{
      'cart': instance.cart,
    };

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
      id: json['id'] as String? ?? '',
      quantity: json['quantity'] as String? ?? '',
      productName: json['productName'] as String? ?? '',
      total_weight: json['total_weight'] as String? ?? '',
      total_amount: json['total_amount'] as String? ?? '',
    );

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'productName': instance.productName,
      'total_weight': instance.total_weight,
      'total_amount': instance.total_amount,
    };
