import 'package:coffee_website/utils/responsive.dart';
import 'package:coffee_website/widgets/menu/menu_desktop.dart';
import 'package:coffee_website/widgets/menu/menu_mobile.dart';
import 'package:coffee_website/widgets/menu/menu_tablet.dart';
import 'package:flutter/material.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final isTablet = Responsive.isTablet(context);
    return isMobile
        ? MenuMobile()
        : isTablet
            ? MenuTablet()
            : MenuDesktop();
  }
}
