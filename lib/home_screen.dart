import 'package:coffee_website/utils/responsive.dart';
import 'package:coffee_website/widgets/about/about_section.dart';
import 'package:coffee_website/widgets/contact/contact_section.dart';
import 'package:coffee_website/widgets/gallery/gallery_section.dart';
import 'package:coffee_website/widgets/header/header_section.dart';
import 'package:coffee_website/widgets/header/header_tablet_mobile.dart';
import 'package:coffee_website/widgets/hero/hero_section.dart';
import 'package:coffee_website/widgets/menu/menu_section.dart';
import 'package:coffee_website/widgets/testimonial/testimonial_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final isTablet = Responsive.isTablet(context);
    return Scaffold(
      endDrawer: isMobile || isTablet ? EndDrawerWidget() : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(),
            HeroSection(),
            AboutSection(),
            MenuSection(),
            TestimonialSection(),
            GallerySection(),
            ContactSection()
          ],
        ),
      ),
    );
  }
}
