// import 'package:desain_awal/screens/Sign_up/Sign_up_Screen.dart';
import 'package:desain_awal/screens/Sign_up/Sign_Up_Screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          " Tidak Memiliki Account ? ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        // GestureDetector(
        // onTap: () =>
        //     // Navigator.popAndPushNamed(context, SignUpScreen.routeName),
        // child: Text(
        GestureDetector(
          onTap: () =>
              Navigator.popAndPushNamed(context, SignUpScreen.routeName),
          child: Text(
            " Sign Up  ",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: kPrimaryColor,
            ),
          ),
        ),
        // ),
      ],
    );
  }
}
