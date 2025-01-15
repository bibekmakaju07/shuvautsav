// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryProductResponseImpl _$$CategoryProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryProductResponseImpl(
      data: json['data'] == null
          ? const ProductResponseData()
          : ProductResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryProductResponseImplToJson(
        _$CategoryProductResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ProductResponseDataImpl _$$ProductResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseDataImpl(
      sub_category: json['sub_category'] == null
          ? const ProductSubCategory()
          : ProductSubCategory.fromJson(
              json['sub_category'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => CategoryProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      child_categories: (json['child_categories'] as List<dynamic>?)
              ?.map((e) =>
                  ChildProductCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      sub_categories: (json['sub_categories'] as List<dynamic>?)
              ?.map((e) =>
                  ChildProductCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      sizes: (json['sizes'] as List<dynamic>?)
              ?.map((e) => ProductSize.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      colors: (json['colors'] as List<dynamic>?)
              ?.map(
                  (e) => CategoryColorModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProductResponseDataImplToJson(
        _$ProductResponseDataImpl instance) =>
    <String, dynamic>{
      'sub_category': instance.sub_category,
      'products': instance.products,
      'child_categories': instance.child_categories,
      'sub_categories': instance.sub_categories,
      'sizes': instance.sizes,
      'colors': instance.colors,
    };

_$ProductSubCategoryImpl _$$ProductSubCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductSubCategoryImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      title: json['title'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
    );

Map<String, dynamic> _$$ProductSubCategoryImplToJson(
        _$ProductSubCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
    };

_$CategoryProductImpl _$$CategoryProductImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryProductImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      title: json['title'] as String? ?? '',
      currency: json['currency'] as String? ?? 'NPR',
      slug: json['slug'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0,
      offer: (json['offer'] as num?)?.toInt(),
      offer_text: json['offer_text'] as String?,
      qty: (json['qty'] as num?)?.toInt() ?? 0,
      weight: (json['weight'] as num?)?.toDouble(),
      code: json['code'] as String? ?? '',
      description: json['description'] as String? ?? '',
      image: json['image'] as String? ?? '',
      rank: (json['rank'] as num?)?.toInt() ?? -1,
      status: (json['status'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CategoryProductImplToJson(
        _$CategoryProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'currency': instance.currency,
      'slug': instance.slug,
      'price': instance.price,
      'offer': instance.offer,
      'offer_text': instance.offer_text,
      'qty': instance.qty,
      'weight': instance.weight,
      'code': instance.code,
      'description': instance.description,
      'image': instance.image,
      'rank': instance.rank,
      'status': instance.status,
    };

_$ChildProductCategoryImpl _$$ChildProductCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ChildProductCategoryImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      title: json['title'] as String? ?? '',
      short_title: json['short_title'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      image: json['image'] as String? ?? '',
    );

Map<String, dynamic> _$$ChildProductCategoryImplToJson(
        _$ChildProductCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'short_title': instance.short_title,
      'slug': instance.slug,
      'image': instance.image,
    };

_$ProductSizeImpl _$$ProductSizeImplFromJson(Map<String, dynamic> json) =>
    _$ProductSizeImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$$ProductSizeImplToJson(_$ProductSizeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

_$CategoryColorModelImpl _$$CategoryColorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryColorModelImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      title: json['title'] as String? ?? '',
      code: json['code'] as String? ?? '',
    );

Map<String, dynamic> _$$CategoryColorModelImplToJson(
        _$CategoryColorModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'code': instance.code,
    };
