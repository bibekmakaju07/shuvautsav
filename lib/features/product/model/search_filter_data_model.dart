import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_filter_data_model.freezed.dart';
part 'search_filter_data_model.g.dart';

@freezed
class FilteredDataModel with _$FilteredDataModel {
  factory FilteredDataModel({
    String? keyword,
    String? min,
    String? max,
    int? category_id,
    int? sub_category_id,
    int? child_category_id,
    int? color_id,
    int? size_id,
  }) = _FilteredDataModel;

  factory FilteredDataModel.fromJson(Map<String, dynamic> json) =>
      _$FilteredDataModelFromJson(json);
}
