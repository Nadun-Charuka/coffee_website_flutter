import 'package:coffee_website/constants/constant.dart';
import 'package:coffee_website/reuse_widget/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.65,
      color: lightPinkColor,
      child: Padding(
        padding: const EdgeInsets.all(dPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(400),
              child: Image.asset(
                "assets/images/about-image.jpg",
                width: 400,
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 40),
            Expanded(
              child: Column(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
