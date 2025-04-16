import 'package:flutter/material.dart';
import 'package:prjecttp0/eCommerce/model/class_produit.dart';
import 'package:prjecttp0/eCommerce/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class DetailProduitScreen extends StatefulWidget {
  // Produit produit = ListProduit().produits[0];
  DetailProduitScreen({super.key});

  @override
  State<DetailProduitScreen> createState() => _DetailProduitScreenState();
}

class _DetailProduitScreenState extends State<DetailProduitScreen> {
  @override
  Widget build(BuildContext context) {
    Produit produit = ModalRoute.of(context)!.settings.arguments as Produit;
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
                produit.imageUrl,
                fit: BoxFit.contain,
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.45,
            ),
            Text(
              produit.id,
              style: TextStyle(fontSize: 18),
            ),
            Divider(
              height: 5,
              color: Colors.black,
            ),
            Text("\$${produit.price.toStringAsFixed(2)}"),
            Divider(
              height: 5,
              color: Colors.black,
            ),
            Text("Details : ${produit.description}"),
            Divider(
              height: 5,
              color: Colors.black,
            ),
            Text("Brand : ${produit.brand}"),
            Divider(
              height: 5,
              color: Colors.black,
            ),
            Text("Quantity : ${produit.quantity.toString()}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      afficherMessage(context, "Prodiut Ajouter Au Panier");
                      Provider.of<PanierProvider>(context, listen: false)
                          .ajouterProduit(
                              produit.id,
                              produit.price,
                              produit.title,
                              produit.description,
                              produit.imageUrl);
                    },
                    child: Text("Add To Cart")),
                ElevatedButton(onPressed: () {}, child: Text("Buy")),
                Icon(Icons.favorite)
              ],
            )
          ],
        ),
      ),
    );
  }

  afficherMessage(BuildContext context, String msg) {
    var x = SnackBar(
      content: Text(msg),
      duration: Duration(seconds: 5),
    );

    ScaffoldMessenger.of(context).showSnackBar(x);
  }
}
