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

    emit(state.copyWith(loginStatus: LoginStatus.sent));

    final response = await loginUseCase.call(parameters: parameters);

    if (response.data == null) {
      emit(state.copyWith(loginStatus: LoginStatus.failed));
    } else {
      emit(state.copyWith(loginStatus: LoginStatus.success));
    }
  }
}
