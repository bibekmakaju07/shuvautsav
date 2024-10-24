import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String slug,
    @Default('') String price,
    @Default(null) String? offer,
    @Default(null) String? offerText,
    @Default('') String qty,
    @Default('') String code,
    @Default('') String description,
    @Default(null) String? shipping,
    @Default(null) String? videoUrl,
    @Default('') String image,
    @Default(null) String? image2,
    @Default(null) String? image3,
    @Default(null) String? image4,
    @Default('') String rank,
    @Default('0') String preferredDateStatus,
    @Default('0') String preferredMessageStatus,
    @Default('0') String stitchingStatus,
    @Default('1') String status,
    @Default('0') String topTen,
    @Default('0') String weAlsoDeal,
    @Default('0') String ourProduct,
    @Default('0') String bestSelling,
    @Default('0') String featureKey,
    @Default(null) String? metaTitle,
    @Default(null) String? metaKeyword,
    @Default(null) String? metaDescription,
    @Default(null) String? offerExpire,
    @Default(null) String? vendor,
    @Default('') String createdBy,
    @Default('') String updatedBy,
    @Default(null) DateTime? deletedAt,
    @Default(null) DateTime? createdAt,
    @Default(null) DateTime? updatedAt,
    @Default('') String userRole,
    @Default('') String productBrandId,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
