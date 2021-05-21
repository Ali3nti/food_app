import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedApps extends StatelessWidget {
  const FeaturedApps({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryFoodCard(
            image: "assets/images/Banner (1).png",
            press: () {},
          ),
          CategoryFoodCard(
            image: "assets/images/Banner (2).png",
            press: () {},
          ),
          CategoryFoodCard(
            image: "assets/images/Banner (3).png",
            press: () {},
          ),
          CategoryFoodCard(
            image: "assets/images/Banner (4).png",
            press: () {},
          ),
          CategoryFoodCard(
            image: "assets/images/Banner (5).png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class CategoryFoodCard extends StatelessWidget {
  const CategoryFoodCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);

  final String image;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefultPadding,
            top: kDefultPadding / 2,
            bottom: kDefultPadding / 2),
        width: size.width * 0.5,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
