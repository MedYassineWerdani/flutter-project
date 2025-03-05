import 'package:flutter/material.dart';
// import 'package:prjecttp0/eCommerce/constant_values/my_images.dart';

// ignore: must_be_immutable
class WidgetCategoryHome extends StatelessWidget {
  String nomImage;
  String textImage;
  WidgetCategoryHome(
      {super.key, required this.nomImage, required this.textImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: InkWell(
            child: Image.asset(
              nomImage,
              fit: BoxFit.fill,
            ),
            onTap: () {
              print("Clicked on image");
            },
          ),
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.2,
        ),
        Text(textImage)
      ],
    );
  }
}
