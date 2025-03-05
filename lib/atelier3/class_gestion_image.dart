import 'package:flutter/material.dart';

class ImageManager extends StatefulWidget {
  const ImageManager({super.key});

  @override
  State<ImageManager> createState() => _ImageManagerState();
}

class _ImageManagerState extends State<ImageManager> {
  int x = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestion icone"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        x++;
                      });
                    },
                    child: Text("Changer Image"),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.amber,
                    child: Image.network(
                      "https://picsum.photos/$x",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        x++;
                      });
                    },
                    child: Text("Changer Image"),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.amber,
                    child: Image.asset(
                      "assets/img/lol/kata5jpg.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
