import 'package:flutter/material.dart';
import 'package:prjecttp0/eCommerce/data/list_prouit.dart';
import 'package:prjecttp0/eCommerce/model/class_produit.dart';

class DetailProduitScreen extends StatefulWidget {
  Produit produit = ListProduit().produits[0];
  DetailProduitScreen({super.key, required this.produit});

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
      body: Container(
        color: Colors.amber,
        child: Column(
          children: [
            Container(
              child: Image.network(
                widget.produit.imageUrl,
                fit: BoxFit.contain,
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.45,
            ),
            Text(
              widget.produit.id,
              style: TextStyle(fontSize: 18),
            ),
            Divider(
              height: 5,
              color: Colors.black,
            ),
            Text("\$${widget.produit.price.toStringAsFixed(2)}"),
            Divider(
              height: 5,
              color: Colors.black,
            ),
            Text("Details : ${widget.produit.description}"),
            Divider(
              height: 5,
              color: Colors.black,
            ),
            Text("Brand : ${widget.produit.brand}"),
            Divider(
              height: 5,
              color: Colors.black,
            ),
            Text("Quantity : ${widget.produit.quantity.toString()}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Add To Cart")),
                ElevatedButton(onPressed: () {}, child: Text("BUY")),
                Icon(Icons.favorite)
              ],
            )
          ],
        ),
      ),
    );
  }
}
