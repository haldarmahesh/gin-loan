import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'dart:io' as io;

class HttpClient {
  IOClient _client;
  String host;
  HttpClient({@required this.host}) {
    final httpClient = io.HttpClient();
    _client = IOClient(httpClient);
  }

  Uri getParsedUrl(String path) {
    return Uri.parse('$host$path');
  }

  dynamic get(
    String path, {
    Map<String, dynamic> overrideHeader = const {},
  }) async {
    print('HTTP request\n'
        'Method: GET\n'
        'Url: ${getParsedUrl(path)}');

    final Response response = await _client.get(
      getParsedUrl(path),
    );

    return json.decode(response.body);
  }
}
