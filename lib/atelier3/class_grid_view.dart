import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  int x = 0;
  int y = 240;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  x++;
                  y++;
                });
              },
              child: Text("Add button")),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(x, (index) {
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    width: 250,
                    height: 250,
                    color: Colors.amber,
                    child: Image.network(
                      "https://picsum.photos/$y",
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
