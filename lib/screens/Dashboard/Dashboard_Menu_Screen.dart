import 'package:desain_awal/screens/Dashboard/component/Body.dart';
import 'package:flutter/material.dart';

class DashboardMenuScreen extends StatelessWidget {
  const DashboardMenuScreen({Key key}) : super(key: key);
  static String routeName = "/dashboard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DASHBOARD"),
      ),
      body: Body(),
    );
  }
}
