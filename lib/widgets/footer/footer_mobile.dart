import 'package:coffee_website/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "@ 2025 Coffee Shop",
                style: TextStyle(color: Colors.white),
              ),
              Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/svg/facebook.svg",
                    width: 30,
                  ),
                  SvgPicture.asset(
                    "assets/svg/instagram.svg",
                    width: 30,
                  ),
                  SvgPicture.asset(
                    "assets/svg/google.svg",
                    width: 30,
                  ),
                ],
              ),
              Text(
                "Privacy policy . Refund pilicy",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
