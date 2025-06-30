import 'package:coffee_website/model/testimonial_model.dart';

class TestimonialData {
  static List<TestimonialModel> testimonials = [
    TestimonialModel(
      imageUrl: 'assets/images/user-1.jpg',
      name: 'Sarah Johns',
      feedback:
          'Loved the french roast. Perfectly balanced and rich. Will order again!',
    ),
    TestimonialModel(
      imageUrl: 'assets/images/user-2.jpg',
      name: 'David Thompson',
      feedback:
          'The cold brew was incredibly refreshing. Just the kick I needed!',
    ),
    TestimonialModel(
      imageUrl: 'assets/images/user-3.jpg',
      name: 'Emily Carter',
      feedback: 'The chocolate lava cake was a dream. Highly recommend!',
    ),
    TestimonialModel(
      imageUrl: 'assets/images/user-4.jpg',
      name: 'Michael Lee',
      feedback: 'Burger & fries combo is a classic winner. Loved it!',
    ),
    TestimonialModel(
      imageUrl: 'assets/images/user-5.jpg',
      name: 'Olivia Brown',
      feedback: 'Beautiful packaging and great coffee aroma. A must-try!',
    ),
  ];
}
