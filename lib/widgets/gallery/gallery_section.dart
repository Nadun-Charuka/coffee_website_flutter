import 'package:coffee_website/utils/responsive.dart';
import 'package:coffee_website/widgets/gallery/gallery_desktop.dart';
import 'package:coffee_website/widgets/gallery/gallery_mobile.dart';
import 'package:coffee_website/widgets/gallery/gallery_tablet.dart';
import 'package:flutter/material.dart';

class GallerySection extends StatelessWidget {
  const GallerySection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final isTablet = Responsive.isTablet(context);
    return isMobile
        ? GalleryMobile()
        : isTablet
            ? GalleryTablet()
            : GalleryDesktop();
  }
}
