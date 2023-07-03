import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  //  Login({Key? key}) : super(key: key);
  @override
  Home_Page createState() => Home_Page();
}

// ignore: camel_case_types
class Home_Page extends State<Home> {
  @override 
   Widget build(BuildContext context) {
     return Scaffold(
      appBar: new AppBar(
        title: new Text("Data Sirpi"),
        centerTitle: true,
        toolbarHeight: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
     );
     }
}