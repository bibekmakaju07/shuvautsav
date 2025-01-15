import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    ProductList? data,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

@freezed
class ProductList with _$ProductList {
  const factory ProductList({
    @Default([]) List<ProductModel> products,
  }) = _ProductList;

  factory ProductList.fromJson(Map<String, dynamic> json) =>
      _$ProductListFromJson(json);
}

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String slug,
    @Default('NPR') String currency,
    @Default(0.0) double price,
    @Default(0.0) double? offer,
    @Default('') String? offerText,
    @Default(0) int qty,
    @Default('') String? code,
    @Default('') String? description,
    @Default('') String image,
    @Default(0) int rank,
    @Default(1) int status,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
