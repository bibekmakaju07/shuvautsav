// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shuvautsavapp/network/api_interceptors/auth_interceptors.dart';
import 'package:shuvautsavapp/network/api_interceptors/log_intercepors.dart';
import 'package:shuvautsavapp/network/failure.dart';

abstract class EndPathParam {
  EndPathParam({
    required this.bodyParams,
    required this.queryParams,
    this.headers = const {},
    this.formdata,
  });
  final Map<String, dynamic> bodyParams;
  final Map<String, dynamic> queryParams;
  final Map<String, dynamic> headers;
  final FormData? formdata;
}

class RequestApi<T> extends EndPathParam {
  RequestApi({
    required this.endPath,
    super.bodyParams = const {},
    super.queryParams = const {},
    super.headers = const {},
    // this.parser,
    super.formdata,
    this.contentType = 'application/json',
    this.shouldRequireAccessToken = true,
  });

  final String endPath;
  final String contentType;
  // final Parser<T>? parser;
  final bool shouldRequireAccessToken;

  RequestApi<T> copyWith({
    String? endPath,
    String? contentType,
    FormData? formdata,
    // Parser<T>? parser,
    bool? shouldRequireAccessToken,
    Map<String, dynamic>? queryParams,
  }) {
    return RequestApi(
      formdata: formdata ?? this.formdata,
      queryParams: queryParams ?? this.queryParams,
      endPath: endPath ?? this.endPath,
      // parser: parser ?? this.parser,
      contentType: contentType ?? this.contentType,
      shouldRequireAccessToken:
          shouldRequireAccessToken ?? this.shouldRequireAccessToken,
    );
  }
}

class NetworkService {
  NetworkService() {
    dio.interceptors.addAll([
      AuthInterceptors(),
      LogsInterceptor(),
      ChuckerDioInterceptor(),
    ]);
  }
  final dio = Dio(
    BaseOptions(
      baseUrl: '',
      contentType: Headers.jsonContentType,
      followRedirects: false,
      headers: {
        'Accept': 'application/json',
      },
    ),
  );

  Future<dynamic> get(RequestApi api) async {
    try {
      final reponse = await dio.get(
        api.endPath,
        data: api.bodyParams,
        queryParameters: api.queryParams,
        options: Options(
          contentType: api.contentType,
        ),
      );
      return reponse;
    } catch (e) {
      return _parseError(e);
    }
  }

  Future<dynamic> post(RequestApi api) async {
    try {
      final reponse = await dio.post(
        api.endPath,
        data: api.bodyParams,
        queryParameters: api.queryParams,
        options: Options(
          contentType: api.contentType,
          sendTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
        ),
      );
      return reponse;
    } catch (e) {
      return _parseError(e);
    }
  }

  Future<dynamic> put(RequestApi api) async {
    try {
      final reponse = await dio.put(
        api.endPath,
        data: api.bodyParams,
        queryParameters: api.queryParams,
        options: Options(
          contentType: api.contentType,
        ),
      );
      return reponse;
    } catch (e) {
      return _parseError(e);
    }
  }

  Future<dynamic> uploadImage(RequestApi api) async {
    try {
      final reponse = await dio.post(
        api.endPath,
        data: api.formdata,
        queryParameters: api.queryParams,
        options: Options(
          contentType: api.contentType,
        ),
      );
      return reponse;
    } catch (e) {
      return _parseError(e);
    }
  }

  Future<NetworkFailure> _parseError(e) async {
    try {
      if (e is DioException) {
        if (e.response?.data != null) {
          final isResponseMap = e.response?.data is Map<String, dynamic>;
          final data = isResponseMap
              ? e.response?.data as Map<String, dynamic>
              : <String, dynamic>{};
          log('$data');
          final error = isResponseMap
              ? (data['message'] as String?) ?? data['messages'] as String?
              : null;
          return NetworkFailure(
            message: error ?? e.toString(),
            statusCode: e.response?.statusCode ?? 400,
            rowObject: data,
          );
        } else {
          final connection = await checkInternetConnection();
          if (connection) {
            return NetworkFailure(
              message:
                  e.message ?? (kDebugMode ? '$e' : 'Something Went Wrong'),
              statusCode: 400,
            );
          } else {
            return const NetworkFailure(
              message:
                  'Internet connection appears to be offline. Please check your internet connection.',
              statusCode: 522,
            );
          }
        }
      } else {
        return NetworkFailure(message: e.toString(), statusCode: 400);
      }
    } catch (e) {
      return NetworkFailure(message: e.toString(), statusCode: 400);
    }
  }

  Future<bool> checkInternetConnection() async {
    final connectivityResult = await Connectivity().checkConnectivity();

    if (connectivityResult.contains(ConnectivityResult.none)) {
      return false;
    } else {
      return true;
    }
  }
}
