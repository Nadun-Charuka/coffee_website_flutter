import 'package:coffee_website/utils/responsive.dart';
import 'package:coffee_website/widgets/header/header_desktop.dart';
import 'package:coffee_website/widgets/header/header_mobile_tablet.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return isDesktop ? HeaderDesktop() : HeaderMobileTablet();
  }
}
