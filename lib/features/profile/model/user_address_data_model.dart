import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_address_data_model.freezed.dart';
part 'user_address_data_model.g.dart';

@freezed
class UserAddressDataModel with _$UserAddressDataModel {
  const factory UserAddressDataModel({
    @Default(User()) User user,
    @Default({}) Map<String, String> provinces,
    @Default({}) Map<String, String> cities,
    @Default({}) Map<String, String> areas,
    @Default([]) List<int> wards,
    @Default({}) Map<String, String> countries,
       @Default(0) int orders,
    @Default(0) int returns,
    @Default(0) int wishlists,
  }) = _UserAddressDataModel;

  factory UserAddressDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserAddressDataModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @Default(-1) int id,
     String? name,
     String ?email,
     String? phone,
    @JsonKey(name: 'address_id') int? addressId,
    @JsonKey(name: 'international_address_id') int? internationalAddressId,
    @JsonKey(name: 'country_id') int? countryId,
    @JsonKey(name: 'city_id') int? cityId,
    @JsonKey(name: 'area_id') int? areaId,
    @JsonKey(name: 'ward_no') String? wardNo,
    @JsonKey(name: 'province_id') int? provinceId,
    @Default('') String street,
    @JsonKey(name: 'i_state') String? iState,
    @JsonKey(name: 'i_suburb') String? iSuburb,
    @JsonKey(name: 'i_postcode') String? iPostcode,
    @JsonKey(name: 'i_street') String? iStreet,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
