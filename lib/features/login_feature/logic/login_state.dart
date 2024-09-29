part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}
final class LoginLoadingState extends LoginState {}
final class LoginSuccessState extends LoginState {
  final LoginResponseModel loginResponseModel;
  LoginSuccessState(this.loginResponseModel);
}
final class LoginFailureState extends LoginState {
  final ApiErrorModel apiErrorModel;
  LoginFailureState(this.apiErrorModel);
}
