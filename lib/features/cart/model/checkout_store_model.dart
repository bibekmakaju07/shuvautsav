import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_store_model.freezed.dart';
part 'checkout_store_model.g.dart';

@freezed
class OrderResponseModel with _$OrderResponseModel {
  const factory OrderResponseModel({
    @Default(0) int status, // Default status as 0
    @Default(OrderResponseData()) OrderResponseData data,
  }) = _OrderResponseModel;

  factory OrderResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseModelFromJson(json);
}

@freezed
class OrderResponseData with _$OrderResponseData {
  const factory OrderResponseData({
    @Default('') String message, // Default message as empty string
  }) = _OrderResponseData;

  factory OrderResponseData.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseDataFromJson(json);
}
