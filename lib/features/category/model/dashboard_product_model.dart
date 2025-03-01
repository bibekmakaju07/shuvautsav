import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shuvautsavapp/features/category/model/category_model.dart';
import 'package:shuvautsavapp/features/product/model/category_product_model.dart';
import 'package:shuvautsavapp/features/product/model/product_model.dart';

part 'dashboard_product_model.freezed.dart';
part 'dashboard_product_model.g.dart';

@freezed
class DashboardProductResponse with _$DashboardProductResponse {
  const factory DashboardProductResponse({
    @Default(DashboardProductDataModel()) DashboardProductDataModel data,
  }) = _DashboardProductResponse;

  factory DashboardProductResponse.fromJson(Map<String, dynamic> json) =>
      _$DashboardProductResponseFromJson(json);
}

@freezed
class DashboardProductDataModel with _$DashboardProductDataModel {
  const factory DashboardProductDataModel({
    @Default([]) List<ProductCategory> categories,
    @Default([]) List<ProductModel> products,
    @Default(ProductCategory()) ProductCategory category1,
    @Default([]) List<CategoryProduct> products1,
    @Default(ProductCategory()) ProductCategory category2,
    @Default([]) List<CategoryProduct> products2,
  }) = _DashboardProductDataModel;

  factory DashboardProductDataModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardProductDataModelFromJson(json);
}
