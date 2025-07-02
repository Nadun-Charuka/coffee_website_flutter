import 'package:coffee_website/constants/constant.dart';
import 'package:coffee_website/data/navbar_data.dart';
import 'package:flutter/material.dart';

class HeaderMobileTablet extends StatelessWidget {
  const HeaderMobileTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      color: primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("☕", style: TextStyle(color: whiteColor, fontSize: 50)),
              Text(
                "Coffee",
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () => Scaffold.of(context).openEndDrawer(),
            icon: Icon(
              Icons.menu,
              size: 30,
              color: whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}

class EndDrawerWidget extends StatefulWidget {
  const EndDrawerWidget({super.key});

  @override
  State<EndDrawerWidget> createState() => _EndDrawerWidgetState();
}

class _EndDrawerWidgetState extends State<EndDrawerWidget> {
  late List<bool> isHoveredList;

  @override
  void initState() {
    super.initState();
    isHoveredList = List.filled(NavbarData.navlink.length, false);
  }

  @override
  Widget build(BuildContext context) {
    final navLinks = NavbarData.navlink;
    return Container(
      color: whiteColor,
      width: MediaQuery.of(context).size.width * 0.70,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: navLinks.length,
        itemBuilder: (context, index) {
          final String navLink = navLinks[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (_) {
                setState(() {
                  isHoveredList[index] = true;
                });
              },
              onExit: (_) {
                setState(() {
                  isHoveredList[index] = false;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  color: isHoveredList[index] ? secondaryColor : whiteColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Text(
                      navLink,
                      style: TextStyle(
                        color: isHoveredList[index] ? darkColor : Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
