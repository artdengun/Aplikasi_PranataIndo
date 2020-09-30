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

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

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
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
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
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
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
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        labelText: "Enter Your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CostumSuffixIcon(
          svgIcon: "assets/icons/smart-house.svg",
        ),
      ),
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      decoration: InputDecoration(
        hintText: "Masukan Email kamu",
        labelText: "EMAIL",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CostumSuffixIcon(
          svgIcon: "assets/icons/email.svg",
        ),
      ),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidationRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidationRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
    );
  }
}
