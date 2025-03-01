import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryResponse with _$CategoryResponse {
  const factory CategoryResponse({
    required Data data,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @Default([]) List<ProductCategory> categories,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class ProductCategory with _$ProductCategory {
  const factory ProductCategory({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String subtitle,
    @Default('') String slug,
    @Default('') String code,
    @Default('') String description,
    @Default('') String image,
    @Default(0) int rank,
    @Default(0) int status,
  }) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);
}
