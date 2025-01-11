// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDetailsResponseModelImpl _$$OrderDetailsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailsResponseModelImpl(
      status: (json['status'] as num?)?.toInt() ?? -1,
      data: json['data'] == null
          ? const DataModel()
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderDetailsResponseModelImplToJson(
        _$OrderDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      orderLists: (json['order_lists'] as List<dynamic>?)
              ?.map((e) => OrderListModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      order: json['order'] == null
          ? null
          : OrderDetailsModel.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'order_lists': instance.orderLists,
      'order': instance.order,
    };

_$OrderListModelImpl _$$OrderListModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderListModelImpl(
      quantity: (json['quantity'] as num?)?.toInt() ?? -1,
      title: json['title'] as String? ?? '',
      rate: (json['rate'] as num?)?.toInt() ?? -1,
      total: json['total'] as String? ?? '',
    );

Map<String, dynamic> _$$OrderListModelImplToJson(
        _$OrderListModelImpl instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'title': instance.title,
      'rate': instance.rate,
      'total': instance.total,
    };

_$OrderDetailsModelImpl _$$OrderDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailsModelImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      shippingTotal: json['shipping_total'] as String? ?? '',
      grandTotal: json['grand_total'] as String? ?? '',
    );

Map<String, dynamic> _$$OrderDetailsModelImplToJson(
        _$OrderDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shipping_total': instance.shippingTotal,
      'grand_total': instance.grandTotal,
    };
