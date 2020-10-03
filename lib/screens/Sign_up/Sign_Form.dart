import 'package:desain_awal/Controller/EmailAuthentication.dart';
import 'package:desain_awal/components/Custom_Suffix_Icons.dart';
import 'package:desain_awal/components/Default_Button.dart';
import 'package:desain_awal/components/Form_Error.dart';
import 'package:desain_awal/Constants.dart';
import 'package:desain_awal/Size_config.dart';
import 'package:flutter/material.dart';

// google sign in

class SignUpForm extends StatefulWidget {
  SignUpForm({Key key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  // google sign in
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  List<String> errors = [];

  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  // ignore: non_constant_identifier_names
  String confrim_password;

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              onSaved: (newValue) => email = newValue,
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Masukan Email kamu",
                labelText: "EMAIL",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CostumSuffixIcon(
                  svgIcon: "assets/icons/message.svg",
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
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Container(
            child: TextFormField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Enter Your Password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CostumSuffixIcon(
                  svgIcon: "assets/icons/user.svg",
                ),
              ),
              onSaved: (newValue) => password = newValue,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  removeError(error: kMatchPassError);
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
                password = value;
                return null;
              },
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Container(
            child: TextFormField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Confirm Password",
                labelText: "Re-enter your password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CostumSuffixIcon(
                  svgIcon: "assets/icons/user.svg",
                ),
              ),
              onSaved: (newValue) => confrim_password = newValue,
              onChanged: (value) {
                if (password == confrim_password) {
                  removeError(error: kPassNullError);
                } else if (value.length >= 8) {
                  removeError(error: kShortPassError);
                }
                return null;
              },
              validator: (value) {
                if (value.isEmpty) {
                  return "";
                } else if (password != value) {
                  addError(error: kMatchPassError);
                  return "";
                }
                return null;
              },
            ),
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          DefaultButton(
            text: "CONTINUE",
            press: () async {
              if (_formKey.currentState.validate()) {
                await EmailAuthentication.signUp(
                    emailController.text, passwordController.text);
              }
            },
          )
        ],
      ),
    );
  }
}
