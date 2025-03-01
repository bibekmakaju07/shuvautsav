// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_filter_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilteredDataModelImpl _$$FilteredDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FilteredDataModelImpl(
      keyword: json['keyword'] as String?,
      min: json['min'] as String?,
      max: json['max'] as String?,
      category_id: (json['category_id'] as num?)?.toInt(),
      sub_category_id: (json['sub_category_id'] as num?)?.toInt(),
      child_category_id: (json['child_category_id'] as num?)?.toInt(),
      color_id: (json['color_id'] as num?)?.toInt(),
      size_id: (json['size_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FilteredDataModelImplToJson(
        _$FilteredDataModelImpl instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'min': instance.min,
      'max': instance.max,
      'category_id': instance.category_id,
      'sub_category_id': instance.sub_category_id,
      'child_category_id': instance.child_category_id,
      'color_id': instance.color_id,
      'size_id': instance.size_id,
    };
