import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shuvautsavapp/features/profile/model/user_address_data_model.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
class DasboardOrdersDataModel with _$DasboardOrdersDataModel {
  const factory DasboardOrdersDataModel({
    @Default(-1) int status,
    @Default(UserAddressDataModel()) UserAddressDataModel data,
    
    
  }) = _DasboardOrdersDataModel;

  factory DasboardOrdersDataModel.fromJson(Map<String, dynamic> json) =>
      _$DasboardOrdersDataModelFromJson(json);
}

@freezed
class DashboardOrdersData with _$DashboardOrdersData {
  const factory DashboardOrdersData({
    @Default(0) int orders,
    @Default(0) int returns,
    @Default(0) int wishlists,
  }) = _DashboardOrdersData;

  factory DashboardOrdersData.fromJson(Map<String, dynamic> json) =>
      _$DashboardOrdersDataFromJson(json);
}
