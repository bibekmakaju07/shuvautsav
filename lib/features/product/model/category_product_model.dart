import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_product_model.freezed.dart';
part 'category_product_model.g.dart';

@freezed
class CategoryProductResponse with _$CategoryProductResponse {
  const factory CategoryProductResponse({
    @Default(ProductResponseData()) ProductResponseData data,
  }) = _CategoryProductResponse;

  factory CategoryProductResponse.fromJson(Map<String, dynamic> json) => _$CategoryProductResponseFromJson(json);
}

@freezed
class ProductResponseData with _$ProductResponseData {
  const factory ProductResponseData({
    @Default(ProductSubCategory())ProductSubCategory sub_category,
    @Default([]) List<CategoryProduct> products,
        @Default([]) List<ChildProductCategory> child_categories,
    @Default([]) List<ChildProductCategory> sub_categories,
    @Default([]) List<ProductSize> sizes,
    @Default([]) List<CategoryColorModel> colors,
  }) = _ProductResponseData;

  factory ProductResponseData.fromJson(Map<String, dynamic> json) => _$ProductResponseDataFromJson(json);
}

@freezed
class ProductSubCategory with _$ProductSubCategory {
  const factory ProductSubCategory({
    @Default(-1) int id,
    @Default('') String title,
    @Default('') String slug,
  }) = _ProductSubCategory;

  factory ProductSubCategory.fromJson(Map<String, dynamic> json) => _$ProductSubCategoryFromJson(json);
}

@freezed
class CategoryProduct with _$CategoryProduct {
  const factory CategoryProduct({
    @Default(-1) int id,
    @Default('') String title,
    @Default('NPR') String currency,
    @Default('') String slug,
    @Default(0) double price,
    @JsonKey(name: 'offer') int? offer,
    @JsonKey(name: 'offer_text') String? offer_text,
    @Default(0) int qty,
        double ? weight,
    @Default('') String code,
    @Default('') String description,
    @Default('') String image,
    @Default(-1) int rank,
    @Default(0) int status,
  }) = _CategoryProduct;

  factory CategoryProduct.fromJson(Map<String, dynamic> json) => _$CategoryProductFromJson(json);
}

@freezed
class ChildProductCategory with _$ChildProductCategory {
  const factory ChildProductCategory({
    @Default(-1) int id,
    @Default('') String title,
    @Default('') String short_title,
    @Default('') String slug,
    @Default('') String image,
  }) = _ChildProductCategory;

  factory ChildProductCategory.fromJson(Map<String, dynamic> json) => _$ChildProductCategoryFromJson(json);
}

@freezed
class ProductSize with _$ProductSize {
  const factory ProductSize({
    @Default(-1) int id,
    @Default('') String title,
  }) = _ProductSize;

  factory ProductSize.fromJson(Map<String, dynamic> json) => _$ProductSizeFromJson(json);
}

@freezed
class CategoryColorModel with _$CategoryColorModel {
  const factory CategoryColorModel({
    @Default(-1) int id,
    @Default('') String title,
    @Default('') String code,
  }) = _CategoryColorModel;

  factory CategoryColorModel.fromJson(Map<String, dynamic> json) => _$CategoryColorModelFromJson(json);
}
