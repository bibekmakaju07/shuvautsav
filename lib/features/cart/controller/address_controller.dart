import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_states/appstate.dart';
import 'package:shuvautsavapp/features/cart/model/address_data.dart';
import 'package:shuvautsavapp/network/failure.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final addressProvider = StateNotifierProvider.autoDispose.family<
    AddressController,
    AppState<AddressDataModel, NetworkFailure>,
    String>((ref, id) {
  return AddressController();
});

class AddressController
    extends StateNotifier<AppState<AddressDataModel, NetworkFailure>> {
  AddressController() : super(AppState.initial());

  Future<void> getAddress({
    required Map<String, dynamic> params,
    required String url,
  }) async {
    state = AppState.loading(true);
    try {
      final response = await NetworkService().post(RequestApi(
        endPath: url,
        queryParams: params,
      ));
      state = AppState.loading(false);

      if (response is Response) {
        final data = AddressDataModel.fromJson(response.data);
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
