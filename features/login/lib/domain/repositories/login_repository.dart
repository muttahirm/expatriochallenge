import 'package:core/di/di.dart';
import 'package:core/resources/data_state.dart';
import 'package:login/domain/entities/login_response.dart';

abstract class LoginRepository extends BaseRepository {
  Future<DataState<LoginResponse>> login({
    required String username,
    required String password,
  });
}
