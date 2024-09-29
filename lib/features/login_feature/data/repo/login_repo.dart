import 'package:dartz/dartz.dart';
import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/login_feature/data/apis/login_api_service.dart';
import 'package:doc_app/features/login_feature/data/models/login_request_model.dart';
import 'package:doc_app/features/login_feature/data/models/login_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';

class LoginRepo{
 final LoginApiService _loginApiService;

  LoginRepo(this._loginApiService);
  Future<Either<Failure,LoginResponseModel>>login(LoginRequestModel loginRequestModel)async{
    try{
      final response = await _loginApiService.login(loginRequestModel);
      return Right(response);
    }catch(error){
      return Left(ApiErrorHandler.handle(error) as Failure);

    }
  }
}