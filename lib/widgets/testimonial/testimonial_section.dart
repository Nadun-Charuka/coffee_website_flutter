import 'dart:async';

import 'package:coffee_website/constants/constant.dart';
import 'package:coffee_website/data/testimonial_data.dart';
import 'package:coffee_website/reuse_widget/title_widget.dart';
import 'package:flutter/material.dart';

class TestimonialSection extends StatefulWidget {
  const TestimonialSection({super.key});

  @override
  State<TestimonialSection> createState() => _TestimonialSectionState();
}

class _TestimonialSectionState extends State<TestimonialSection> {
  final ScrollController _scrollController = ScrollController();
  Timer? _autoScrollTimer;
  double _scrollPosition = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _autoScroll());
  }

  void _autoScroll() {
    final width = MediaQuery.of(context).size.width;

    double itemWidth = getItemWidth(width);

    _autoScrollTimer = Timer.periodic(const Duration(seconds: 3), (_) {
      final maxScroll = _scrollController.position.maxScrollExtent;

      if (_scrollPosition + itemWidth < maxScroll) {
        _scrollPosition += itemWidth + 16; // 16 = padding/margin
      } else {
        _scrollPosition = 0;
      }

      _scrollController.animateTo(
        _scrollPosition,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    });
  }

  double getItemWidth(double width) {
    if (width < 640) return width * 0.9; // mobile
    if (width < 1024) return width / 2 - 32; // tablet
    return width / 3 - 32; // desktop
  }

  @override
  void dispose() {
    _autoScrollTimer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final testimonials = TestimonialData.testimonials;
    final width = MediaQuery.of(context).size.width;
    final itemWidth = getItemWidth(width);

    return SizedBox(
      height: MediaQuery.of(context).size.height * .6,
      child: Column(
        children: [
          TitleWidget(title: "TESTIMONIALS", color: darkColor),
          SizedBox(
            height: 300,
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: testimonials.length,
              itemBuilder: (context, index) {
                final item = testimonials[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: itemWidth,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: lightPinkColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(item.imageUrl),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          item.name,
                          style: const TextStyle(
                            color: darkColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '"${item.feedback}"',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
