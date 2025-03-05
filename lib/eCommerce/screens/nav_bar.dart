import 'package:flutter/material.dart';
import 'package:prjecttp0/eCommerce/screens/home_page.dart';
import 'package:prjecttp0/eCommerce/screens/list_produit.dart';
import 'package:prjecttp0/eCommerce/screens/panier.dart';
import 'package:prjecttp0/eCommerce/screens/user_info.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int selectedIndex = 0;
  List<Widget> myScreens = [
    HomeScreen(),
    ListProduitScreen(),
    PanierScreen(),
    UserProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.list), label: "List Produit"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "Panier"),
          BottomNavigationBarItem(icon: Icon(Icons.face_2), label: "Profile"),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.purple,
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
