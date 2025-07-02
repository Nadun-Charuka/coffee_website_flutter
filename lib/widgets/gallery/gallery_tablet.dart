import 'package:coffee_website/constants/constant.dart';
import 'package:coffee_website/reuse_widget/title_widget.dart';
import 'package:flutter/material.dart';

class GalleryTablet extends StatelessWidget {
  const GalleryTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> list = [
      "assets/images/gallery-1.jpg",
      "assets/images/gallery-2.jpg",
      "assets/images/gallery-3.jpg",
      "assets/images/gallery-4.jpg",
      "assets/images/gallery-5.jpg",
      "assets/images/gallery-6.jpg",
    ];

    return Container(
      color: whiteColor,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.all(tPadding),
        child: Column(
          children: [
            TitleWidget(title: "GALLERY", color: Colors.black),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 30,
                childAspectRatio: 8 / 5,
              ),
              itemCount: list.length,
              itemBuilder: (context, index) {
                final item = list[index];
                return SizedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      item,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
