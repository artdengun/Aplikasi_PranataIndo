import 'package:desain_awal/components/Custom_Suffix_Icons.dart';
import 'package:desain_awal/components/Default_Button.dart';
import 'package:desain_awal/components/Form_Error.dart';
import 'package:desain_awal/screens/Otp/Otp_Screen.dart';
import 'package:flutter/material.dart';

import '../../../Constants.dart';
import '../../../Size_config.dart';


class CompleteProfilForm extends StatefulWidget {
  @override
  _CompleteProfilFormState createState() => _CompleteProfilFormState();
}

class _CompleteProfilFormState extends State<CompleteProfilForm> {
  final _fromKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String firstName;
  String lastName;
  String phoneNumber;
  String address;

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
          SizedBox(height: getProportionateScreenHeight(30),),
          TextFormField(
            keyboardType: TextInputType.text,
            onSaved: (newValue) => firstName = newValue,
            decoration: InputDecoration(
              hintText: "Nama Pertama Anda",
              labelText: "FirstName",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CostumSuffixIcon(
                svgIcon: "assets/icons/card.svg",
              ),
            ),
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kNameNullError);
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty) {
                addError(error: kNameNullError);
                return "";
              }
              return null;
            },
          ),
          SizedBox(height: getProportionateScreenHeight(30),),
          TextFormField(
            onSaved: (newValue) => lastName = newValue,
            decoration: InputDecoration(
              hintText: "Nama Terakhir Anda",
              labelText: "Lastname",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CostumSuffixIcon(
                svgIcon: "assets/icons/card1.svg",
              ),
            ),
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kNameLastNullError);
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty) {
                addError(error: kNameLastNullError);
                return "";
              }
              return null;
            },
          ),
          SizedBox(height: getProportionateScreenHeight(30),),
          TextFormField(
            keyboardType: TextInputType.phone,
            onSaved: (newValue) => phoneNumber = newValue,
            decoration: InputDecoration(
              hintText: "Nomor Handphone Anda",
              labelText: "Phone Number",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CostumSuffixIcon(
                svgIcon: "assets/icons/hp.svg",
              ),
            ),
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kPhoneNumberNullError);
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty) {
                addError(error: kPhoneNumberNullError);
                return "";
              }
              return null;
            },
          ),
          SizedBox(height: getProportionateScreenHeight(30),),
          TextFormField(
            keyboardType: TextInputType.streetAddress,
            onSaved: (newValue) => address = newValue,
            decoration: InputDecoration(
              hintText: "Alamat Lengkap",
              labelText: "Address",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CostumSuffixIcon(
                svgIcon: "assets/icons/address.svg",
              ),
            ),
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kAddressNullError);
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty) {
                addError(error: kAddressNullError);
                return "";
              }
              return null;
            },
          ),
          FormError(errors: errors),

          SizedBox(height: getProportionateScreenHeight(30),),
          DefaultButton(
            text: "CONTINUE",
            press: () {
              if (_fromKey.currentState.validate()) {
                // ke OTP SCREEN
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }
}