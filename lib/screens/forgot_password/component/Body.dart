import 'package:desain_awal/Size_config.dart';
import 'package:flutter/material.dart';

import '../Forgot_Password_Form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              Text(
                "Lupa Password",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Masukan Email Kamu , Kami akan mengirimkan \n link untuk mengakses akun kamu",
                textAlign: TextAlign.center,
              ),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}