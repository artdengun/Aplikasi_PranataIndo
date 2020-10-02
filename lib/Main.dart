// ignore: unused_import
import 'package:desain_awal/Constants.dart';
import 'package:desain_awal/Routes.dart';
import 'package:flutter/material.dart';
import 'screens/splash/Splash_Screen.dart';
import 'screens/Theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Pranata',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
