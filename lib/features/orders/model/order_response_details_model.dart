import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_response_details_model.freezed.dart';
part 'order_response_details_model.g.dart';

@freezed
class OrderDetailsResponseModel with _$OrderDetailsResponseModel {
  factory OrderDetailsResponseModel({
    @Default(-1) int status,
    @Default(DataModel()) DataModel data,
  }) = _OrderDetailsResponseModel;

  factory OrderDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$OrderDetailsResponseModelFromJson(json);
}

@freezed
class DataModel with _$DataModel {
  const factory DataModel({
    @JsonKey(name: 'order_lists') @Default([]) List<OrderListModel> orderLists,
 OrderDetailsModel? order,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}

@freezed
class OrderListModel with _$OrderListModel {
  factory OrderListModel({
    @Default(-1) int quantity,
    @Default('') String title,
    @Default(-1) int rate,
    @Default('') String total,
  }) = _OrderListModel;

  factory OrderListModel.fromJson(Map<String, dynamic> json) => _$OrderListModelFromJson(json);
}

@freezed
class OrderDetailsModel with _$OrderDetailsModel {
  factory OrderDetailsModel({
    @Default(-1) int id,
    @JsonKey(name: 'shipping_total') @Default('') String shippingTotal,
    @JsonKey(name: 'grand_total') @Default('') String grandTotal,
  }) = _OrderDetailsModel;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) => _$OrderDetailsModelFromJson(json);
}
