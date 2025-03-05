import 'package:flutter/material.dart';

void main() {
  var myapp = MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text("My First app"),
      centerTitle: true,
    ),
    body: Text("Welcome to my app"),
  ));
  runApp(myapp);
}
