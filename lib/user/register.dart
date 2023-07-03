import 'package:flutter/material.dart';
import 'package:ds_attendence/user/login.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
             TextField(
                    decoration: InputDecoration(
                        labelText: 'First Name',
                        labelStyle: TextStyle(fontSize: 25, color: Colors.blueAccent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Last Name',
                        labelStyle: TextStyle(fontSize: 25, color: Colors.blueAccent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(fontSize: 25, color: Colors.blueAccent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Phone NO',
                        labelStyle: TextStyle(fontSize: 25, color: Colors.blueAccent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'password',
                        labelStyle: TextStyle(fontSize: 25, color: Colors.blueAccent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Confirm password',
                        labelStyle: TextStyle(fontSize: 25, color: Colors.blueAccent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
            ElevatedButton(
                child: Text('sign up'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                }),
          ],
        ),
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //   begin: Alignment.topCenter,
        //   end: Alignment.bottomLeft,
        //   stops: [0.1, 0.5, 0.8],
        //   colors: [Colors.blueAccent[500]!, Colors.grey[100]!, Colors.purple[500]!],
        // )),
      ),
    );
  }
}
