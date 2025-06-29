import 'package:coffee_website/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroTablet extends StatelessWidget {
  const HeroTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.85,
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Image.asset(
              "assets/images/coffee-hero-section.png",
              width: 350,
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
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Welcome to our coffee paradise, where every bean tells a story and every cup sparks joy",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
