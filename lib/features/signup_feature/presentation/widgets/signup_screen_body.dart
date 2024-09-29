import 'package:doc_app/features/signup_feature/logic/signup_cubit.dart';
import 'package:doc_app/features/signup_feature/presentation/widgets/signup_bloc_listener.dart';
import 'package:doc_app/features/signup_feature/presentation/widgets/signup_required_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common_widgets/custom_button.dart';
import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../login_feature/presentation/widgets/terms_and_conditions.dart';
import 'have_an_account_widget.dart';

class SignupScreenBody extends StatelessWidget {
  const SignupScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 20.h),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: CustomTextWidget(
                    title: AppStrings.createAcc,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.mainColor,
                  )),
              SizedBox(
                height: 40.h,
              ),
              CustomTextWidget(
                title: AppStrings.signupHeaderTitle,
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
                  const SignupRequiredFields(),
                  SizedBox(
                    height: 50.h,
                  ),
                  CustomButton(
                      onPressed: () {
                        validateSignUp(context);
                      },
                      title: AppStrings.signup,
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
                  const HaveAnAccountWidget(),
                  const SignupBlocListener()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  void validateSignUp(BuildContext context) {
    if(context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupState();
    }
  }
}
