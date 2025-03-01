// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_filter_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchDataResponseImpl _$$SearchDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchDataResponseImpl(
      data: json['data'] == null
          ? const CategoryDataModel()
          : CategoryDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchDataResponseImplToJson(
        _$SearchDataResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CategoryDataModelImpl _$$CategoryDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryDataModelImpl(
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      colors: (json['colors'] as List<dynamic>?)
              ?.map((e) => ColorOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      sizes: (json['sizes'] as List<dynamic>?)
              ?.map((e) => SizeOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CategoryDataModelImplToJson(
        _$CategoryDataModelImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'colors': instance.colors,
      'sizes': instance.sizes,
    };

_$ColorOptionImpl _$$ColorOptionImplFromJson(Map<String, dynamic> json) =>
    _$ColorOptionImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$$ColorOptionImplToJson(_$ColorOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

_$SizeOptionImpl _$$SizeOptionImplFromJson(Map<String, dynamic> json) =>
    _$SizeOptionImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$$SizeOptionImplToJson(_$SizeOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
