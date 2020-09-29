// ignore: unused_import
import 'package:desain_awal/constants.dart';
import 'package:desain_awal/routes.dart';
import 'package:flutter/material.dart';
import 'screens/splash/splash_screen.dart';
import './screens/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
