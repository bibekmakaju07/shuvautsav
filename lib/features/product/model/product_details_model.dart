import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_model.freezed.dart';
part 'product_details_model.g.dart';

@freezed
class ProductDetailsModel with _$ProductDetailsModel {
  const factory ProductDetailsModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('NPR') String currency,
    dynamic offer,
    dynamic price,
    @Default('') String description,
    @Default(0) int qty,
    @Default(0) int preferredDateStatus,
    @Default(0) int preferredMessageStatus,
    @Default('') String brand,
    @Default(0) int categoryCount,
    @Default([]) List<DetailsCategory> categories,
    @Default('') String videoUrl,
    
    @Default('') @JsonKey(name: 'shipping_policy') String shippingPolicy,
     @JsonKey(name: 'product_specification')
    @Default([]) List<ProductSpecification> productSpecification,

    @Default('') String colorCheck,
    @Default(0) int limit,
    @Default('') String weight,
    @Default([]) List<String> productColorImage,
    @Default('') String image1,
    @Default('') String image2,
    @Default('') String image3,
    @Default('') String image4,
    @Default([]) List<String> productImages,
  }) = _ProductDetailsModel;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);
}

@freezed
class DetailsCategory with _$DetailsCategory {
  const factory DetailsCategory({
    @Default('') String title,
  }) = _DetailsCategory;

  factory DetailsCategory.fromJson(Map<String, dynamic> json) =>
      _$DetailsCategoryFromJson(json);
}

@freezed
class RelatedProduct with _$RelatedProduct {
  const factory RelatedProduct({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String shortTitle,
    @Default('') String slug,
    @Default('NPR') String currency,
    @Default('') String image,
    dynamic offer,
    @Default(0.0) double price,
  }) = _RelatedProduct;

  factory RelatedProduct.fromJson(Map<String, dynamic> json) =>
      _$RelatedProductFromJson(json);
}

@freezed
class ApiResponse with _$ApiResponse {
  const factory ApiResponse({
    ProductDetailsModel? product,
    @Default([]) List<RelatedProduct> related_products,
    @Default('') String user_email,
    @JsonKey(name:'review_exists') bool? reviewExists,
    @JsonKey(name: "all_reviews") @Default([]) List<ReviewData> allReviews,

    // Default to an empty list
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}



@freezed
class ProductSpecification with _$ProductSpecification {
  const factory ProductSpecification({
    @Default(-1) int id,
    @Default(-1)@JsonKey(name: 'product_id')  int productId,
    @Default('')@JsonKey(name: 'specification_title')  String specificationTitle,
      @Default('') @JsonKey(name: 'specification_value')  String specificationValue,
    @JsonKey(name: 'deleted_at')  String? deletedAt,
    @JsonKey(name: 'created_at')  @Default('')  String createdAt,
     @JsonKey(name: 'updated_at')  @Default('')  String updatedAt,
  }) = _ProductSpecification;

  factory ProductSpecification.fromJson(Map<String, dynamic> json) =>
      _$ProductSpecificationFromJson(json);
}


@freezed
class ReviewData with _$ReviewData {
  const factory ReviewData({
    @Default(-1) int id,
    @JsonKey(name: "product_id") @Default(-1) int productId,
    @Default('') String name,
    @Default('') String email,
    @Default('') String phone,
    @Default('') String rating,
    @Default('') String review,
    @Default(0) int status,
    @JsonKey(name: "review_date") @Default('') String reviewDate,
    @JsonKey(name: "deleted_at") String? deletedAt,
    @JsonKey(name: "created_at") @Default('') String createdAt,
    @JsonKey(name: "updated_at") @Default('') String updatedAt,
  }) = _ReviewData;

  factory ReviewData.fromJson(Map<String, dynamic> json) =>
      _$ReviewDataFromJson(json);
}


