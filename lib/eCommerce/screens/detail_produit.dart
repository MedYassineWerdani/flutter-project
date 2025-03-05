import 'package:flutter/material.dart';

class DetailProduitScreen extends StatefulWidget {
  const DetailProduitScreen({super.key});

  @override
  State<DetailProduitScreen> createState() => _DetailProduitScreenState();
}

class _DetailProduitScreenState extends State<DetailProduitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details Page"),
      ),
      body: Text("Product Details page"),
    );
  }
}
