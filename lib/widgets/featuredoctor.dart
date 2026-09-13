import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctorapp/widgets/featuredoctorcard.dart';
import 'package:flutter/material.dart';

class FeatureDoctor extends StatelessWidget {
  const FeatureDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Feature Doctor",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff333333),
                ),
              ),
              Row(
                children: [
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Color(0xff677294),
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 8,
                    color: Color(0xff677294),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),

          CarouselSlider.builder(
            itemCount: featureDoctors.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
                  final doctor = featureDoctors[itemIndex];
                  return FeatureDoctorCard(
                    name: doctor["name"],
                    image: doctor["image"],
                    rating: doctor["rating"],
                    price: doctor["price"],
                  );
                },
            options: CarouselOptions(
              height: 220,
              viewportFraction: 0.5,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              padEnds: false,
              autoPlay: false,
            ),
          ),
        ],
      ),
    );
  }
}

final List<Map<String, dynamic>> featureDoctors = [
  {
    "name": "Dr. Crick",
    "image": "assets/circledoctor1.png",
    "rating": 3.7,
    "price": 25.00,
  },
  {
    "name": "Dr. Strain",
    "image": "assets/mydoctor6.png",
    "rating": 3.0,
    "price": 22.00,
  },

  {
    "name": "Dr. Fillerup",
    "image": "assets/circledoctor2.png",
    "rating": 4.2,
    "price": 30.00,
  },
  {
    "name": "Dr. Lachinet",
    "image": "assets/mydoctor3.png",
    "rating": 4.0,
    "price": 30.00,
  },
];
