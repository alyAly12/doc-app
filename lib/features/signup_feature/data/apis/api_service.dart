import 'package:dio/dio.dart';
import 'package:doc_app/core/networking/api_consts.dart';
import 'package:doc_app/features/signup_feature/data/models/signup_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../models/signup_request_model.dart';
part 'api_service.g.dart';



@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstant.register)
  Future<SignupResponseModel>signUp(@Body() SignupRequestModel signupRequestModel);
}