import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shuvautsavapp/features/category/model/category_model.dart';

part 'product_filter_data_model.freezed.dart';
part 'product_filter_data_model.g.dart';


@freezed
class SearchDataResponse with _$SearchDataResponse {
  const factory SearchDataResponse({
    @Default(CategoryDataModel())  CategoryDataModel data
  }) = _SearchDataResponse;

  factory SearchDataResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchDataResponseFromJson(json);
}

@freezed
class CategoryDataModel with _$CategoryDataModel {
  const factory CategoryDataModel({
    @Default([]) List<ProductCategory> categories,
    @Default([]) List<ColorOption> colors,
    @Default([]) List<SizeOption> sizes,
  }) = _CategoryDataModel;

  factory CategoryDataModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataModelFromJson(json);
}

@freezed
class ColorOption with _$ColorOption {
  const factory ColorOption({
    @Default(-1) int id,
    @Default('') String title,
  }) = _ColorOption;

  factory ColorOption.fromJson(Map<String, dynamic> json) =>
      _$ColorOptionFromJson(json);
}

@freezed
class SizeOption with _$SizeOption {
  const factory SizeOption({
    @Default(-1) int id,
    @Default('') String title,
  }) = _SizeOption;

  factory SizeOption.fromJson(Map<String, dynamic> json) =>
      _$SizeOptionFromJson(json);
}
