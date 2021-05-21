import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_apps_exercise/app_localizations.dart';
import 'package:flutter_apps_exercise/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  var random = new Random().nextInt(3);
  var rText;
  var rImg;
  void youAre() {
    switch (random) {
      case 0:
        rText = "I Am Poor";
        rImg = "assets/images/rock.png";
        break;
      case 1:
        rText = "I Am Ordinary";
        rImg = "assets/images/greentick.png";
        break;
      case 2:
        rText = "I Am Rich";
        rImg = "assets/images/diamond.png";
        break;
    }
  }

  @override
  Widget build(BuildContext context) {

    youAre();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: kBackgroundColor,
            appBar: AppBar(
              // centerTitle: true,
              backgroundColor: kBackgroundColor,
              elevation: 0,
              actions: <Widget>[
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: RawMaterialButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.money_off,
                        color: kTextColor,
                        size: 24.0,
                      ),
                      shape: CircleBorder(
                          side: BorderSide(color: kTextColor, width: 2)),
                    ))
              ],
              title: Text(
                'Who Am I?',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 16,
                ),
              ),
              leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: SvgPicture.asset(
                  "assets/icons/left-arrow.svg",
                  width: 32,
                  height: 32,
                  color: kTextColor,
                ),
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Padding(
                    padding: EdgeInsets.all(kDefultPadding*5),
                  child: Image(
                    image: AssetImage(rImg),
                  ),
                  ),
                  Text(
                    rText,
                    // AppLocalizations.of(context).translate('rich'),
                    style: TextStyle(
                      color: kTextColor,
                      fontStyle: FontStyle.italic,
                      fontSize: 32,
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              child: Container(
                height: 60.0,
                color: Colors.blueGrey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/icons/home.svg"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/icons/delivery.svg"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/icons/shop.svg"),
                    )
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                // showSnackBar(context, '$random  $rImg  $rText');
                // AppLocalizations.of(context).translate('snackBarText');
                showSnackBar(context, 'Yay! A SnackBar!  Hah Haa $random');
              },
              backgroundColor: Colors.blueGrey,
              child: Icon(
                Icons.share,
                color: Colors.blueGrey[50],
              ),
            )));
  }

  void showSnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(
      content: Text(text),
      backgroundColor: kPrimaryColor,
      action: SnackBarAction(
        label: "Undo",
        textColor: Colors.grey[900],
        onPressed: () {
          showSnackBar(context, "Ohh Nooo");
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
