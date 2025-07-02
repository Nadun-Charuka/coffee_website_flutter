import 'package:coffee_website/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroMobile extends StatelessWidget {
  const HeroMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height * 0.85,
      ),
      width: MediaQuery.of(context).size.width,
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
          child: Column(
            spacing: 10,
            children: [
              Image.asset(
                "assets/images/coffee-hero-section.png",
                width: 250,
              ),
              Text(
                "Best Coffee",
                style: GoogleFonts.miniver(
                  color: secondaryColor,
                  fontSize: 40,
                ),
              ),
              Text(
                "Make your day great with our special coffee!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                "Welcome to our coffee paradise, where every bean tells a story and every cup sparks joy",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: whiteColor),
                      backgroundColor: primaryColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      child: Text(
                        "Contact Us",
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.orange.shade400,
                    child: InkWell(
                      hoverColor: Colors.red.shade300,
                      borderRadius: BorderRadius.circular(30),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 8,
                        ),
                        child: Text(
                          "Order Now",
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
