// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';

abstract class Failer {
  final String failerMessage;

  const Failer(this.failerMessage);
}

class ServerFailer extends Failer {
  ServerFailer(super.failerMessage);

  factory ServerFailer.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailer('Connection Timeout With Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailer('Send Timeout With Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailer('Receive Timeout With Api Server');
      case DioExceptionType.badCertificate:
        return ServerFailer('badCertificate Timeout With Api Server');
      case DioExceptionType.badResponse:
        return ServerFailer.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailer('Request to Api Server was cancel ');
      case DioExceptionType.connectionError:
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailer('No Enternet Connection');
        }
        return ServerFailer('OOPS There was an error please try later');
    }
  }

  factory ServerFailer.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailer(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailer('Your Request Not Found...,please try later');
    } else if (statusCode == 500) {
      return ServerFailer('Enternal Server Error....,please try later');
    }
    return ServerFailer('OOPS THere was error, try Later.....');
  }
}
