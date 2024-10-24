// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$APIResponseModelImpl _$$APIResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$APIResponseModelImpl(
      status: (json['status'] as num?)?.toInt() ?? -1,
      data: json['data'] == null
          ? const ResponseData()
          : ResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$APIResponseModelImplToJson(
        _$APIResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$ResponseDataImpl _$$ResponseDataImplFromJson(Map<String, dynamic> json) =>
    _$ResponseDataImpl(
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$ResponseDataImplToJson(_$ResponseDataImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
