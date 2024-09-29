import 'package:json_annotation/json_annotation.dart';
part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
   String? message;
  @JsonKey(name: 'data')
  LoginUserData?loginUserData;
  bool ? status;
  int ? code;

  LoginResponseModel({this.message, this.loginUserData, this.status, this.code});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);
}


@JsonSerializable()
class LoginUserData{
   String? token;
  @JsonKey(name: 'username')
   String? userName;

  LoginUserData({this.token, this.userName});

  factory LoginUserData.fromJson(Map<String, dynamic> json) => _$LoginUserDataFromJson(json);
}