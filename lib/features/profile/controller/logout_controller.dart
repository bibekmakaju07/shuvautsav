import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_states/appstate.dart';

final logoutProvider =
    StateNotifierProvider.autoDispose<LogoutController, AppState>((ref) {
  return LogoutController();
});

class LogoutController extends StateNotifier<AppState> {
  LogoutController() : super(AppState.initial());

  logoutSocial() async {
    logoutFacebook();
    logoutGoogleSignIn();
  }

 Future<void> clearData() async {
    state = AppState.loading(true);
    await FlutterSecureStorage().deleteAll();
    await logoutSocial();
    await Future.delayed(Duration(seconds: 2));
    state = AppState.loading(false);
    state = AppState.success(true);


  }

  void logoutFacebook() async {
    try {
      final facebookAuth = FacebookAuth.instance.logOut();
    } catch (e) {}
  }

  void logoutGoogleSignIn() async {
    try {
      final google = GoogleSignIn().signOut();
    } catch (e) {}
  }
}
