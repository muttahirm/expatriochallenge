import 'dart:async';
import 'dart:convert';
// import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginApi {
  final baseUrl = Uri.parse(
      'https://dev-api.expatrio.com/auth/login'); //Repclace Your Endpoint
  final headers = {'Content-Type': 'application/json'};

  Future<http.Response> login({
    required String username,
    required String password,
  }) async {
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({'email': username, 'password': password});
    print('email = $username');
    print('password = $password');
    // final body = jsonEncode(
    // {'email': 'tito+bs792@expatrio.com', 'password': 'nemampojma'});
    String accessToken = "";
    int userId = 0;
    print(baseUrl);

    final response = await http.post(
      Uri.parse('$baseUrl'),
      headers: headers,
      body: body, // Serialize the Map to JSON format
    );
    print('response code = ${response.statusCode}');
    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);
      print('response data token = ${responseData["accessToken"]} \n\n');
      print('');
      accessToken = responseData["accessToken"];
      userId = responseData["userId"];
    }
    final newResponse = await callDataAPI(accessToken, userId);
    // streamedResponse.stream.forEach((element) {
    //   print(element);
    // });
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
    // var request = http.Request('GET',
    //     Uri.parse('https://dev-api.expatrio.com/portal/users/113875/profile'));
    // request.headers.addAll(headers);

    var request = await http.get(
        Uri.parse('https://dev-api.expatrio.com/portal/users/$userId/profile'),
        headers: headers);
    print('response = ${request.body}\n\n');
    print('');
    // Uri.parse('https://dev-api.expatrio.com/portal/users/113875/profile'));

    // http.StreamedResponse streamedResponse = await request.send();
    return request;
  }
}
