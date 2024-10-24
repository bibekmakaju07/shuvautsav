import 'dart:developer' as developer;

import 'package:dio/dio.dart';

class LogsInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    LogMsg.logInfo('${{
      'data form response': '${err.response?.data}\n',
      'code': '${err.response?.statusCode}\n',
      'message': '${err.response?.statusMessage}\n',
    }}');
    super.onError(err, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    LogMsg.logInfo('${options.uri} ${options.data}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    LogMsg.logInfo('${{
      'data form response': '${response.data}\n',
      'code': '${response.statusCode}\n',
      'message': '${response.statusMessage}\n',
    }}');
    super.onResponse(response, handler);
  }
}

class LogMsg {
  static void logSuccess(String msg) {
    developer.log('\x1B[32m$msg\x1B[0m');
  }

  static void logInfo(String msg) {
    developer.log('\x1B[34m$msg\x1B[0m');
  }

  static void logWarning(String msg) {
    developer.log('\x1B[33m$msg\x1B[0m');
  }

  static void logError(String msg) {
    developer.log('\x1B[31m$msg\x1B[0m');
  }
}
