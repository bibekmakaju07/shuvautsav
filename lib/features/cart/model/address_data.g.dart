// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressDataModelImpl _$$AddressDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressDataModelImpl(
      status: (json['status'] as num?)?.toInt() ?? -1,
      data: (json['data'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ) ??
          const {},
    );

Map<String, dynamic> _$$AddressDataModelImplToJson(
        _$AddressDataModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
