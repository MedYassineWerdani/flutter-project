import 'package:flutter/material.dart';
import '../data/list_prouit.dart';
import 'my_widgets/widget_un_produit.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(ListProduit().produits.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: WidgetProduit(produit: ListProduit().produits[index]),
              );
            }),
          ),
        ),
      ),
    );
  }
}
