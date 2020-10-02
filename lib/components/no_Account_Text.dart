import 'package:desain_awal/screens/Sign_in/sign_in.dart';
import 'package:desain_awal/screens/forgot_password/forgot_password.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatefulWidget {
  @override
  _NoACCState createState() => _NoACCState();
}

class _NoACCState extends State<NoAccountText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Sudah ingat password kamu ? "),
        GestureDetector(
          onTap: () =>
              Navigator.popAndPushNamed(context, SignInScreen.routeName),
          child: Text(
            "Login",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(15),
                color: kPrimaryColor,
                decoration: TextDecoration.underline),
          ),
        )
      ],
    );
  }
}
