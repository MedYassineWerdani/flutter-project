import 'dart:math';

import 'package:flutter/material.dart';

class ChangerCouleur extends StatefulWidget {
  const ChangerCouleur({super.key});

  @override
  State<ChangerCouleur> createState() => _ChangerCouleurState();
}

class _ChangerCouleurState extends State<ChangerCouleur> {
  Color? couleur = Colors.amber;
  List<Color> colors = [
    Colors.redAccent,
    Colors.purpleAccent,
    Colors.cyan,
    Colors.deepOrange
  ];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: couleur,
      appBar: AppBar(
        title: Text("Changer Couleur"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              setState(() {
                // if (couleur == Colors.red)
                //   couleur = Colors.amber;
                // else if (couleur == Colors.amber) couleur = Colors.red;

                //_change_colors();

                couleur = Color.fromARGB(
                    Random().nextInt(255),
                    Random().nextInt(255),
                    Random().nextInt(255),
                    Random().nextInt(255));
              });
            },
            child: Text("Change Color")),
      ),
    );
  }

  void _change_colors() {
    if (i < colors.length - 1) {
      i++;
    } else {
      i = 0;
    }

    couleur = colors[i];
  }
}
