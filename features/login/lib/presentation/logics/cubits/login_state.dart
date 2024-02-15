// ignore_for_file: must_be_immutable

part of 'login_cubit.dart';

class LoginState extends Equatable {
  LoginStatus loginStatus;
  LoginState({
    required this.loginStatus,
  });

  LoginState copyWith({LoginStatus? loginStatus}) {
    return LoginState(
      loginStatus: loginStatus ?? this.loginStatus,
    );
  }

  @override
  List<Object?> get props => [loginStatus];
}
