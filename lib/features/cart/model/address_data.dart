import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_data.freezed.dart';
part 'address_data.g.dart';

@freezed
class AddressDataModel with _$AddressDataModel {
  const factory AddressDataModel({
    @Default(-1) int status,
    @Default({}) Map<String, String?> data,
  }) = _AddressDataModel;

  factory AddressDataModel.fromJson(Map<String, dynamic> json) =>
      _$AddressDataModelFromJson(json);
}