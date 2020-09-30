import 'package:desain_awal/components/CUstom_suffix_icons.dart';
import 'package:desain_awal/constants.dart';
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
              Text(
                'Kelangkapan Aplikasi',
                style: headingStyle,
              ),
              Text("Lengkapi Profile anda untuk Melanjutkan ke \n Home Pranata", textAlign: TextAlign.center,),
              CompleteProfilForm(),
            ],
          ),
        ),
      ),
    );
  }
}

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
      if(!errors.contains(error))
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
          TextFormField(
            keyboardType: TextInputType.text,
            onSaved: (newValue) => firstName = newValue,
            decoration: InputDecoration(
              hintText: "Nama Pertama Anda",
              labelText: "FirstName",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CostumSuffixIcon(
                svgIcon: "assets/icons/message.svg",
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
          TextFormField(
            onSaved: (newValue) => lastName = newValue,
            decoration: InputDecoration(
              hintText: "Nama Terakhir Anda",
              labelText: "Lastname",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CostumSuffixIcon(
                svgIcon: "assets/icons/message.svg",
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
          TextFormField(
            keyboardType: TextInputType.phone,
            onSaved: (newValue) => phoneNumber = newValue,
            decoration: InputDecoration(
              hintText: "Nomor Handphone Anda",
              labelText: "Phone Number",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CostumSuffixIcon(
                svgIcon: "assets/icons/message.svg",
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
          TextFormField(
            keyboardType: TextInputType.streetAddress,
            onSaved: (newValue) => address = newValue,
            decoration: InputDecoration(
              hintText: "Alamat Lengkap",
              labelText: "Address",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CostumSuffixIcon(
                svgIcon: "assets/icons/message.svg",
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
        ],
      ),
    );
  }
}

