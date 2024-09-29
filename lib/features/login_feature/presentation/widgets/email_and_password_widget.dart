import 'package:doc_app/features/login_feature/presentation/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common_widgets/custom_text_field.dart';
import '../../../../core/helper/app_regex.dart';
import '../../logic/login_cubit.dart';

class EmailAndPasswordWidget extends StatefulWidget {
  const EmailAndPasswordWidget({super.key});

  @override
  State<EmailAndPasswordWidget> createState() => _EmailAndPasswordWidgetState();
}

class _EmailAndPasswordWidgetState extends State<EmailAndPasswordWidget> {
  late TextEditingController passwordController;

  bool obscureText = true;
  bool hasUpperCase = false;
  bool hasLowerCase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupControllerListener();
  }

  void setupControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialChar = AppRegex.hasSpecialCharacter(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: context.read<LoginCubit>().emailController,
            focusNode: context.read<LoginCubit>().emailNode,
            hintText: 'Enter Your Email',
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please Enter Valid Email';
              }
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            focusNode: context.read<LoginCubit>().passwordNode,
            hintText: 'Enter Your Password',
            textInputAction: TextInputAction.done,
            obsecureText: obscureText,
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                child: Icon(obscureText
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Enter Password';
              }
            },
          ),
          SizedBox(
            height: 24.h,
          ),
          PasswordValidation(
              hasLowerCase: hasLowerCase,
              hasUpperCase: hasUpperCase,
              hasNumber: hasNumber,
              hasSpecialChar: hasSpecialChar,
              hasMinLength: hasMinLength)
        ],
      ),
    );
  }
}
