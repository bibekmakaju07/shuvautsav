// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DasboardOrdersDataModelImpl _$$DasboardOrdersDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DasboardOrdersDataModelImpl(
      status: (json['status'] as num?)?.toInt() ?? -1,
      data: json['data'] == null
          ? const UserAddressDataModel()
          : UserAddressDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DasboardOrdersDataModelImplToJson(
        _$DasboardOrdersDataModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$DashboardOrdersDataImpl _$$DashboardOrdersDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DashboardOrdersDataImpl(
      orders: (json['orders'] as num?)?.toInt() ?? 0,
      returns: (json['returns'] as num?)?.toInt() ?? 0,
      wishlists: (json['wishlists'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$DashboardOrdersDataImplToJson(
        _$DashboardOrdersDataImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders,
      'returns': instance.returns,
      'wishlists': instance.wishlists,
    };
