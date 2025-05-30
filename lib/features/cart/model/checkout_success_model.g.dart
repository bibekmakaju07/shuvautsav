// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_success_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      data: json['data'] == null
          ? const LocationData()
          : LocationData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$LocationDataImpl _$$LocationDataImplFromJson(Map<String, dynamic> json) =>
    _$LocationDataImpl(
      provinces: (json['provinces'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ) ??
          const {},
      cities: (json['cities'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ) ??
          const {},
      areas: (json['areas'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ) ??
          const {},
      wards: (json['wards'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      iaddress: json['iaddress'],
      carts: (json['carts'] as List<dynamic>?)
              ?.map((e) => Cart.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalWeight: (json['total_weight'] as num?)?.toDouble() ?? 0.0,
      totalAmount: (json['total_amount'] as num?)?.toInt() ?? -1,
      shippingCharge: (json['shipping_charge'] as num?)?.toDouble() ?? 0.0,
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocationDataImplToJson(_$LocationDataImpl instance) =>
    <String, dynamic>{
      'provinces': instance.provinces,
      'cities': instance.cities,
      'areas': instance.areas,
      'wards': instance.wards,
      'iaddress': instance.iaddress,
      'carts': instance.carts,
      'total_weight': instance.totalWeight,
      'total_amount': instance.totalAmount,
      'shipping_charge': instance.shippingCharge,
      'customer': instance.customer,
    };

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
      totalWeight: (json['total_weight'] as num?)?.toDouble() ?? 0.0,
      totalAmount: (json['total_amount'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'total_weight': instance.totalWeight,
      'total_amount': instance.totalAmount,
    };

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      provinceId: (json['province_id'] as num?)?.toInt() ?? -1,
      cityId: (json['city_id'] as num?)?.toInt() ?? -1,
      areaId: (json['area_id'] as num?)?.toInt() ?? -1,
      street: json['street'] as String?,
      i_state: json['i_state'] as String?,
      i_suburb: json['i_suburb'] as String?,
      i_postcode: json['i_postcode'] as String?,
      i_street: json['i_street'] as String?,
      international_address_id: json['international_address_id'],
      countryId: (json['country_id'] as num?)?.toInt() ?? -1,
      addressId: (json['address_id'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'province_id': instance.provinceId,
      'city_id': instance.cityId,
      'area_id': instance.areaId,
      'street': instance.street,
      'i_state': instance.i_state,
      'i_suburb': instance.i_suburb,
      'i_postcode': instance.i_postcode,
      'i_street': instance.i_street,
      'international_address_id': instance.international_address_id,
      'country_id': instance.countryId,
      'address_id': instance.addressId,
    };
