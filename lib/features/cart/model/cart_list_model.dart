import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_list_model.freezed.dart';
part 'cart_list_model.g.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    @Default('') String cartId,
    @Default( Carts()) Carts carts,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) => _$CartModelFromJson(json);
}

@freezed
class Carts with _$Carts {
  const factory Carts({
    @Default([]) List<Cart> cart,
  }) = _Carts;

  factory Carts.fromJson(Map<String, dynamic> json) => _$CartsFromJson(json);
}

@freezed
class Cart with _$Cart {
  const factory Cart({
    @Default('') String id,
    @Default('') String quantity,
    @Default('') String productName,
    @Default('') String total_weight,
    @Default('') String total_amount,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}

