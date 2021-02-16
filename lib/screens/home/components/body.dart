import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/home/components/Header_with_searchbox.dart';
import 'package:food_app/screens/home/components/recomend_foods.dart';
import 'package:food_app/screens/home/components/title_with_more_btn.dart';

import 'featured_foods.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            press: () {},
          ),
          RecomendsFoods(),
          TitleWithMoreBtn(
            title: "Featured Foods",
            press: () {},
          ),
          FeaturedFoods(),
          SizedBox(height: kDefultPadding,)
        ],
      ),
    );
  }
}
