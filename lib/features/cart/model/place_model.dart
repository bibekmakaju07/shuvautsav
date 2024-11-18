import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_model.freezed.dart';
part 'place_model.g.dart';

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    @Default(-1) int status, // Default to -1
    @Default({}) Map<String, String> data, // Default to an empty map
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}
