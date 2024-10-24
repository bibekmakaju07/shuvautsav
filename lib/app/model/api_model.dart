import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_model.freezed.dart';
part 'api_model.g.dart';

@freezed
class ApiModel with _$ApiModel {
  const factory ApiModel({
    @Default(-1) int status,
    @JsonKey(name: 'message') @Default('') String message,
    @JsonKey(name: 'errors') @Default({}) Map<String ,List<String>> errors,
  }) = _ApiModel;

  factory ApiModel.fromJson(Map<String, dynamic> json) =>
      _$ApiModelFromJson(json);
}
