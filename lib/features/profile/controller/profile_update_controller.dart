import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_states/appstate.dart';
import 'package:shuvautsavapp/features/cart/model/checkout_store_model.dart';
import 'package:shuvautsavapp/network/failure.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final updateProfileController = StateNotifierProvider.autoDispose<
    UpdateProfileController,
    AppState<OrderResponseModel, NetworkFailure>>((ref) {
  return UpdateProfileController();
});

class UpdateProfileController
    extends StateNotifier<AppState<OrderResponseModel, NetworkFailure>> {
  UpdateProfileController() : super(AppState.initial());

  Future<void> updateProfile({required Map<String, dynamic> params}) async {
    if (state == AppState.loading(true)) {
      return;
    }
    state = AppState.loading(true);
    try {
      String url = 'https://shuvautsav.com/api/v1/customer/profile/update';

      final response = await NetworkService()
          .post(RequestApi(endPath: url, bodyParams: params));
      state = AppState.loading(false);

      if (response is Response) {
        final data = OrderResponseModel.fromJson(response.data);
        state = AppState.success(data);
      } else {
        state = AppState.error(
          const NetworkFailure(
            statusCode: -1,
            message: 'Error',
          ),
        );
      }
    } catch (e) {
      state = AppState.loading(false);
      state = AppState.error(
          const NetworkFailure(statusCode: -1, message: 'Error'));
    }
  }
}
