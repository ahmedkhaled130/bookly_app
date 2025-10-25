import 'package:dio/dio.dart';

abstract class Failure{
final String errMsg;

Failure(this.errMsg);
}
 class ServerFailure extends Failure{
  ServerFailure(super.errMsg);

  factory ServerFailure.fromDioException(DioException dioException){
   switch (dioException.type) {
    case DioExceptionType.connectionTimeout:
     return ServerFailure("Connection timeout with API server.");
    case DioExceptionType.sendTimeout:
     return ServerFailure("Send timeout while connecting to server.");
    case DioExceptionType.receiveTimeout:
     return ServerFailure("Receive timeout while waiting for response.");
    case DioExceptionType.badCertificate:
     return ServerFailure("Bad SSL certificate.");
    case DioExceptionType.badResponse:
     return ServerFailure.fromBadResponse(
      dioException.response?.statusCode ?? 0,
      dioException.response?.data,
     );
    case DioExceptionType.cancel:
     return ServerFailure("Request to server was cancelled.");
    case DioExceptionType.connectionError:
     return ServerFailure("No Internet connection.");
    case DioExceptionType.unknown:
    default:
     return ServerFailure("Unexpected error, please try again later.");
   }
  }
  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
   if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
    final message = response?['error']?['message'] ?? "Authentication error ($statusCode).";
    return ServerFailure(message);
   } else if (statusCode == 404) {
    return ServerFailure("Request not found (404) , Please again try later.");
   } else if (statusCode == 500) {
    return ServerFailure("Internal server error (500).");
   } else {
    return ServerFailure("Unexpected error occurred (code $statusCode).");
   }
  }
 }
