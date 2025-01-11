import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'order_status_model.freezed.dart';
part 'order_status_model.g.dart';

@freezed
class OrderStatusColor with _$OrderStatusColor {
  const factory OrderStatusColor({
    @Default(-1) int id,
    @Default('') String status,
    @ColorConverter() required Color color,
  }) = _OrderStatusColor;

  factory OrderStatusColor.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusColorFromJson(json);
}

class ColorConverter implements JsonConverter<Color, String> {
  const ColorConverter();

  @override
  Color fromJson(String json) {
    return Color(int.parse(json, radix: 16));
  }

  @override
  String toJson(Color color) {
    return color.value.toRadixString(16).padLeft(8, '0');
  }
}
