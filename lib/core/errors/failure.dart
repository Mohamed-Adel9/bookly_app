import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Timeout , please try again Later.");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Timeout , please try again Later.");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Timeout , please try again Later.");
      case DioExceptionType.badCertificate:
        return ServerFailure("BadCertificate , try to Connect to Api");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            error.response!.statusCode!, error.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request was Cancelled");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error, please Check your connection");
      case DioExceptionType.unknown:
        return ServerFailure("Ops there was an error, please try again Later");
    }
  }


  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404 && statusCode < 500) {
      return ServerFailure("Server Error : ${response['error']['message']}");
    }
    return ServerFailure("Unexpected Error : $statusCode");
  }
}
