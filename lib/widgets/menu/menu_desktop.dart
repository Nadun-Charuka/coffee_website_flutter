import 'package:coffee_website/constants/constant.dart';
import 'package:coffee_website/data/menu_data.dart';
import 'package:coffee_website/reuse_widget/title_widget.dart';
import 'package:flutter/material.dart';

class MenuDesktop extends StatelessWidget {
  const MenuDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final menuList = MenuData.menuData;
    return Container(
      color: darkColor,
      child: Column(
        children: [
          TitleWidget(title: "OUR MENU", color: Colors.white),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400, // Adjust this as needed
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 10 / 14,
            ),
            shrinkWrap: true,
            itemCount: menuList.length,
            itemBuilder: (context, index) {
              final item = menuList[index];
              return Padding(
                padding: const EdgeInsets.all(dPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      width: 300,
                      item.imgUrl,
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(height: 10),
                    Text(
                      item.title,
                      style: TextStyle(
                        fontSize: 24,
                        color: whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      item.description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
