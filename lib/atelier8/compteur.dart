import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(home: Compteur()));
}

class Compteur extends StatefulWidget {
  const Compteur({super.key});

  @override
  State<Compteur> createState() => _CompteurState();
}

class _CompteurState extends State<Compteur> {
  int cpt = 0;

  Future savedata() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setInt("compteur", cpt);
  }

  Future loaddata() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    int? tmp = sp.getInt("compteur") ?? 0;
    setState(() {
      cpt = tmp;
    });
  }

  @override
  void initState() {
    loaddata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Compteur"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    cpt++;
                    print("Cpt=$cpt");
                  });
                  savedata();
                },
                child: Text("+")),
            Text(
              cpt.toString(),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  cpt--;
                  print("Cpt=$cpt");
                });
                savedata();
              },
              child: Text("-"),
            ),
          ],
        ),
      ),
    );
  }
}
