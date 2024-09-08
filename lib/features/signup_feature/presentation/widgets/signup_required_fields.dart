import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common_widgets/custom_text_field.dart';
import '../../../../core/helper/app_regex.dart';
import '../../../login_feature/presentation/widgets/password_validation.dart';

class SignupRequiredFields extends StatefulWidget {
  const SignupRequiredFields({super.key});

  @override
  State<SignupRequiredFields> createState() => _SignupRequiredFieldsState();
}

class _SignupRequiredFieldsState extends State<SignupRequiredFields> {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  FocusNode nameNode = FocusNode();
  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();
  FocusNode confirmPasswordNode = FocusNode();
  FocusNode phoneNode = FocusNode();

  bool obscureText = true;
  bool hasUpperCase = false;
  bool hasLowerCase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    // passwordController = context.read<SignupCubit>().passwordController;
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
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: nameController,
            focusNode: nameNode,
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
            controller: emailController,
            focusNode: emailNode,
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
            controller: phoneController,
            focusNode: phoneNode,
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
            controller: passwordController,
            focusNode: passwordNode,
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
            controller: confirmPasswordController,
            focusNode: confirmPasswordNode,
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
