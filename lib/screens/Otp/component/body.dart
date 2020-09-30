import 'package:desain_awal/constants.dart';
import 'package:desain_awal/screens/Sign_in/sign_in.dart';
import 'package:desain_awal/size_config.dart';
import 'package:flutter/material.dart';

import 'Otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              Text("We sent yout code to  + 898 859 ***"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.05,
                  ),
                  Text("This Code will expired in Time : "),
                  TweenAnimationBuilder(
                    tween: Tween(begin: 30.0, end: 0),
                    duration: Duration(seconds: 30),
                    builder: (context, value, child) => Text(
                      "00:${value.toInt()}",
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    onEnd: () {},
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.15,
              ),
              OtpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              GestureDetector(
                onTap: () {
                  // resend your OTP
                  Navigator.pushNamed(context, SignInScreen.routeName);
                },
                child: Text(
                  "Resend OTP code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
