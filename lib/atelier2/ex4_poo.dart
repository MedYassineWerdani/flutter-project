import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Compteur(),
  ));
}

class Compteur extends StatefulWidget {
  const Compteur({super.key});

  @override
  State<Compteur> createState() => _CompteurState();
}

class _CompteurState extends State<Compteur> {
  int cpt = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              addButton("+", Colors.blue, Icon(Icons.thumb_up), () {
                setState(() {
                  cpt++;
                  print("cpt = $cpt");
                });
              }),
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                cpt.toString(),
                style: TextStyle(color: Colors.red),
              ),
              Padding(padding: EdgeInsets.only(left: 20)),
              addButton("-", Colors.red, Icon(Icons.thumb_down), () {
                setState(() {
                  cpt--;
                  print("cpt = $cpt");
                });
              }),
            ],
          ),
        ));
  }

  Widget addButton(String txt, Color? color, Icon ico, Function()? operation) {
    return ElevatedButton(
      onPressed: operation,
      child: ico,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
    );
  }
}
