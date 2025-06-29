import 'package:coffee_website/utils/responsive.dart';
import 'package:coffee_website/widgets/hero/hero_desktop.dart';
import 'package:coffee_website/widgets/hero/hero_mobile.dart';
import 'package:coffee_website/widgets/hero/hero_tablet.dart';
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    final isDesktop = Responsive.isDesktop(context);
    return isDesktop
        ? HeroDesktop()
        : isTablet
            ? HeroTablet()
            : HeroMobile();
  }
}
