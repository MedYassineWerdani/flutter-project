import 'package:flutter/material.dart';
import 'package:prjecttp0/eCommerce/screens/list_produit.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("User1"),
            accountEmail: Text("User1@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://static.vecteezy.com/system/resources/previews/024/183/535/original/male-avatar-portrait-of-a-young-man-with-glasses-illustration-of-male-character-in-modern-color-style-vector.jpg"),
            ),
          ),
          ListTile(
            title: Text("Acceuil"),
            leading: Icon(Icons.home),
            onTap: () {
              // Navigator.pushNamed(context, '/home');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ListProduitScreen()));
            },
          ),
          ListTile(
              title: Text("Liste des Produits"),
              leading: Icon(Icons.list),
              onTap: () {
                Navigator.pushNamed(context, '/productlist');
              }),
          ListTile(
              title: Text("Panier"),
              leading: Icon(Icons.shopping_bag_outlined),
              onTap: () {
                Navigator.pushNamed(context, '/shoppingcart');
              }),
          ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.face),
              onTap: () {
                Navigator.pushNamed(context, '/homprofilee');
              })
        ],
      ),
    );
  }
}
