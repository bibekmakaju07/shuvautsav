import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_states/appstate.dart';
import 'package:shuvautsavapp/features/profile/model/dashboard_model.dart';
import 'package:shuvautsavapp/features/profile/model/user_address_data_model.dart';
import 'package:shuvautsavapp/network/failure.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final profileNotifierProvider = StateNotifierProvider.autoDispose<
    ProfileNotifier, AppState<(
          UserAddressDataModel userAddressData,
          DasboardOrdersDataModel dashboardCount
        ), NetworkFailure>>((ref) {
  return ProfileNotifier();
});

class ProfileNotifier extends StateNotifier<
    AppState<
        (
          UserAddressDataModel userAddressData,
          DasboardOrdersDataModel dashboardCount
        ),
        NetworkFailure>> {
  ProfileNotifier() : super(AppState.initial());

  Future<void> getProfile() async {
    if (state == AppState.loading(true)) {
      return;
    }
    state = AppState.loading(true);
    try {
      final token = await FlutterSecureStorage().read(key: 'access_token');
      if ((token ?? '').isEmpty) {
        state = AppState.loading(false);
        state = AppState.error(
          const NetworkFailure(
            statusCode: 1002,
            message: 'Please Login to view Profile',
          ),
        );
        return;
      }
      String url = 'https://shuvautsav.com/api/v1/customer/profile';
      String customerDashboardCount =
          'https://shuvautsav.com/api/v1/customer/dashboard';
      //

      final response = await NetworkService().get(RequestApi(
        endPath: url,
        // bodyParams: params,
      ));
      final dashboardCountResponse = await NetworkService().get(RequestApi(
        endPath: customerDashboardCount,
        // bodyParams: params,
      ));
      state = AppState.loading(false);
      DasboardOrdersDataModel customerData = DasboardOrdersDataModel();
      if (dashboardCountResponse is Response) {
        customerData =
            DasboardOrdersDataModel.fromJson(dashboardCountResponse.data);
      }

      if (response is Response) {
        final data = UserAddressDataModel.fromJson(response.data['data']);
        state = AppState.success((data, customerData));
      } else {
        state = AppState.error(
            const NetworkFailure(statusCode: -1, message: 'Error'));
      }
    } catch (e) {
      log('$e');
      state = AppState.loading(false);
      state = AppState.error(
        const NetworkFailure(
          statusCode: -1,
          message: 'Something went wrong',
        ),
      );
    }
  }
}
