import 'package:desain_awal/Size_config.dart';
import 'package:desain_awal/screens/Sign_up/Sign_Up_Screen.dart';
import 'package:flutter/material.dart';
import '../Sign_Form.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Text(
                  " WELCOME BACK ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Silahkan Masuk dengan email kamu and password \n atau menggunakan social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Text("Belum punya account ? "),
                RaisedButton(
                  child: Text(
                    "daftar disini",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blueAccent[300]),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, SignUpScreen.routeName);
                  },
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
