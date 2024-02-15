import 'dart:async';
import 'dart:convert';
// import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginApi {
  final baseUrl = Uri.parse('https://dev-api.expatrio.com/auth/login');
  final headers = {'Content-Type': 'application/json'};

  Future<http.Response> login({
    required String username,
    required String password,
  }) async {
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({'email': username, 'password': password});
    String accessToken = "";
    int userId = 0;

    final response = await http.post(
      Uri.parse('$baseUrl'),
      headers: headers,
      body: body,
    );
    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);
      accessToken = responseData["accessToken"];
      userId = responseData["userId"];
    }
    final newResponse = await callDataAPI(accessToken, userId);
    return newResponse;
  }

  Future<http.Response> callDataAPI(String accessToken, int userId) async {
    final headers = {
      'Accept': '*/*',
      'User-Agen': 'Expatrio Mobile',
      'Content-Type': 'application/json',
      'security-token': '4f4bc0b11863b1e34178801213fc2e8b82b44115',
      'Authorization': 'Bearer $accessToken'
    };

    var request = await http.get(
        Uri.parse('https://dev-api.expatrio.com/portal/users/$userId/profile'),
        headers: headers);

    return request;
  }
}
