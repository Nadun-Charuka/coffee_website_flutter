import 'package:coffee_website/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroDesktop extends StatelessWidget {
  const HeroDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.85,
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(dPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 30,
                  children: [
                    Text(
                      "Best Coffee",
                      style: GoogleFonts.miniver(
                        color: secondaryColor,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      "Make your day great with our special coffee!",
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Welcome to our coffee paradise, where every bean tells a story and every cup sparks joy",
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Row(
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
                          color: secondaryColor,
                          child: InkWell(
                            hoverColor: primaryColor,
                            borderRadius: BorderRadius.circular(30),
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 8,
                              ),
                              child: Text(
                                "Order Now",
                                style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 20,
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
            Expanded(
              child: Image.asset(
                "assets/images/coffee-hero-section.png",
                width: 500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
