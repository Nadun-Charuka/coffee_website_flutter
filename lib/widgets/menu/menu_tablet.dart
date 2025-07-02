import 'package:coffee_website/constants/constant.dart';
import 'package:coffee_website/data/menu_data.dart';
import 'package:coffee_website/reuse_widget/title_widget.dart';
import 'package:flutter/material.dart';

class MenuTablet extends StatelessWidget {
  const MenuTablet({super.key});

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
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 10 / 11,
            ),
            shrinkWrap: true,
            itemCount: menuList.length,
            itemBuilder: (context, index) {
              final item = menuList[index];
              return Padding(
                padding: const EdgeInsets.all(tPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      item.imgUrl,
                      width: 200,
                    ),
                    SizedBox(height: 10),
                    Text(
                      item.title,
                      style: TextStyle(
                        fontSize: 22,
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
