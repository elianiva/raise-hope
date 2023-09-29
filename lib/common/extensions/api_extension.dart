import 'dart:io';

import 'package:dio/dio.dart';

import '../errors/api_exception.dart';

extension ApiExceptionDioX on DioException {
  ApiException get toApiException {
    switch (type) {
      case DioExceptionType.connectionError:
        final code = response?.statusCode!;
        if (code == 422) {
          return ApiException.unprocessableEntity(
            message: message ?? response?.data['message'],
            errors: response?.data['data'] ?? {},
          );
        } else if (code == 401) {
          return ApiException.unAuthorized(
            response?.data['message'] ?? 'Unauthorized',
          );
        } else if (code == 400) {
          return ApiException.serverException(
            message: response?.data['message'] ?? 'Error tidak diketahui',
          );
        } else {
          return ApiException.serverException(
            message: response?.data['message'] ?? message,
          );
        }
      case DioExceptionType.connectionTimeout:
        return const ApiException.network('Connection timeout');
      case DioExceptionType.unknown:
        if (error is SocketException) {
          return const ApiException.network('No internet connection');
        } else {
          return ApiException.serverException(
            message: response?.data['data'] ?? message,
          );
        }
      default:
        return ApiException.serverException(
          message: response?.data['data'] ?? message,
        );
    }
  }
}
