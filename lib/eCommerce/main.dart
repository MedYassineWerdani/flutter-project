import 'package:flutter/material.dart';
// import 'package:prjecttp0/eCommerce/screens/home_page.dart';
import 'package:prjecttp0/eCommerce/screens/nav_bar.dart';

void main() {
  runApp(ECommerce());
}

class ECommerce extends StatelessWidget {
  const ECommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NavBarScreen());
  }
}
