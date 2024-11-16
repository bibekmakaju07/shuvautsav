import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_model.freezed.dart';
part 'product_details_model.g.dart';

@freezed
class ProductDetailsModel with _$ProductDetailsModel {
  const factory ProductDetailsModel({
    @Default(0) int id,
    @Default('') String title,
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
    @Default('') String shippingPolicy,
    @Default('') String colorCheck,
    @Default(0) int limit,
    double ? weight,
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
    // Default to an empty list
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}
