import 'package:core/di/di.dart';
import 'package:injectable/injectable.dart';
import 'package:core/resources/data_state.dart';
import 'package:login/domain/entities/login_request.dart';
import 'package:login/domain/entities/login_response.dart';
import 'package:login/domain/repositories/login_repository.dart';

@Injectable()
class LoginUseCase
    implements BaseUseCase<DataState<LoginResponse>, LoginRequest> {
  final LoginRepository loginRepository;

  LoginUseCase(this.loginRepository);

  @override
  Future<DataState<LoginResponse>> call({LoginRequest? parameters}) =>
      loginRepository.login(
          username: parameters!.username, password: parameters.password);
}
