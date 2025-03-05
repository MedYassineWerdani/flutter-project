import 'package:flutter/material.dart';

void main() {
  var myApp = MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 0, 255),
          appBar: AppBar(
            title: Text(
              "Welcome",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Color.fromARGB(128, 100, 100, 100),
            centerTitle: true,
          ),
          body: Text("Good day everyone!",
              style: TextStyle(color: Colors.blue))));
  runApp(myApp);
}
