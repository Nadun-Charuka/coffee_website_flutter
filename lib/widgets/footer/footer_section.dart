import 'package:coffee_website/utils/responsive.dart';
import 'package:coffee_website/widgets/footer/footer_mobile.dart';
import 'package:coffee_website/widgets/footer/footer_tablet_desktop.dart';
import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return isMobile ? FooterMobile() : FooterTabletDesktop();
  }
}
