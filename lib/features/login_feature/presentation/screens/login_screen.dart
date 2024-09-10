import 'package:flutter/material.dart';

import '../widgets/login_screen_body.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
          body:LoginScreenBody()
      ),
    );
  }
}