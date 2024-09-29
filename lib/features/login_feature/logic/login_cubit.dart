import 'package:doc_app/core/helper/shared_pref_keys.dart';
import 'package:doc_app/core/helper/shared_prefs.dart';
import 'package:doc_app/core/networking/api_error_handler.dart';
import 'package:doc_app/core/networking/api_error_model.dart';
import 'package:doc_app/core/networking/dio_factory.dart';
import 'package:doc_app/features/login_feature/data/models/login_request_model.dart';
import 'package:doc_app/features/login_feature/data/models/login_response_model.dart';
import 'package:doc_app/features/login_feature/data/repo/login_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(LoginInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  void emitLoginState() async {
    emit(LoginLoadingState());
    final response = await _loginRepo.login(
      LoginRequestModel(
          email: emailController.text, password: passwordController.text),
    );
    response.fold((l) => emit(LoginFailureState(ApiErrorHandler.handle(l))),
        (r)async {
      await saveUserToken(r.loginUserData?.token ??'');
      emit(LoginSuccessState(r));
    });
  }
  Future<void>saveUserToken(String token)async{
    await SharedPrefsHelper.setSecureString(SharedPrefKeys.userToken, token);
    DioFactory.refreshHeaders(token);
  }
}
