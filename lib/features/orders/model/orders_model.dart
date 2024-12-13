import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_model.freezed.dart';
part 'orders_model.g.dart';

@freezed
class OrderResponse with _$OrderResponse {
  factory OrderResponse({
    @Default([]) List<Order> data,
  }) = _OrderResponse;

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);
}

@freezed
class Order with _$Order {
  factory Order({
    required int id,
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'order_date') required String orderDate,
    required String total,
    @JsonKey(name: 'status_id') required int statusId,
    required String status,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
