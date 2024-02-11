import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginSubmitted>(_onSubmitted);
  }

  void _onSubmitted(LoginSubmitted event, Emitter<LoginState> emit) {
    // final email = Email.dirty(state.email.value);
    // final password = Password.dirty(state.password.value);

    // emit(state.copyWith(
    //   email: email,
    //   password: password,
    //   isValid: Formz.validate([email, password]),
    //   status: FormzSubmissionStatus.success,
    // ));
  }
}
