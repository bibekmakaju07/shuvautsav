import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_states/appstate.dart';
import 'package:shuvautsavapp/features/cart/model/checkout_store_model.dart';
import 'package:shuvautsavapp/network/failure.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final deleteAccountProvider = StateNotifierProvider.autoDispose<DeleteAccountController,
    AppState<OrderResponseModel, NetworkFailure>>((ref) {
  return DeleteAccountController();
});

class DeleteAccountController
    extends StateNotifier<AppState<OrderResponseModel, NetworkFailure>> {
  DeleteAccountController() : super(AppState.initial());

  Future<void> deleteAccount() async {
    if (state == AppState.loading(true)) {
      return;
    }
    state = AppState.loading(true);
    try {
      String url =
          'https://shuvautsav.com/api/v1/customer/delete';

      final response = await NetworkService().delete(RequestApi(
        endPath: url,

      ));
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
