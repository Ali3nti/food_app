import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_apps_exercise/activity/details/components/icon_card.dart';

import '../../../constants.dart';
class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: size.height * 0.85,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                const EdgeInsets.only(top: kDefultPadding * 2),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: IconButton(
                        padding:
                        EdgeInsets.symmetric(horizontal: kDefultPadding ),
                        icon: SvgPicture.asset("assets/icons/left-arrow.svg"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    // Spacer(),
                    IconCard(icon: "assets/icons/fast.svg",),
                    IconCard(icon: "assets/icons/loving.svg",),
                    IconCard(icon: "assets/icons/share.svg",),
                    IconCard(icon: "assets/icons/shop.svg",),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                  image: AssetImage("assets/images/PizzaDetail1.jpg"),
                ),
              ),
            ),
          ],
        ),
      );
  }
}

