import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:doctorapp/widgets/doctorcard.dart';
import 'package:flutter/material.dart';

class PopularDoctors extends StatelessWidget {
  const PopularDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Doctor",
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
          SizedBox(height: 10),
          CarouselSlider.builder(
            itemCount: popularDoctors.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
                  final doctor = popularDoctors[itemIndex];
                  return DoctorCard(
                    name: doctor["name"]!,
                    specialty: doctor["specialty"]!,
                    image: doctor["image"]!,
                  );
                },
            options: CarouselOptions(
              height: 264,
              viewportFraction: 0.55,
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

final List<Map<String, String>> popularDoctors = [
  {
    "name": "Dr. Fillerup Grab",
    "specialty": "Medicine Specialist",
    "image": "assets/populardoctor1.png",
  },
  {
    "name": "Dr. Blessing",
    "specialty": "Dentist Specialist",
    "image": "assets/populardoctor2.png",
  },
];
