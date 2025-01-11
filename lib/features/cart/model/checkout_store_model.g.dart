// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_store_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderResponseModelImpl _$$OrderResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderResponseModelImpl(
      status: (json['status'] as num?)?.toInt() ?? 0,
      data: json['data'] == null
          ? const OrderResponseData()
          : OrderResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderResponseModelImplToJson(
        _$OrderResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$OrderResponseDataImpl _$$OrderResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderResponseDataImpl(
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$OrderResponseDataImplToJson(
        _$OrderResponseDataImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
