import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_states/appstate.dart';
import 'package:shuvautsavapp/features/login/model/login_model.dart';
import 'package:shuvautsavapp/network/failure.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final loginProvider =
    StateNotifierProvider.autoDispose<LoginNotifier, AppState>((ref) {
  return LoginNotifier();
});

class LoginNotifier extends StateNotifier<AppState> {
  LoginNotifier() : super(AppState.initial());

  void login(Map<String, dynamic> params) async {
    try {
      state = AppState.loading(true);
      final response = await NetworkService().post(
        RequestApi(
            endPath: 'https://shuvautsav.com/api/login', bodyParams: params),
      );
      state = AppState.loading(false);
      if (response is Response) {
        final logindata = LoginModel.fromJson(response.data);
        if (logindata.status != 1) {
          state = AppState.error(null);
          return;
        }
        await FlutterSecureStorage().write(key: 'access_token', value: logindata.data.accessToken);
        state = AppState.success(null);
      } else if (response is NetworkFailure) {
        state = AppState.error(null);
      }
    } catch (e) {
      state = AppState.loading(false);
      state = AppState.error(null);
    }
  }
}