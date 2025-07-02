import 'package:coffee_website/constants/constant.dart';
import 'package:coffee_website/reuse_widget/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutTabletMobile extends StatelessWidget {
  const AboutTabletMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
      ),
      width: MediaQuery.of(context).size.width,
      color: lightPinkColor,
      child: Padding(
        padding: const EdgeInsets.all(mPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            TitleWidget(title: "ABOUT US", color: Colors.black),
            Text(
              "At Coffee House in Kottawa, Sri lanka ,we pride overslevs on being a go-to destination for cofee lovers and converstation seeksers alike. we er dedicated to providnag an exceptional coffee expreeience in a cozy and iviting atmoshere,where guests can relax unwind and enjoy their time in comfort.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/facebook.svg",
                  width: 50,
                  height: 50,
                  colorFilter: const ColorFilter.mode(
                    Colors.blue,
                    BlendMode.srcIn,
                  ),
                ),
                SvgPicture.asset(
                  "assets/svg/instagram.svg",
                  width: 50,
                  height: 50,
                  colorFilter: const ColorFilter.mode(
                    Colors.orange,
                    BlendMode.srcIn,
                  ),
                ),
                SvgPicture.asset(
                  "assets/svg/google.svg",
                  width: 50,
                  height: 50,
                  colorFilter: const ColorFilter.mode(
                    Colors.black,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(250),
              child: Image.asset(
                "assets/images/about-image.jpg",
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
