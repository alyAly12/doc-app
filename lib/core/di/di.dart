
import 'package:dio/dio.dart';
import 'package:doc_app/core/networking/dio_factory.dart';
import 'package:get_it/get_it.dart';

import '../../features/signup_feature/data/apis/api_service.dart';
import '../../features/signup_feature/data/repos/signup_repo.dart';
import '../../features/signup_feature/logic/signup_cubit.dart';

final getIt = GetIt.instance;

Future<void>initGetIt()async{
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerLazySingleton<SignupRepo>(()=>SignupRepo(getIt()));

  getIt.registerFactory<SignupCubit>(()=>SignupCubit(getIt()));

}