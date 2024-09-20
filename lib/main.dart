import 'package:doc_app/core/routing/app_router.dart';
import 'package:doc_app/dr_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp(DrApp(appRouter: AppRouter()));
}

