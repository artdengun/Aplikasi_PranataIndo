import 'package:flutter/material.dart';

import 'component/Body.dart';


class CompleteProfilScreen extends StatelessWidget {
  static String routeName = "/profil";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}
