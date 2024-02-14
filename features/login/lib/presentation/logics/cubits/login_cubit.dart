import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:login/domain/entities/login_request.dart';
import 'package:login/domain/enums/login_status.dart';
import 'package:login/domain/usecases/user_login_usecase.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;
  LoginCubit(this.loginUseCase)
      : super(LoginState(loginStatus: LoginStatus.init));

  Future<void> onSubmit(String email, String password) async {
    LoginRequest parameters = LoginRequest(username: email, password: password);
    print(state.loginStatus);
    emit(state.copyWith(loginStatus: LoginStatus.sent));
    print(state.loginStatus);
    final response = await loginUseCase.call(parameters: parameters);

    print(response);

    if (response.data == null) {
      emit(state.copyWith(loginStatus: LoginStatus.failed));
      print(state.loginStatus);
    } else {
      emit(state.copyWith(loginStatus: LoginStatus.success));
      print(state.loginStatus);
    }
  }
}
