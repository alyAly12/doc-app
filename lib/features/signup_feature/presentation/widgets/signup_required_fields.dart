import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common_widgets/custom_text_field.dart';
import '../../../../core/helper/app_regex.dart';
import '../../../login_feature/presentation/widgets/password_validation.dart';
import '../../logic/signup_cubit.dart';

class SignupRequiredFields extends StatefulWidget {
  const SignupRequiredFields({super.key});

  @override
  State<SignupRequiredFields> createState() => _SignupRequiredFieldsState();
}

class _SignupRequiredFieldsState extends State<SignupRequiredFields> {
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
    passwordController = context.read<SignupCubit>().passwordController;
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
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: context.read<SignupCubit>().nameController,
            focusNode: context.read<SignupCubit>().nameNode,
            hintText: 'Enter Your Name',
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Enter Your Name';
              }
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextFormField(
            controller:  context.read<SignupCubit>().emailController,
            focusNode:  context.read<SignupCubit>().emailNode,
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
            controller:  context.read<SignupCubit>().phoneController,
            focusNode:  context.read<SignupCubit>().phoneNode,
            hintText: 'Enter Your Phone Number',
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please Enter Valid Phone Number';
              }
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextFormField(
            controller: context.read<SignupCubit>().passwordController,
            focusNode:  context.read<SignupCubit>().passwordNode,
            hintText: 'Enter Your Password',
            textInputAction: TextInputAction.next,
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
          CustomTextFormField(
            controller: context.read<SignupCubit>().confirmPasswordController,
            focusNode: context.read<SignupCubit>().confirmPasswordNode,
            hintText: 'Confirm Your Password',
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
                return 'Please confirm Password';
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
