import 'dart:math';

import 'package:flutter/material.dart';

class IconManager extends StatefulWidget {
  const IconManager({super.key});

  @override
  State<IconManager> createState() => _IconManagerState();
}

class _IconManagerState extends State<IconManager> {
  //icon widegt => Icon
  // des Noms d'icone => Icons.add => IconData

  // partie2:
  //chaque icon => CODE unique
  // code => Hexadecimal
  // Taille du code => 6 caracteres
  // => 0XE???
  //    [0..9A..F]
  // ==> IconData

  IconData genererCode() {
    String ch = "0123456789ABCDEF";
    String code = "0XE";
    int i = 0;
    for (int j = 0; j < 3; j++) {
      i = Random().nextInt(ch.length);
      code += ch[i];
    }
    //print(code);
    return IconData(int.parse(code), fontFamily: "MaterialIcons");
  }

  List<IconData> mesIcones = [
    Icons.add,
    Icons.account_circle_sharp,
    Icons.face
  ];
  IconData icone = Icons.read_more;
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestion icone"),
      ),
      body: Row(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      icone = genererCode();
                      /* if (i < mesIcones.length - 1) {
                        i++;
                      } else {
                        i = 0;
                      }
                      icone = mesIcones[i]; */
                    });
                  },
                  child: Text("Changer Icone"),
                ),
                Icon(icone, size: 60, color: Colors.red),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      icone = genererCode();
                      /* if (i < mesIcones.length - 1) {
                        i++;
                      } else {
                        i = 0;
                      }
                      icone = mesIcones[i]; */
                    });
                  },
                  child: Text("Changer Icone"),
                ),
                Icon(icone, size: 60, color: Colors.red),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
