import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_states/appstate.dart';
import 'package:shuvautsavapp/features/profile/model/user_address_data_model.dart';
import 'package:shuvautsavapp/network/failure.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final profileNotifierProvider = StateNotifierProvider.autoDispose<
    ProfileNotifier, AppState<UserAddressDataModel, NetworkFailure>>((ref) {
  return ProfileNotifier();
});

class ProfileNotifier
    extends StateNotifier<AppState<UserAddressDataModel, NetworkFailure>> {
  ProfileNotifier() : super(AppState.initial());

  Future<void> getProfile() async {
    if (state == AppState.loading(true)) {
      return;
    }
    state = AppState.loading(true);
    try {
      String url = 'https://shuvautsav.com/api/v1/customer/profile';

      final response = await NetworkService().get(RequestApi(
        endPath: url,
        // bodyParams: params,
      ));
      state = AppState.loading(false);

      if (response is Response) {
        final data = UserAddressDataModel.fromJson(response.data['data']);
        state = AppState.success(data);
      } else {
        state = AppState.error(
            const NetworkFailure(statusCode: -1, message: 'Error'));
      }
    } catch (e) {
      log('${e}');
      state = AppState.loading(false);
      state = AppState.error(
          const NetworkFailure(statusCode: -1, message: 'Error'));
    }
  }
}
