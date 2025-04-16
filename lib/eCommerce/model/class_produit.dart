// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Produit {
  String id;
  String title;
  String description;
  double price;
  String imageUrl;
  String brand;
  String produitCategoryName;
  int quantity; //qte en stock
  bool isFavorite;
  Produit({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.brand,
    required this.produitCategoryName,
    required this.quantity,
    required this.isFavorite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'brand': brand,
      'produitCategoryName': produitCategoryName,
      'quantity': quantity,
      'isFavorite': isFavorite,
    };
  }

  factory Produit.fromMap(Map<String, dynamic> map) {
    return Produit(
      id: map['id'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      price: map['price'] as double,
      imageUrl: map['imageUrl'] as String,
      brand: map['brand'] as String,
      produitCategoryName: map['produitCategoryName'] as String,
      quantity: map['quantity'] as int,
      isFavorite: map['isFavorite'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Produit.fromJson(String source) =>
      Produit.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Produit(id: $id, title: $title, description: $description, price: $price, imageUrl: $imageUrl, brand: $brand, produitCategoryName: $produitCategoryName, quantity: $quantity, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(covariant Produit other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.description == description &&
        other.price == price &&
        other.imageUrl == imageUrl &&
        other.brand == brand &&
        other.produitCategoryName == produitCategoryName &&
        other.quantity == quantity &&
        other.isFavorite == isFavorite;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        price.hashCode ^
        imageUrl.hashCode ^
        brand.hashCode ^
        produitCategoryName.hashCode ^
        quantity.hashCode ^
        isFavorite.hashCode;
  }
}
