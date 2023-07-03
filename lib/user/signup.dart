import 'package:flutter/material.dart';
class Dixon {
   InputDecoration getContainer () {
    return InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(fontSize:25, color:Colors.indigoAccent ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
    );
  }
}