import 'package:desain_awal/screens/Dashboard/Dashboard_Menu_Screen.dart';
import 'package:desain_awal/screens/Otp/Otp_Screen.dart';
import 'package:desain_awal/screens/Sign_in/Sign_In.dart';
import 'package:desain_awal/screens/Sign_up/Sign_Up_Screen.dart';
import 'package:desain_awal/screens/complete_profil/Complete_Profil_Screen.dart';
import 'package:desain_awal/screens/forgot_password/Forgot_Password.dart';
import 'package:desain_awal/screens/login_succes/Login_Success_Screen.dart';
import 'package:desain_awal/screens/splash/Splash_Screen.dart';
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
  CompleteProfilScreen.routeName: (context) => CompleteProfilScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
};
