import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: categories.length,
      options: CarouselOptions(
        height: 100,
        viewportFraction: 0.25,
        enableInfiniteScroll: false,
        padEnds: false,
        disableCenter: false,
      ),
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Image.asset(
                categories[itemIndex],
                width: 90,
                height: 90,
                // tints the icon white if it's a solid-shape PNG/SVG-derived asset
              ),
            ),
          ),
        );
      },
    );
  }
}

List<String> categories = [
  'assets/tooth.png',
  'assets/heart.png',
  'assets/eye.png',
  'assets/body.png',
];
