import 'package:desain_awal/components/social_card.dart';
import 'package:desain_awal/constants.dart';
import 'package:desain_awal/screens/Sign_up/sign_form.dart';
import 'package:desain_awal/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text("Register Account", style: headingStyle),
              Text(
                "Silahkan Daftar, \n Pastikan Data yang dimasukan sesuai dengan data diri",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialCard(
                icon: "assets/icons/google.svg",
                press: () {},
              ),
              SocialCard(
                icon: "assets/icons/facebook.svg",
                press: () {},
              ),
              SocialCard(
                icon: "assets/icons/twitter.svg",
                press: () {},
              ),
              SocialCard(
                icon: "assets/icons/github.svg",
                press: () {},
              ),
            ],
          ),
              SizedBox(height: getProportionateScreenHeight(20),),
              Text("By Continue your confirm that you agree \nWith our Term and Condition",
              textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}
