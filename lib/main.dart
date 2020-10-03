// ignore: unused_import
import 'package:desain_awal/Constants.dart';
import 'package:desain_awal/Controller/EmailAuthentication.dart';
import 'package:desain_awal/Controller/wrapperEmail.dart';
import 'package:desain_awal/Routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/splash/Splash_Screen.dart';
import 'screens/Theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: EmailAuthentication.firebaseUserStream,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aplikasi Pranata',
        theme: theme(),
        // home: SplashScreen(),
        initialRoute: SplashScreen.routeName,
        routes: routes,
        home: WrapperEmail(),
      ),
    );
  }
}
