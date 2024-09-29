import 'package:doc_app/core/helper/extenstions.dart';
import 'package:doc_app/core/helper/shared_prefs.dart';
import 'package:doc_app/core/routing/app_router.dart';
import 'package:doc_app/dr_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/di.dart';
import 'core/helper/shared_pref_keys.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkedIfLoggedInUser();
  await SharedPrefsHelper.getBool('theme');
  runApp(DrApp(appRouter: AppRouter()));
}

checkedIfLoggedInUser()async{
  String? userToken = await SharedPrefsHelper.getSecureString(SharedPrefKeys.userToken);
  if(!userToken.isNullOrEmpty()){
    isLoggedInUser = true;
  }else{
    isLoggedInUser = false;
  }
}

