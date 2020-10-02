import 'package:desain_awal/screens/forgot_password/Forgot_Password.dart';
import 'package:flutter/material.dart';

import 'component/Body.dart';

class SignInScreen extends StatelessWidget {
  // kita hubungkan dengan login lanjutan route tadi
  // lanjut ke route.dart #1
  static String routeName = "/sign_in"; // routes
  const SignInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ke bagian main.dart untuk mengatur warna dari appbar kita #4
      appBar: AppBar(
        title: GestureDetector(
            onTap: () => Navigator.popAndPushNamed(
                context, ForgotPasswordScreen.routeName),
            child: Text("Sign in")),
      ),
      body: Body(),
    );
  }
}
