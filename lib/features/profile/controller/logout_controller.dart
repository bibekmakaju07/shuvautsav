import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LogoutController {
  logoutSocial() async {
    logoutFacebook();
    logoutGoogleSignIn();
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
