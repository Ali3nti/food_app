import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps_exercise/constants.dart';
import 'package:flutter_apps_exercise/activity/home/components/Header_with_searchbox.dart';
import 'package:flutter_apps_exercise/activity/home/components/recomend_apps.dart';
import 'package:flutter_apps_exercise/activity/home/components/title_with_more_btn.dart';

import 'featured_apps.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommended",
            press: () {},
          ),
          RecommendsApps(),
          TitleWithMoreBtn(
            title: "Featured Apps",
            press: () {},
          ),
          FeaturedApps(),
          SizedBox(height: kDefultPadding,)
        ],
      ),
    );
  }
}
