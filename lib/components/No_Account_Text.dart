import 'package:desain_awal/screens/Sign_in/Sign_In.dart';
import 'package:desain_awal/screens/forgot_password/Forgot_Password.dart';
import 'package:flutter/material.dart';

import '../Constants.dart';
import '../Size_config.dart';

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
