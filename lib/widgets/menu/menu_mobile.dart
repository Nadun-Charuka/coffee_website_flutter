import 'package:coffee_website/constants/constant.dart';
import 'package:coffee_website/data/menu_data.dart';
import 'package:coffee_website/reuse_widget/title_widget.dart';
import 'package:flutter/material.dart';

class MenuMobile extends StatelessWidget {
  const MenuMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final menuList = MenuData.menuData;
    return Container(
      color: darkColor,
      child: Column(
        children: [
          TitleWidget(title: "OUR MENU", color: Colors.white),
          SizedBox(
              height: MediaQuery.of(context).size.height * 2.7,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: menuList.length,
                itemBuilder: (context, index) {
                  final item = menuList[index];
                  return Padding(
                    padding: const EdgeInsets.all(mPadding),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
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
              )),
        ],
      ),
    );
  }
}
