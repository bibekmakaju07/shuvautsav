// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_amount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryModelImpl _$$DeliveryModelImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryModelImpl(
      status: (json['status'] as num?)?.toInt() ?? -1,
      data: json['data'] == null
          ? const DeliveryData()
          : DeliveryData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeliveryModelImplToJson(_$DeliveryModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$DeliveryDataImpl _$$DeliveryDataImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryDataImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      initial_price: json['initial_price'] as String? ?? '0.00',
      incremental_price: json['incremental_price'] as String? ?? '0.00',
      city_id: (json['city_id'] as num?)?.toInt() ?? -1,
      area_id: (json['area_id'] as num?)?.toInt() ?? -1,
      delivery_from: (json['delivery_from'] as num?)?.toInt() ?? -1,
      delivery_to: (json['delivery_to'] as num?)?.toInt() ?? -1,
      created_at: json['created_at'] as String? ?? '',
      updated_at: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$$DeliveryDataImplToJson(_$DeliveryDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'initial_price': instance.initial_price,
      'incremental_price': instance.incremental_price,
      'city_id': instance.city_id,
      'area_id': instance.area_id,
      'delivery_from': instance.delivery_from,
      'delivery_to': instance.delivery_to,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
