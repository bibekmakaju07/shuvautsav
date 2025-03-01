import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shuvautsavapp/features/category/model/category_model.dart';
import 'package:shuvautsavapp/features/product/model/category_product_model.dart';
import 'package:shuvautsavapp/features/product/model/product_model.dart';

part 'sub_child_categories_model.freezed.dart';
part 'sub_child_categories_model.g.dart';

@freezed
class SubChildCategoriesResponse with _$SubChildCategoriesResponse {
  const factory SubChildCategoriesResponse({
    @Default(CategoriesModel()) CategoriesModel data,
  }) = _SubChildCategoriesResponse;

  factory SubChildCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$SubChildCategoriesResponseFromJson(json);
}

@freezed
class CategoriesModel with _$CategoriesModel {
  const factory CategoriesModel({
    @Default([]) List<ProductCategory> sub_categories,
      @Default([]) List<ProductCategory> child_categories,
  }) = _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);
}
