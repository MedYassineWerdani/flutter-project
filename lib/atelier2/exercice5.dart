import 'package:flutter/material.dart';

void main() {
  var myapp = MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Exercice5", style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                addButton("+", Colors.blue),
                Padding(padding: EdgeInsets.only(left: 20)),
                Text(
                  "0",
                  style: TextStyle(color: Colors.red),
                ),
                Padding(padding: EdgeInsets.only(left: 20)),
                addButton("-", Colors.blue),
              ],
            ),
          )));
  runApp(myapp);
}

Widget addButton(String txt, Color? color) {
  return ElevatedButton(
    onPressed: () {
      print("Clicked on " + txt);
    },
    child: Text(txt),
    style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
  );
}
