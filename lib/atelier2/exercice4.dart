import 'package:flutter/material.dart';

void main() {
  var myapp = MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Exercice4", style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                addButton("+", Colors.blue, Icon(Icons.thumb_up)),
                Padding(padding: EdgeInsets.only(left: 20)),
                Text(
                  "0",
                  style: TextStyle(color: Colors.red),
                ),
                Padding(padding: EdgeInsets.only(left: 20)),
                addButton("-", Colors.red, Icon(Icons.thumb_down)),
              ],
            ),
          )));
  runApp(myapp);
}

Widget addButton(String txt, Color? color, Icon ico) {
  return ElevatedButton(
    onPressed: () {
      print("Clicked on " + txt);
    },
    child: ico,
    style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
  );
}
