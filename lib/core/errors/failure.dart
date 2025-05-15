import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout With Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout With Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout With Server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          e.response!.statusCode!,
          e.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request to API server was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure('Unknown error occurred, please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    switch (statusCode) {
      case 400:
      case 401:
      case 403:
        return ServerFailure(response['error']['message']);
      case 404:
        return ServerFailure('Your request not found, please try again later');
      case 500:
        return ServerFailure('Internal Server Error, please try again later');
      default:
        return ServerFailure('Something went wrong, please try again');
    }
  }
}
