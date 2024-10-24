// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiModelImpl _$$ApiModelImplFromJson(Map<String, dynamic> json) =>
    _$ApiModelImpl(
      status: (json['status'] as num?)?.toInt() ?? -1,
      message: json['message'] as String? ?? '',
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, (e as List<dynamic>).map((e) => e as String).toList()),
          ) ??
          const {},
    );

Map<String, dynamic> _$$ApiModelImplToJson(_$ApiModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'errors': instance.errors,
    };
