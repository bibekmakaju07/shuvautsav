import 'package:dio/dio.dart';

// import 'package:pharmacy/features/login/model/login_session.dart';

class AuthInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // if (LoginSession.getLoginInfo().accessToken?.isNotEmpty ?? true) {
    //   options.headers['Authorization'] =
    //       'Bearer ${LoginSession.getLoginInfo().accessToken}';
    // }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == 401) {
      //TODO logout
    }
    super.onResponse(response, handler);
  }
}
