// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

@immutable
class NetworkFailure {
  const NetworkFailure({
    required this.statusCode,
    required this.message,
    this.validationMessage,
    this.rowObject,
  });
  final int statusCode;
  final Map<String, dynamic>? rowObject;
  final Map<String, dynamic>? validationMessage;
  final String message;

  NetworkFailure copyWith({
    int? statusCode,
    Map<String, dynamic>? rowObject,
    Map<String, dynamic>? validationMessage,
    String? message,
  }) {
    return NetworkFailure(
      statusCode: statusCode ?? this.statusCode,
      rowObject: rowObject ?? this.rowObject,
      validationMessage: validationMessage ?? this.validationMessage,
      message: message ?? this.message,
    );
  }
}
