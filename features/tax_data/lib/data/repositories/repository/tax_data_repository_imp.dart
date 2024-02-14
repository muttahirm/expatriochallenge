import 'dart:convert';

import 'package:core/resources/data_state.dart';
import 'package:core/extras/extras.dart';
import 'package:injectable/injectable.dart';
import 'package:tax_data/data/data_source/tax_data_api.dart';
import 'package:tax_data/domain/repositories/tax_data_repository.dart';

@LazySingleton(as: TaxDataRepository)
class TaxDataRepositoryImpl implements TaxDataRepository {
  final TaxDataApi _taxDataApi;

  TaxDataRepositoryImpl(this._taxDataApi);

  @override
  Future<void> init() {
    throw UnimplementedError();
  }

  @override
  Future<void> fetchTaxData() {
    throw UnimplementedError();
  }

  // @override
  // Future<DataState<LoginResponse>> login(
  //     {required String username, required String password}) async {
  //   final httpResponse =
  //       await _loginApi.login(username: username, password: password);

  //   print('repo impl = state code ${httpResponse.statusCode}');
  //   print('response body = ${httpResponse.body}');

  //   try {
  //     if (httpResponse.statusCode == ServerCodes.codeOk) {
  //       print('httpResponse.statusCode 200');
  //       LoginResponse loginResponse = LoginResponse.fromJson(
  //           jsonDecode(httpResponse.body) as Map<String, dynamic>);
  //       return DataStateSuccess(loginResponse);
  //     } else {
  //       print('failing');
  //       return DataStateFailed(httpResponse.body);
  //     }
  //   } catch (e) {
  //     print('failing in catch');
  //     return DataStateFailed(httpResponse.body);
  //   }
  // }
}
