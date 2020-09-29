import 'package:flutter/material.dart';

// 2. kita membuat size untuk config data
class SizeConfig {
  // 3. kita memberikan 5 variable yang masing masing variable
  // mendefinisikan nilai

  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  // 4, kita void nilainya

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// 5, kita ambil properti untuk tinggi dari per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 6. 812 px layout dari defaut yang akan kita gunakan
  // kemudian tinggi dikali dengan screen default
  return (inputHeight / 812.0) * screenHeight;
}

// 7. kita mengatur unttuk properti lebar dari screen yang kita gunakan
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 8. lebar default yang kita gunakan sesuai desain adalah 375.0
  return (inputWidth / 375.0) * screenWidth;
}
