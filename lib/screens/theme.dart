import 'package:flutter/material.dart';

import '../constants.dart';

ThemeData theme() {
  return ThemeData(
    // 12. mengatur warna dan fonts
    backgroundColor: Colors.white,
    fontFamily: "Muli",
    // kita buat agar appbar transfaran #4
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.white, // untuk memberikan warna
        elevation: 0, // untuk menghilangkan grid
        brightness: Brightness.light,
        // memberikan warna brigtnest pada screen kembali
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: TextTheme(
            headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18))),

    // memberikan warna hitam pada icon theme

    // Kembali ke sign_screen_dart

    // 13. mengatur gaya tulisan body
    textTheme: TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
