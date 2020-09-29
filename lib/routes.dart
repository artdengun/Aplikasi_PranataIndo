import 'package:desain_awal/screens/Dashboard/dashboard_menu_screen.dart';
import 'package:desain_awal/screens/Sign_in/sign_in.dart';
import 'package:desain_awal/screens/Sign_up/Sign_Up_Screen.dart';
import 'package:desain_awal/screens/forgot_password/forgot_password.dart';
import 'package:desain_awal/screens/login_succes/login_succes_screen.dart';
import 'package:desain_awal/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

// we use name route
// All our routes will be availble here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  // lanjut ke body.dart di component screen #2
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccesScreen.routeName: (context) => LoginSuccesScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  DashboardMenuScreen.routeName: (context) => DashboardMenuScreen(),
};
