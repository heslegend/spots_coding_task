import 'package:dio/dio.dart';

class SpotsError {
  SpotsError(this.message);
  String message;

  factory SpotsError.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        return SpotsError('Request to API server was cancelled');
      case DioErrorType.connectTimeout:
        return SpotsError('Connection timeout with API server');
      case DioErrorType.receiveTimeout:
        return SpotsError('Received timeout in connection with API server');
      case DioErrorType.response:
        return SpotsError(
            '${dioError.response?.statusCode} - we are working on it!');
      case DioErrorType.sendTimeout:
        return SpotsError('Send timeout in connection with API server');
      case DioErrorType.other:
        if (dioError.message.contains('SocketException')) {
          return SpotsError('No Internet - Please check your network settings');
        } else {
          return SpotsError('Unexpected error occurred');
        }
      default:
        return SpotsError.generic();
    }
  }

  factory SpotsError.generic() => SpotsError('Oops - Something went wrong');
}
