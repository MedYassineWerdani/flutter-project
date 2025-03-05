import 'package:flutter/material.dart';

class Exercice2 extends StatelessWidget {
  const Exercice2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exercice1", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              addButton("Button 1", Colors.blueGrey),
              Expanded(
                flex: 3,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.blue,
                  size: 70.0,
                ),
              ),
              SizedBox(
                width: 120,
                height: 100,
                child: addButton("Button 2", Colors.deepOrange),
              ),
              Expanded(
                child: Icon(
                  Icons.add_circle,
                  color: Colors.green,
                  size: 80,
                ),
                flex: 2,
              ),
              Padding(padding: EdgeInsets.only(left: 8)),
              SizedBox(
                width: 200,
                height: 100,
                child: addButton("Button 3", Colors.amber),
              ),
            ],
          ),
        ));
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
}
