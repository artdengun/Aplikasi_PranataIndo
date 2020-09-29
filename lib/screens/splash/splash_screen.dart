import 'package:desain_awal/screens/splash/components/body.dart';
import 'package:desain_awal/size_config.dart';
import 'package:flutter/material.dart';

// 14. tahap pembuatan screencast

// 15. kita buat stateles widget
// tapi sebelumnya kita buat body dart dicomponent dart
class SplashScreen extends StatelessWidget {
  static String routeName   = "/spllash";
  @override
  Widget build(BuildContext context) {
    // 22 tambahkan baris perintah
    SizeConfig().init(context);
    // kemudian kita lari ke body
    return Scaffold(
      // 18. kita definisikan si body, setelah ini kita bermain di body
      body: Body(),
    );
  }
}
