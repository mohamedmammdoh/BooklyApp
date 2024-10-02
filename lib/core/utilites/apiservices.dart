import 'dart:convert';

import 'package:dio/dio.dart';

class Api {
  final Dio dio = Dio();
  final _baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Map<String, dynamic>> Get({required String endPoint}) async {
    var response = await dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
