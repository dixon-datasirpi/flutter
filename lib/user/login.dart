import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  //  Login({Key? key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final passwordContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: new AppBar(
      //   title: new Text("Data Sirpi"),
      //   centerTitle: true,
      //   toolbarHeight: 4r0,
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      // ),
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 50),
              child: Column(
                children: [
                  //dataSirpi Logo
                  Center(
                      child: Image.asset(
                    'assets/images/ds_logo.jpeg',
                    height: 150,
                    width: 200,
                  )),
                  //login pic image
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: Image.asset(
                    'assets/images/login_pic.jpg',
                    height: 100,
                    width: 200,
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'User Id',
                        labelStyle: TextStyle(fontSize: 25, color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    // validator: (value) => ,
                    controller: passwordContoller,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle:
                            TextStyle(fontSize: 25, color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Forget Password",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      child: Text('Login'),
                      onPressed: () {
                        print("login clicked");
                      }),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Not a user? lets signup',
                    ),
                  ),
                ],
              ))),
    );
  }
}
