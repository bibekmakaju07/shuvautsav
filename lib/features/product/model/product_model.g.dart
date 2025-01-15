// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseImpl _$$ProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseImpl(
      data: json['data'] == null
          ? null
          : ProductList.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductResponseImplToJson(
        _$ProductResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ProductListImpl _$$ProductListImplFromJson(Map<String, dynamic> json) =>
    _$ProductListImpl(
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProductListImplToJson(_$ProductListImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      currency: json['currency'] as String? ?? 'NPR',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      offer: (json['offer'] as num?)?.toDouble() ?? 0.0,
      offerText: json['offerText'] as String? ?? '',
      qty: (json['qty'] as num?)?.toInt() ?? 0,
      code: json['code'] as String? ?? '',
      description: json['description'] as String? ?? '',
      image: json['image'] as String? ?? '',
      rank: (json['rank'] as num?)?.toInt() ?? 0,
      status: (json['status'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'currency': instance.currency,
      'price': instance.price,
      'offer': instance.offer,
      'offerText': instance.offerText,
      'qty': instance.qty,
      'code': instance.code,
      'description': instance.description,
      'image': instance.image,
      'rank': instance.rank,
      'status': instance.status,
    };
