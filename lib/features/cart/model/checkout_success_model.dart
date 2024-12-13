import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_success_model.freezed.dart';
part 'checkout_success_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    @Default(LocationData()) LocationData data,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}

@freezed
class LocationData with _$LocationData {
  const factory LocationData({
    @Default({}) Map<String, String?> provinces,
    @Default({}) Map<String, String?> cities,
    @Default({}) Map<String, String?> areas,
    // @Default({}) Map<String, String?> countries,
    @Default([]) List<int> wards,
    dynamic iaddress,
    @Default([]) List<Cart> carts,
    @JsonKey(name: 'total_weight') @Default(0.0) double totalWeight,
    @JsonKey(name: 'total_amount') @Default(-1) int totalAmount,
    @JsonKey(name: 'shipping_charge') @Default(0.0) double shippingCharge,
    Customer? customer,
  }) = _LocationData;

  factory LocationData.fromJson(Map<String, dynamic> json) =>
      _$LocationDataFromJson(json);
}

@freezed
class Cart with _$Cart {
  const factory Cart({
    @Default(0) int id,
    @Default(0) int quantity,
    @JsonKey(name: 'total_weight') @Default(0.0) double totalWeight,
    @JsonKey(name: 'total_amount') @Default(0.0) double totalAmount,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}

@freezed
class Customer with _$Customer {
  const factory Customer({
    @Default(-1) int id,
    @Default('') String name,
    @Default('') String email,
    @Default('') String phone,
    @JsonKey(name: 'province_id') @Default(-1) int provinceId,
    @JsonKey(name: 'city_id') @Default(-1) int cityId,
    @JsonKey(name: 'area_id') @Default(-1) int areaId,
    String? street,
    String? i_state,
    String? i_suburb,
    String? i_postcode,
    String? i_street,
    dynamic international_address_id,
    @JsonKey(name: 'country_id') @Default(-1) int countryId,
@JsonKey(name: 'address_id') @Default(-1) int addressId,

  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}
