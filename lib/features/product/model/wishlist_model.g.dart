// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishListResponseImpl _$$WishListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WishListResponseImpl(
      status: (json['status'] as num?)?.toInt() ?? 0,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => WishListData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$WishListResponseImplToJson(
        _$WishListResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$WishListDataImpl _$$WishListDataImplFromJson(Map<String, dynamic> json) =>
    _$WishListDataImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      image: json['image'] as String? ?? '',
      title: json['title'] as String? ?? '',
      rate: (json['rate'] as num?)?.toInt() ?? 0,
      slug: json['slug'] as String? ?? '',
    );

Map<String, dynamic> _$$WishListDataImplToJson(_$WishListDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'title': instance.title,
      'rate': instance.rate,
      'slug': instance.slug,
    };
