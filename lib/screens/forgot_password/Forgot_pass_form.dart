import 'package:desain_awal/components/CUstom_suffix_icons.dart';
import 'package:desain_awal/components/default_button.dart';
import 'package:desain_awal/components/form_error.dart';
import 'package:desain_awal/components/no_Account_Text.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class ForgotPassForm extends StatefulWidget {
  ForgotPassForm({Key key}) : super(key: key);

  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          TextFormField(
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
              }
              return null;
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

              contentPadding:
                  EdgeInsets.symmetric(horizontal: 45, vertical: 20),
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
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          FormError(errors: errors),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          DefaultButton(
            text: "Kirim",
            press: () {
              if (_formKey.currentState.validate()) {
                // do what you want to do
              }
            },
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          NoAccountText(),
        ],
      ),
    );
  }
}
