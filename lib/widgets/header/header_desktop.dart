import 'package:coffee_website/constants/constant.dart';
import 'package:coffee_website/data/navbar_data.dart';
import 'package:flutter/material.dart';

class HeaderDesktop extends StatefulWidget {
  const HeaderDesktop({super.key});

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      color: primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
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
          ),
          NavBarWidget(),
        ],
      ),
    );
  }
}

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  late List<bool> isHoveredList;

  @override
  void initState() {
    super.initState();
    isHoveredList = List.filled(NavbarData.navlink.length, false);
  }

  @override
  Widget build(BuildContext context) {
    final navLinks = NavbarData.navlink;
    return SizedBox(
      height: 80,
      width: MediaQuery.of(context).size.width * 0.70,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
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
                  color: isHoveredList[index] ? secondaryColor : primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Text(
                      navLink,
                      style: TextStyle(
                        color: isHoveredList[index] ? darkColor : whiteColor,
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
