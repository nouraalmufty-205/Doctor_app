import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LiveDoctors extends StatelessWidget {
  const LiveDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: images.length,
      options: CarouselOptions(
        height: 220,
        viewportFraction: 0.35,
        initialPage: 0,
        enableInfiniteScroll: false,
        padEnds: false,
        disableCenter: false,
      ),
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    images[itemIndex],
                    height: 280,
                    width: double.infinity,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const Center(
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.play_circle_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffFA002F),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.circle, size: 6, color: Colors.white),
                        const SizedBox(width: 4),
                        Text(
                          "LIVE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}

List<String> images = [
  'assets/doctor3.png',
  'assets/doctor1.png',
  'assets/doctor2.png',
];
