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

// form error
final RegExp emailValidationRegExp =
    RegExp(r"^[a-zA-Z0-0.]+@[a-zA-Z0-9]+\.[A-Za-z]+");
const String kEmailNullError = "Masukan Email kamu";
const String kInvalidEmailError = "Masukan Email Kamu Dengan Benar";
const String kPassNullError = "Masukan password kamu";
const String kShortPassError = "Password Terlalu Pendek";
const String kMatchPassError = "Password Tidak Cocok, Silahkan Coba lagi";
