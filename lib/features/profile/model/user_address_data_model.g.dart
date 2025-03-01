// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAddressDataModelImpl _$$UserAddressDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserAddressDataModelImpl(
      user: json['user'] == null
          ? const User()
          : User.fromJson(json['user'] as Map<String, dynamic>),
      provinces: (json['provinces'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      cities: (json['cities'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      areas: (json['areas'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      wards: (json['wards'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      countries: (json['countries'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      orders: (json['orders'] as num?)?.toInt() ?? 0,
      returns: (json['returns'] as num?)?.toInt() ?? 0,
      wishlists: (json['wishlists'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UserAddressDataModelImplToJson(
        _$UserAddressDataModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'provinces': instance.provinces,
      'cities': instance.cities,
      'areas': instance.areas,
      'wards': instance.wards,
      'countries': instance.countries,
      'orders': instance.orders,
      'returns': instance.returns,
      'wishlists': instance.wishlists,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      addressId: (json['address_id'] as num?)?.toInt(),
      internationalAddressId:
          (json['international_address_id'] as num?)?.toInt(),
      countryId: (json['country_id'] as num?)?.toInt(),
      cityId: (json['city_id'] as num?)?.toInt(),
      areaId: (json['area_id'] as num?)?.toInt(),
      wardNo: json['ward_no'] as String?,
      provinceId: (json['province_id'] as num?)?.toInt(),
      street: json['street'] as String? ?? '',
      iState: json['i_state'] as String?,
      iSuburb: json['i_suburb'] as String?,
      iPostcode: json['i_postcode'] as String?,
      iStreet: json['i_street'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'address_id': instance.addressId,
      'international_address_id': instance.internationalAddressId,
      'country_id': instance.countryId,
      'city_id': instance.cityId,
      'area_id': instance.areaId,
      'ward_no': instance.wardNo,
      'province_id': instance.provinceId,
      'street': instance.street,
      'i_state': instance.iState,
      'i_suburb': instance.iSuburb,
      'i_postcode': instance.iPostcode,
      'i_street': instance.iStreet,
    };
