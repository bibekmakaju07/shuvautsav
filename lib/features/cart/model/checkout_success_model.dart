import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_success_model.freezed.dart';
part 'checkout_success_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    @Default(const LocationData()) LocationData data,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}

@freezed
class LocationData with _$LocationData {
  const factory LocationData({
    @Default({}) Map<String, String> provinces,
     @Default({}) Map<String, String> cities,
     @Default({}) Map<String, String> areas,
     @Default([]) List<dynamic> countries,

     @Default([]) List<Cart> carts,
     @Default({}) Map<String, String> districts,
    @JsonKey(name: 'total_weight')  double? totalWeight,
    @JsonKey(name: 'total_amount')  int? totalAmount,
    @JsonKey(name: 'shipping_charge')  int? shippingCharge,
  }) = _LocationData;

  factory LocationData.fromJson(Map<String, dynamic> json) =>
      _$LocationDataFromJson(json);
}

@freezed
class Cart with _$Cart {
  const factory Cart({
    required int id,
    required int quantity,
    @JsonKey(name: 'total_weight') required double totalWeight,
    @JsonKey(name: 'total_amount') required int totalAmount,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}
