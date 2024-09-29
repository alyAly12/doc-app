import 'package:dartz/dartz.dart';
import 'package:doc_app/core/networking/api_error_handler.dart';
import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/signup_feature/data/apis/api_service.dart';
import 'package:doc_app/features/signup_feature/data/models/signup_response_model.dart';

import '../models/signup_request_model.dart';

class SignupRepo {
  final ApiService _apiService;
  SignupRepo(this._apiService);

  Future<Either<Failure,SignupResponseModel>>signUp(SignupRequestModel signupRequestModel)async{
    try{
      final response = await _apiService.signUp(signupRequestModel);
      return Right(response);
    }catch(error){
      return Left(ApiErrorHandler.handle(error) as Failure);
    }

  }
}