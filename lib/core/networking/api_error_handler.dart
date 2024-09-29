import 'package:dio/dio.dart';
import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: 'Connection to server failed');
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: 'Connection timeout with server');
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(message: 'Send timeout with server');
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(message: 'Receive timeout with server');
        case DioExceptionType.badCertificate:
          return ApiErrorModel(message: 'Bad certificate ');
        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);
        case DioExceptionType.cancel:
          return ApiErrorModel(message: 'Request to server was cancelled');
        case DioExceptionType.unknown:
          return ApiErrorModel(message: 'unexpected error occurred');
      }
    } else {
      return ApiErrorModel(message: 'Something went wrong');
    }
  }
}

ApiErrorModel _handleError(dynamic data) {
  return ApiErrorModel(
    message: data['message'] ?? 'Unexpected error occurred',
    code: data['code'],
    errors: data['data'],
  );
}