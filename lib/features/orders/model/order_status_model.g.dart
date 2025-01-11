// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderStatusColorImpl _$$OrderStatusColorImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderStatusColorImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      status: json['status'] as String? ?? '',
      color: const ColorConverter().fromJson(json['color'] as String),
    );

Map<String, dynamic> _$$OrderStatusColorImplToJson(
        _$OrderStatusColorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'color': const ColorConverter().toJson(instance.color),
    };
