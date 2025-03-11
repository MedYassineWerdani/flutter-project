import 'package:flutter/material.dart';
import '../../model/class_produit.dart';

class WidgetProduit extends StatefulWidget {
  final Produit produit;

  const WidgetProduit({super.key, required this.produit});

  @override
  State<WidgetProduit> createState() => _WidgetProduitState();
}

class _WidgetProduitState extends State<WidgetProduit> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.2,
          child: InkWell(
            child: Image.network(
              widget.produit.imageUrl,
              fit: BoxFit.fill,
            ),
            onTap: () {
              print("Clicked on product: ${widget.produit.title}");
            },
          ),
        ),
        Text(
          widget.produit.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          '\$${widget.produit.price.toStringAsFixed(2)}',
          style: TextStyle(color: Colors.green),
        ),
      ],
    );
  }
}
