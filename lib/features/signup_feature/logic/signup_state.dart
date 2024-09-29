part of 'signup_cubit.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}
final class SignupLoading extends SignupState {}
final class SignupSuccess extends SignupState {
  final SignupResponseModel signupResponseModel;
  SignupSuccess(this.signupResponseModel);
}
final class SignupFailure extends SignupState {
  final ApiErrorModel apiErrorModel;
  SignupFailure(this.apiErrorModel);
}
