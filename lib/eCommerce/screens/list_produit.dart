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
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        childAspectRatio: 0.4,
        children: List.generate(ListProduit().produits.length, (index) {
          return WidgetProduit(produit: ListProduit().produits[index]);
        }),
      ),
    );
  }
}
