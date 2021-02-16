import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/components/my_bottom_navigation_bar.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        child: IconButton(
            icon: SvgPicture.asset(
              "assets/icons/call.svg",
              color: Colors.white,
            ),
            onPressed: () {}),
        elevation: 8,
        onPressed: () {},
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          color: Colors.white,
        ),
        padding: EdgeInsets.all(15.0),
        onPressed: () {},
      ),
    );
  }
}

