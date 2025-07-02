import 'package:coffee_website/utils/responsive.dart';
import 'package:coffee_website/widgets/contact/contact_desktop.dart';
import 'package:coffee_website/widgets/contact/contact_tablet_mobile.dart';
import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return isDesktop ? ContactDesktop() : ContactTabletMobile();
  }
}
