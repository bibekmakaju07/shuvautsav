import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_amount_model.freezed.dart';
part 'shipping_amount_model.g.dart';

@freezed
class DeliveryModel with _$DeliveryModel {
  const factory DeliveryModel({
    @Default(-1) int status,
    @Default(DeliveryData()) DeliveryData data,
  }) = _DeliveryModel;

  factory DeliveryModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryModelFromJson(json);
}

@freezed
class DeliveryData with _$DeliveryData {
  const factory DeliveryData({
    @Default(-1) int id,
    @Default('0.00') String initial_price,
    @Default('0.00') String incremental_price,
    @Default(-1) int city_id,
    @Default(-1) int area_id,
    @Default(-1) int delivery_from,
    @Default(-1) int delivery_to,
    @Default('') String created_at,
    @Default('') String updated_at,
  }) = _DeliveryData;

  factory DeliveryData.fromJson(Map<String, dynamic> json) =>
      _$DeliveryDataFromJson(json);
}
