// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardProductResponseImpl _$$DashboardProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DashboardProductResponseImpl(
      data: json['data'] == null
          ? const DashboardProductDataModel()
          : DashboardProductDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DashboardProductResponseImplToJson(
        _$DashboardProductResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DashboardProductDataModelImpl _$$DashboardProductDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DashboardProductDataModelImpl(
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      category1: json['category1'] == null
          ? const ProductCategory()
          : ProductCategory.fromJson(json['category1'] as Map<String, dynamic>),
      products1: (json['products1'] as List<dynamic>?)
              ?.map((e) => CategoryProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      category2: json['category2'] == null
          ? const ProductCategory()
          : ProductCategory.fromJson(json['category2'] as Map<String, dynamic>),
      products2: (json['products2'] as List<dynamic>?)
              ?.map((e) => CategoryProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DashboardProductDataModelImplToJson(
        _$DashboardProductDataModelImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'products': instance.products,
      'category1': instance.category1,
      'products1': instance.products1,
      'category2': instance.category2,
      'products2': instance.products2,
    };
