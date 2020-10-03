import 'package:desain_awal/Controller/EmailAuthentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'component/Dashboard.dart';

class DashboardMenuScreen extends StatelessWidget {
  static String routeName = "/dashboard";
  final FirebaseUser user;
  DashboardMenuScreen(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DASHBOARD MENU"),
        actions: [
          Text(user.uid),
          RaisedButton(onPressed: () async {
            EmailAuthentication.signOut();
          }),
        ],
      ),
      body: Dashboard(),
    );
  }
}
