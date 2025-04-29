import 'package:flutter/material.dart';
import 'package:prjecttp0/eCommerce/provider/cart_provider.dart';
import 'package:prjecttp0/eCommerce/screens/detail_produit.dart';
import 'package:prjecttp0/eCommerce/screens/home_page.dart';
import 'package:prjecttp0/eCommerce/screens/list_produit.dart';
import 'package:prjecttp0/eCommerce/screens/nav_bar.dart';
import 'package:prjecttp0/eCommerce/screens/panier.dart';
import 'package:prjecttp0/eCommerce/screens/user_info.dart';
import 'package:provider/provider.dart';
  
void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => PanierProvider())],
    child: ECommerce(),
  ));
}

class ECommerce extends StatefulWidget {
  const ECommerce({super.key});

  @override
  State<ECommerce> createState() => _ECommerceState();
}

class _ECommerceState extends State<ECommerce> {
  @override
  void initState() {
    ProxyProvider0.of<PanierProvider>
    super.initState();
  
    
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBarScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/productlist': (context) => ListProduitScreen(),
        '/profile': (context) => UserProfileScreen(),
        '/shoppingcart': (context) => PanierScreen(),
        '/productdetails': (context) => DetailProduitScreen(),
      },
    );
  }
}
