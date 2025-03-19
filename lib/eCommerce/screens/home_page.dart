import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';
import 'package:prjecttp0/eCommerce/constant_values/my_images.dart';
// import 'package:prjecttp0/eCommerce/constant_values/my_images.dart';
import 'package:prjecttp0/eCommerce/screens/my_widgets/widget_category_home.dart';

import 'my_widgets/widget_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.20,
            child: Carousel(
              hasBorderRadius: true,
              boxFit: BoxFit.cover,
              autoplay: true,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 800),
              dotSize: 6.0,
              dotIncreasedColor: Color(0xFFFF335C),
              dotBgColor: Colors.transparent,
              dotPosition: DotPosition.bottomCenter,
              dotVerticalPadding: 10.0,
              dotColor: Colors.grey,
              showIndicator: true,
              indicatorBgPadding: 7.0,
              images: List.generate(MyImages.CarousselImages.length, (index) {
                return Image.asset(MyImages.CarousselImages[index]);
              }),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Center(
                child: Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  List.generate(MyImages.CategoriesImages.length, (index) {
                return Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: WidgetCategoryHome(
                      nomImage: MyImages.CategoriesImages[index],
                      textImage: MyImages.textImageCategories[index],
                    ));
              }),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Center(
                child: Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  List.generate(MyImages.CategoriesImages.length, (index) {
                return Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: WidgetCategoryHome(
                      nomImage: MyImages.CategoriesImages[index],
                      textImage: MyImages.textImageCategories[index],
                    ));
              }),
            ),
          )
        ],
      ),
    );
  }
}
