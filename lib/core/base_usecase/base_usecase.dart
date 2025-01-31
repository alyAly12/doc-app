import 'package:doc_app/core/networking/api_result.dart';

abstract class UseCase<Type, Params> {
  Future<ApiResult<Type>> call(Params params);
}