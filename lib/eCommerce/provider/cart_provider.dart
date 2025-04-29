import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/class_produit_panier.dart';

class PanierProvider with ChangeNotifier {
  List<ProduitPanier> _panier = [];

  Future loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    final data = sp.getString("cart");
    if(data==null){
      _panier = [];
    } else {
      final List<dynamic> decodedData = json.decode(data);
      _panier = decodedData.map(item) => ProduitPanier.fromJson(item).toList();

    }
    notifyListeners();

  }

  Future saveData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    final datajson =
        json.encode(_panier.map((article) => article.toJson()).toList());
    sp.setString("cart", datajson);
  }

  List<ProduitPanier> get Panier {
    return _panier;
  }

  void ajouterProduit(String productId, double price, String title,
      String description, String imageUrl) {
    ProduitPanier? produitTrouve = _panier.firstWhere(
      (art) {
        if (art.id == productId) {
          art.quantite += 1;
          return true;
        }
        return false;
      },
      orElse: () {
        print("Ajout new produit :$productId");
        final nouveauProduit = ProduitPanier(
          id: productId,
          title: title,
          description: description,
          price: price,
          imageUrl: imageUrl,
          quantite: 1,
        );
        _panier.add(nouveauProduit);
        return nouveauProduit;
      },
    );
    saveData();
    notifyListeners();
  }
}
