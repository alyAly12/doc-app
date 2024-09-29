import 'package:doc_app/core/helper/extenstions.dart';

class ApiErrorModel {
  final String? message;
  final int? code;
  final Map<String,dynamic>?errors;

  ApiErrorModel({this.errors, this.message, this.code});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      ApiErrorModel( message: json["message"], code: json["code"], errors: json["data"]);

  String getAllErrorMessage(){
    if(errors.isNullOrEmpty()) {
      return message ?? 'Unknown error occurred';
    }
    final errorMessage = errors!.entries.map((entry){
      final value = entry.value;
      return '${value.join(',')}';
    }
    ).join('\n');
    return errorMessage;

    /// another way to reduce code
    // return errors!.entries.map((entry){
    //   final value = entry.value;
    //   return '${value.join(',')}';
    // }).join('\n');
  }
}