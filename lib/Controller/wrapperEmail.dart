import 'package:desain_awal/screens/Dashboard/Dashboard_Menu_Screen.dart';
import 'package:desain_awal/screens/Sign_in/Sign_In.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WrapperEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);
    return (firebaseUser == null)
        ? SignInScreen()
        : DashboardMenuScreen(firebaseUser);
  }
}
