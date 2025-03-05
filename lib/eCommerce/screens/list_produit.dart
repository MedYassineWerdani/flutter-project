import 'package:flutter/material.dart';

class ListProduitScreen extends StatefulWidget {
  const ListProduitScreen({super.key});

  @override
  State<ListProduitScreen> createState() => _ListProduitScreenState();
}

class _ListProduitScreenState extends State<ListProduitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products List Page"),
      ),
      body: Text("Products List page"),
    );
  }
}
