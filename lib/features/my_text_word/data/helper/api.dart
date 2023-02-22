import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({
    required String url,
    @required Map<String, String>? headers,
  }) async {
    http.Response response = await http.get(Uri.parse(url), headers: headers);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
        'problem in status code ${response.statusCode} with body ${jsonDecode(response.body)} request ${response.request}',
      );
    }
  }

  // Add

  Future<dynamic> post({
    required String url,
    @required dynamic body,
    @required dynamic headers,
    @required String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
      });
    }

    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
        'problem in status code ${response.statusCode} with body ${jsonDecode(response.body)}',
      );
    }
  }

  // upDate text word

  Future<dynamic> put({
    required String url,
    @required dynamic body,
    @required dynamic headers,
    @required String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
      });
    }

    http.Response response = await http.put(
      Uri.parse(url),
      body: body,
      headers: headers,
    );
    // headers.addAll({'Content-Type': ''});
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
        'problem in status code ${response.statusCode} with body ${jsonDecode(response.body)}',
      );
    }
  }
}
