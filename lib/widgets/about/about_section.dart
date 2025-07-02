import 'package:coffee_website/utils/responsive.dart';
import 'package:coffee_website/widgets/about/about_desktop.dart';
import 'package:coffee_website/widgets/about/about_mobile_tablet.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return isDesktop ? AboutDesktop() : AboutMobileTablet();
  }
}
