import 'package:coffee_website/constants/constant.dart';
import 'package:coffee_website/reuse_widget/title_widget.dart';
import 'package:flutter/material.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightPinkColor,
      child: Column(
        children: [
          TitleWidget(title: "CONTACT US", color: Colors.black),
          Padding(
            padding: const EdgeInsets.all(dPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        Text("145/4 , 2nd lane ,Nugeemulla road, Rukmale")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        Text("contact@coffeehouse.com")
                      ],
                    ),
                    Row(
                      children: [Icon(Icons.phone), Text("+94 760635138")],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_month),
                        Text("Open Days: Monday – Saturday")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.close),
                        Text("Closed Day: Sunday"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.web),
                        Text("www.coffeehouse.com"),
                      ],
                    ),
                  ],
                ),
                Column(
                  spacing: 20,
                  children: [
                    CustomTextField(text: "Your Name"),
                    CustomTextField(text: "Your Email"),
                    CustomTextField(text: "Your Message"),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String text;
  const CustomTextField({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.4,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: whiteColor,
          hintText: text,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: secondaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
