import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response_model.freezed.dart';
part 'api_response_model.g.dart';

@freezed
class APIResponseModel with _$APIResponseModel {
  const factory APIResponseModel({
    @Default(-1) int status,
    @Default(ResponseData()) ResponseData data,
  }) = _APIResponseModel;

  factory APIResponseModel.fromJson(Map<String, dynamic> json) =>
      _$APIResponseModelFromJson(json);
}

@freezed
class ResponseData with _$ResponseData {
  const factory ResponseData({
    @Default('') String message,
  }) = _ResponseData;

  factory ResponseData.fromJson(Map<String, dynamic> json) => _$ResponseDataFromJson(json);
}
