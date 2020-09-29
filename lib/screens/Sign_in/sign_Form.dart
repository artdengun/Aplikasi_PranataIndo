import 'package:desain_awal/components/CUstom_suffix_icons.dart';
import 'package:desain_awal/components/default_button.dart';
import 'package:desain_awal/components/form_error.dart';
import 'package:desain_awal/screens/forgot_password/forgot_password.dart';
import 'package:desain_awal/screens/login_succes/login_succes_screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class SignForm extends StatefulWidget {
  SignForm({Key key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  // untuk validasi
  final _fromKey = GlobalKey<FormState>();
  // untuk menangkap error
  final List<String> errors = [];
  String email;
  String password;
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            children: [
              Checkbox(
                  value: false,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  }),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.popAndPushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(15),
                      color: kPrimaryColor,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          FormError(errors: errors),
          DefaultButton(
            text: "LOGIN",
            press: () {
              if (_fromKey.currentState.validate()) {
                _fromKey.currentState.save();
                // datanya nanti ada disini

                Navigator.pushNamed(context, LoginSuccesScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
            return "";
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
            return "";
          });
          return "";
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Masukan Password",
        labelText: "PASSWORD",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // agar tulisan email berada di atas label
        suffixIcon: CostumSuffixIcon(
          svgIcon: "assets/icons/smart-house.svg",
        ),

        contentPadding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
        // membuat tulisan agak menjorok horizontal atau kesamping
        // membuat border menjadi lebih besar kebawah dengan vertical
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          // membuat border menjadi bulat dengan point 28
          borderSide: BorderSide(color: kTextColor),
          // memberikan warna ketika kursos berada di email
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidationRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
          return "";
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidationRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Masukan Email kamu",
        labelText: "EMAIL",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // agar tulisan email berada di atas label
        suffixIcon: CostumSuffixIcon(
          svgIcon: "assets/icons/email.svg",
        ),

        contentPadding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
        // membuat tulisan agak menjorok horizontal atau kesamping
        // membuat border menjadi lebih besar kebawah dengan vertical
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          // membuat border menjadi bulat dengan point 28
          borderSide: BorderSide(color: kTextColor),
          // memberikan warna ketika kursos berada di email
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
      ),
    );
  }
}
