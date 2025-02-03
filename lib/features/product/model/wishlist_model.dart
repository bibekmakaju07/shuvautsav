import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishlist_model.freezed.dart';
part 'wishlist_model.g.dart';

@freezed
class WishListResponse with _$WishListResponse {
  const factory WishListResponse({
    @Default(0) int status,
    @Default([]) List<WishListData> data,
  }) = _WishListResponse;

  factory WishListResponse.fromJson(Map<String, dynamic> json) =>
      _$WishListResponseFromJson(json);
}

@freezed
class WishListData with _$WishListData {
  const factory WishListData({
    @Default(-1) int id,
    @Default('') String image,
    @Default('') String title,
    @Default(0) int rate,
    @Default('') String slug,
  }) = _WishListData;

  factory WishListData.fromJson(Map<String, dynamic> json) =>
      _$WishListDataFromJson(json);
}
