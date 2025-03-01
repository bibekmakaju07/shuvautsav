// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_child_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubChildCategoriesResponseImpl _$$SubChildCategoriesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SubChildCategoriesResponseImpl(
      data: json['data'] == null
          ? const CategoriesModel()
          : CategoriesModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubChildCategoriesResponseImplToJson(
        _$SubChildCategoriesResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CategoriesModelImpl _$$CategoriesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoriesModelImpl(
      sub_categories: (json['sub_categories'] as List<dynamic>?)
              ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      child_categories: (json['child_categories'] as List<dynamic>?)
              ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CategoriesModelImplToJson(
        _$CategoriesModelImpl instance) =>
    <String, dynamic>{
      'sub_categories': instance.sub_categories,
      'child_categories': instance.child_categories,
    };
