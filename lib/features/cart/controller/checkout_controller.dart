import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_states/appstate.dart';
import 'package:shuvautsavapp/features/cart/model/checkout_success_model.dart';
import 'package:shuvautsavapp/network/failure.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final checkoutProvider = StateNotifierProvider.autoDispose.family<
    CheckoutController,
    AppState<LocationModel, NetworkFailure>,
    String>((ref, id) {
  return CheckoutController();
});

class CheckoutController
    extends StateNotifier<AppState<LocationModel, NetworkFailure>> {
  CheckoutController() : super(AppState.initial());

  Future<void> checkout({required Map<String, dynamic> params}) async {
    if (state == AppState.loading(true)) {
      return;
    }
    state = AppState.loading(true);
    try {
      String url = 'https://shuvautsav.com/api/v1/cart/checkout';

      final response = await NetworkService().post(RequestApi(
        endPath: url,
        bodyParams: params,
      ));
      state = AppState.loading(false);

      if (response is Response) {
        final data = LocationModel.fromJson(response.data);
        state = AppState.success(data,extra: params);
      } else {
        state = AppState.error(
            const NetworkFailure(statusCode: -1, message: 'Error'));
      }
    } catch (e) {
      state = AppState.loading(false);
      state = AppState.error(
          const NetworkFailure(statusCode: -1, message: 'Error'));
    }
  }
}
