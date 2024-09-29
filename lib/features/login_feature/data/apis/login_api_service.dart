import 'package:dio/dio.dart';
import 'package:doc_app/features/login_feature/data/models/login_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_consts.dart';
import '../models/login_request_model.dart';
part 'login_api_service.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class LoginApiService{
  factory LoginApiService(Dio dio, {String baseUrl}) = _LoginApiService;

  @POST(ApiConstant.login)
  Future<LoginResponseModel> login(@Body() LoginRequestModel loginRequestModel);
}