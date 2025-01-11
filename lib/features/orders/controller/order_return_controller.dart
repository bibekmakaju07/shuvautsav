import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_states/appstate.dart';
import 'package:shuvautsavapp/features/cart/model/checkout_store_model.dart';
import 'package:shuvautsavapp/network/failure.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final returnOrderController = StateNotifierProvider.autoDispose<
    ReturnOrderController,
    AppState<OrderResponseModel, NetworkFailure>
  >((ref) {
  return ReturnOrderController();
});

class ReturnOrderController
    extends StateNotifier<AppState<OrderResponseModel, NetworkFailure>> {
  ReturnOrderController() : super(AppState.initial());

  Future<void> requestReturn({required int orderId}) async {
    if (state == AppState.loading(true)) {
      return;
    }
    state = AppState.loading(true);
    try {
      String url = 'https://shuvautsav.com/api/v1/customer/order/$orderId/return';

      final response = await NetworkService().get(RequestApi(
        endPath: url,
      ));
      state = AppState.loading(false);

      if (response is Response) {
        final data = OrderResponseModel.fromJson(response.data);
        state = AppState.success(data);
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


Future<void> cancelReturnOrder({required int orderId}) async {
    if (state == AppState.loading(true)) {
      return;
    }
    state = AppState.loading(true);
    try {
      String url = 'https://shuvautsav.com/api/v1/customer/order/$orderId/cancel-return';

      final response = await NetworkService().get(RequestApi(
        endPath: url,
      ));
      state = AppState.loading(false);

      if (response is Response) {
        final data = OrderResponseModel.fromJson(response.data);
        state = AppState.success(data);
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
