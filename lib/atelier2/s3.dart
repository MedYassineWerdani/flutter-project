import 'package:flutter/material.dart';

void main() {
  var myapp = MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Exercice3", style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                addButton("Button 1", Colors.blueGrey),
                Icon(
                  Icons.ac_unit,
                  color: Colors.blue,
                  size: 70.0,
                ),
                SizedBox(
                  width: 120,
                  height: 80,
                  child: addButton("Button 2", Colors.deepOrange),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                SizedBox(
                  width: 200,
                  height: 80,
                  child: addButton("Button 3", Colors.amber),
                ),
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
