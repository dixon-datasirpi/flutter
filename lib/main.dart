import 'package:flutter/material.dart';

import 'user/login.dart';
import 'package:ds_attendence/user/register.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DataSirpi Attendence',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: Login(),
    );
  }
}