import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  Failures(this.errMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioExceptionType.badCertificate:
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Request to timeout with ApiServer');
      case DioExceptionType.connectionError:
        return ServerFailure('Internet Connection is not found');
      case DioExceptionType.unknown:
        return ServerFailure('An unknown error occurred.');
      default:
        return ServerFailure('Oops, there was an error, please try again.');
    }

    // This return statement is needed to handle cases not covered above
    throw Exception('Unhandled DioError type: ${dioError.type}');
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, please try again.');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, please try later.');
    } else {
      return ServerFailure('Oops, there was an error, please try again.');
    }
  }
}
