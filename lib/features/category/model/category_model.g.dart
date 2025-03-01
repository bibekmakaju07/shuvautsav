// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryResponseImpl _$$CategoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryResponseImpl(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryResponseImplToJson(
        _$CategoryResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

_$ProductCategoryImpl _$$ProductCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductCategoryImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      subtitle: json['subtitle'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      code: json['code'] as String? ?? '',
      description: json['description'] as String? ?? '',
      image: json['image'] as String? ?? '',
      rank: (json['rank'] as num?)?.toInt() ?? 0,
      status: (json['status'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ProductCategoryImplToJson(
        _$ProductCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'slug': instance.slug,
      'code': instance.code,
      'description': instance.description,
      'image': instance.image,
      'rank': instance.rank,
      'status': instance.status,
    };
