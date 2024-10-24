// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      price: json['price'] as String? ?? '',
      offer: json['offer'] as String? ?? null,
      offerText: json['offerText'] as String? ?? null,
      qty: json['qty'] as String? ?? '',
      code: json['code'] as String? ?? '',
      description: json['description'] as String? ?? '',
      shipping: json['shipping'] as String? ?? null,
      videoUrl: json['videoUrl'] as String? ?? null,
      image: json['image'] as String? ?? '',
      image2: json['image2'] as String? ?? null,
      image3: json['image3'] as String? ?? null,
      image4: json['image4'] as String? ?? null,
      rank: json['rank'] as String? ?? '',
      preferredDateStatus: json['preferredDateStatus'] as String? ?? '0',
      preferredMessageStatus: json['preferredMessageStatus'] as String? ?? '0',
      stitchingStatus: json['stitchingStatus'] as String? ?? '0',
      status: json['status'] as String? ?? '1',
      topTen: json['topTen'] as String? ?? '0',
      weAlsoDeal: json['weAlsoDeal'] as String? ?? '0',
      ourProduct: json['ourProduct'] as String? ?? '0',
      bestSelling: json['bestSelling'] as String? ?? '0',
      featureKey: json['featureKey'] as String? ?? '0',
      metaTitle: json['metaTitle'] as String? ?? null,
      metaKeyword: json['metaKeyword'] as String? ?? null,
      metaDescription: json['metaDescription'] as String? ?? null,
      offerExpire: json['offerExpire'] as String? ?? null,
      vendor: json['vendor'] as String? ?? null,
      createdBy: json['createdBy'] as String? ?? '',
      updatedBy: json['updatedBy'] as String? ?? '',
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      userRole: json['userRole'] as String? ?? '',
      productBrandId: json['productBrandId'] as String? ?? '',
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'price': instance.price,
      'offer': instance.offer,
      'offerText': instance.offerText,
      'qty': instance.qty,
      'code': instance.code,
      'description': instance.description,
      'shipping': instance.shipping,
      'videoUrl': instance.videoUrl,
      'image': instance.image,
      'image2': instance.image2,
      'image3': instance.image3,
      'image4': instance.image4,
      'rank': instance.rank,
      'preferredDateStatus': instance.preferredDateStatus,
      'preferredMessageStatus': instance.preferredMessageStatus,
      'stitchingStatus': instance.stitchingStatus,
      'status': instance.status,
      'topTen': instance.topTen,
      'weAlsoDeal': instance.weAlsoDeal,
      'ourProduct': instance.ourProduct,
      'bestSelling': instance.bestSelling,
      'featureKey': instance.featureKey,
      'metaTitle': instance.metaTitle,
      'metaKeyword': instance.metaKeyword,
      'metaDescription': instance.metaDescription,
      'offerExpire': instance.offerExpire,
      'vendor': instance.vendor,
      'createdBy': instance.createdBy,
      'updatedBy': instance.updatedBy,
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'userRole': instance.userRole,
      'productBrandId': instance.productBrandId,
    };
