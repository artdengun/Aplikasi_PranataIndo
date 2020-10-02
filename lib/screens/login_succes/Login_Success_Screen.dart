import 'package:desain_awal/screens/login_succes/component/Body.dart';
import 'package:flutter/material.dart';

class LoginSuccesScreen extends StatelessWidget {
  static String routeName = "/login_succes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
      ),
      body: Body(),
    );
  }
}
