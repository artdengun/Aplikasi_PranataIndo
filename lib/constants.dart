import 'package:desain_awal/size_config.dart';
import 'package:flutter/material.dart';

// 1 . Kita membuat variable dengan warna yang sudah ditentukan
// warna yang sudah ditentukan ini akan kita gunakan nanti untuk
// pewarnaan atau pemberian warna pada aplikasi yang kita buat sekarang

const kPrimaryColor = Colors.blue;
const kPimaryLightColor = Color(0XFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFF979797)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(microseconds: 200);

final headingStyle = TextStyle(
    color: Colors.black,
    fontSize: getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold);

// form error
final RegExp emailValidationRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Masukan Email kamu";
const String kInvalidEmailError = "Masukan Email Kamu Dengan Benar";
const String kPassNullError = "Masukan password kamu";
const String kShortPassError = "Password Terlalu Pendek";
const String kMatchPassError = "Password Tidak Cocok, Silahkan Coba lagi";
const String kNameNullError = "Silahkan Masukan Nama anda";
const String kNameLastNullError = "Silahkan Masukan Nama Terakhir anda";
const String kPhoneNumberNullError = "Silahkan Masukan Nomer Handaphone anda";
const String kAddressNullError = "Silahkan Masukan Alamat Anda";

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: getProportionateScreenWidth(15),
  ),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kTextColor),
  );
}
