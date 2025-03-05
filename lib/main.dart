import 'package:flutter/material.dart';
// import 'package:prjecttp0/atelier3/class_gestion_icon.dart';
// import 'package:prjecttp0/atelier3/class_gestion_image.dart';
import 'package:prjecttp0/atelier3/class_grid_view.dart';
// import 'atelier2/ex1_poo.dart';
// import 'atelier2/ex4_poo.dart';

// import 'atelier2/color_change.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: //Exercice2(),
          //Compteur(),
          //ChangerCouleur(),
          Gallery(),
      // IconManager(),
      // ImageManager(),
    );
  }
}
