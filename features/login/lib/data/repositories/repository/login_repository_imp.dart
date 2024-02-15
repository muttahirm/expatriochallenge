import 'dart:convert';

import 'package:core/resources/data_state.dart';
import 'package:core/extras/extras.dart';
import 'package:injectable/injectable.dart';
import 'package:login/data/data_source/login_api.dart';
import 'package:login/domain/entities/login_response.dart';
import 'package:login/domain/repositories/login_repository.dart';

@LazySingleton(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginApi _loginApi;

  LoginRepositoryImpl(this._loginApi);

  @override
  Future<void> init() {
    throw UnimplementedError();
  }

  @override
  Future<DataState<LoginResponse>> login(
      {required String username, required String password}) async {
    final httpResponse =
        await _loginApi.login(username: username, password: password);

    print('repo impl = state code ${httpResponse.statusCode}');
    print('response body = ${httpResponse.body}');

    try {
      if (httpResponse.statusCode == ServerCodes.codeOk) {
        print('httpResponse.statusCode 200');
        LoginResponse loginResponse = LoginResponse.fromJson(
            jsonDecode(httpResponse.body) as Map<String, dynamic>);
        return DataStateSuccess(loginResponse);
      } else {
        print('failing');
        return DataStateFailed(httpResponse.body);
      }
    } catch (e) {
      print('failing in catch');
      return DataStateFailed(httpResponse.body);
    }
  }
}
