import 'package:doc_app/core/networking/api_error_handler.dart';
import 'package:doc_app/core/networking/api_error_model.dart';
import 'package:doc_app/features/signup_feature/data/models/signup_request_model.dart';
import 'package:doc_app/features/signup_feature/data/repos/signup_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/signup_response_model.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(SignupInitial());
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  FocusNode nameNode = FocusNode();
  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();
  FocusNode confirmPasswordNode = FocusNode();
  FocusNode phoneNode = FocusNode();

  void emitSignupState()async{
    emit(SignupLoading());
    final response = await _signupRepo.signUp(SignupRequestModel(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: confirmPasswordController.text,
        gender: 0));

    response.fold((l) {
      emit(SignupFailure(ApiErrorHandler.handle(l)));
    }, (r) {
      emit(SignupSuccess(r));
    });
  }
}
