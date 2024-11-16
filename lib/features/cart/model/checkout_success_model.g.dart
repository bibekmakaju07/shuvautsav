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
      countries: json['countries'] as List<dynamic>? ?? const [],
      carts: (json['carts'] as List<dynamic>?)
              ?.map((e) => Cart.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      districts: (json['districts'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      totalWeight: (json['total_weight'] as num?)?.toDouble(),
      totalAmount: (json['total_amount'] as num?)?.toInt(),
      shippingCharge: (json['shipping_charge'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LocationDataImplToJson(_$LocationDataImpl instance) =>
    <String, dynamic>{
      'provinces': instance.provinces,
      'cities': instance.cities,
      'areas': instance.areas,
      'countries': instance.countries,
      'carts': instance.carts,
      'districts': instance.districts,
      'total_weight': instance.totalWeight,
      'total_amount': instance.totalAmount,
      'shipping_charge': instance.shippingCharge,
    };

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
      id: (json['id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      totalWeight: (json['total_weight'] as num).toDouble(),
      totalAmount: (json['total_amount'] as num).toInt(),
    );

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'total_weight': instance.totalWeight,
      'total_amount': instance.totalAmount,
    };
