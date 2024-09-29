
import 'package:doc_app/features/login_feature/logic/login_cubit.dart';
import 'package:doc_app/features/login_feature/presentation/widgets/login_bloc_listener.dart';
import 'package:doc_app/features/login_feature/presentation/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common_widgets/custom_button.dart';
import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import 'dont_have_account_widget.dart';
import 'email_and_password_widget.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: CustomTextWidget(
                    title: AppStrings.welcome,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.mainColor,
                  )),
              SizedBox(
                height: 40.h,
              ),
              CustomTextWidget(
                title: AppStrings.loginHeaderTitle,
                fontSize: 15.sp,
                fontWeight: FontWeight.w300,
                color: AppColors.lightTitleColor,
                textAlign: TextAlign.start,
                maxLines: 3,
              ),
              SizedBox(
                height: 36.h,
              ),
              Column(
                children: [
                  const EmailAndPasswordWidget(),
                  const Align(
                    alignment: Alignment.topRight,
                    child: CustomTextWidget(
                      title: AppStrings.forgetPassword,
                      fontSize: 16,
                      color: AppColors.mainColor,
                      textDecoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  CustomButton(
                      onPressed: () {
                        login(context);
                      },
                      title: AppStrings.login,
                      textSize: 20.sp,
                      textWeight: FontWeight.bold,
                      left: 4,
                      right: 4,
                      buttonHeight: 55.h,
                      radius: 12,
                      showIcon: false),
                  SizedBox(
                    height: 50.h,
                  ),
                  const TermsAndConditions(),
                  SizedBox(
                    height: 60.h,
                  ),
                  const DontHaveAccountWidget(),
                  const LoginBlocListener()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  void login(BuildContext context){
    if(context.read<LoginCubit>().formKey.currentState!.validate()){
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
