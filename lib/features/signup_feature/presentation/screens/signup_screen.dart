import 'package:flutter/material.dart';

import '../widgets/signup_screen_body.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
          body:SignupScreenBody()
      ),
    );
  }
}
