// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailsModelImpl _$$ProductDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailsModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      offer: json['offer'],
      price: json['price'],
      description: json['description'] as String? ?? '',
      qty: (json['qty'] as num?)?.toInt() ?? 0,
      preferredDateStatus: (json['preferredDateStatus'] as num?)?.toInt() ?? 0,
      preferredMessageStatus:
          (json['preferredMessageStatus'] as num?)?.toInt() ?? 0,
      brand: json['brand'] as String? ?? '',
      categoryCount: (json['categoryCount'] as num?)?.toInt() ?? 0,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => DetailsCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      videoUrl: json['videoUrl'] as String? ?? '',
      shippingPolicy: json['shippingPolicy'] as String? ?? '',
      colorCheck: json['colorCheck'] as String? ?? '',
      limit: (json['limit'] as num?)?.toInt() ?? 0,
      weight: (json['weight'] as num?)?.toDouble(),
      productColorImage: (json['productColorImage'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      image1: json['image1'] as String? ?? '',
      image2: json['image2'] as String? ?? '',
      image3: json['image3'] as String? ?? '',
      image4: json['image4'] as String? ?? '',
      productImages: (json['productImages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProductDetailsModelImplToJson(
        _$ProductDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'offer': instance.offer,
      'price': instance.price,
      'description': instance.description,
      'qty': instance.qty,
      'preferredDateStatus': instance.preferredDateStatus,
      'preferredMessageStatus': instance.preferredMessageStatus,
      'brand': instance.brand,
      'categoryCount': instance.categoryCount,
      'categories': instance.categories,
      'videoUrl': instance.videoUrl,
      'shippingPolicy': instance.shippingPolicy,
      'colorCheck': instance.colorCheck,
      'limit': instance.limit,
      'weight': instance.weight,
      'productColorImage': instance.productColorImage,
      'image1': instance.image1,
      'image2': instance.image2,
      'image3': instance.image3,
      'image4': instance.image4,
      'productImages': instance.productImages,
    };

_$DetailsCategoryImpl _$$DetailsCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailsCategoryImpl(
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$$DetailsCategoryImplToJson(
        _$DetailsCategoryImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
    };

_$RelatedProductImpl _$$RelatedProductImplFromJson(Map<String, dynamic> json) =>
    _$RelatedProductImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      shortTitle: json['shortTitle'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      image: json['image'] as String? ?? '',
      offer: json['offer'],
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$RelatedProductImplToJson(
        _$RelatedProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'shortTitle': instance.shortTitle,
      'slug': instance.slug,
      'image': instance.image,
      'offer': instance.offer,
      'price': instance.price,
    };

_$ApiResponseImpl _$$ApiResponseImplFromJson(Map<String, dynamic> json) =>
    _$ApiResponseImpl(
      product: json['product'] == null
          ? null
          : ProductDetailsModel.fromJson(
              json['product'] as Map<String, dynamic>),
      related_products: (json['related_products'] as List<dynamic>?)
              ?.map((e) => RelatedProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ApiResponseImplToJson(_$ApiResponseImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'related_products': instance.related_products,
    };
