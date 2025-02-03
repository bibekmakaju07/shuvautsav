import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_states/appstate.dart';
import 'package:shuvautsavapp/features/cart/model/checkout_store_model.dart';
import 'package:shuvautsavapp/network/failure.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final storeReviewProvider = StateNotifierProvider.autoDispose<
    StoreReviewController, AppState<OrderResponseModel, NetworkFailure>>((ref) {
  return StoreReviewController();
});

class StoreReviewController
    extends StateNotifier<AppState<OrderResponseModel, NetworkFailure>> {
  StoreReviewController() : super(AppState.initial());

  Future<void> storeReview({required Map<String, String> params,required String slug}) async {
    if (state == AppState.loading(true)) {
      return;
    }
    state = AppState.loading(true);
    try {
      String url = 'https://shuvautsav.com/api/v1/customer/product/$slug/review';

      final response = await NetworkService()
          .post(RequestApi(endPath: url, queryParams: params));
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
