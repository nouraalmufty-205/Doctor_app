import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctorapp/screens/homescreen.dart';
import 'package:doctorapp/screens/populardoctorscreen.dart';

import 'package:doctorapp/widgets/doctorcard.dart';
import 'package:flutter/material.dart';

class PopularDoctors extends StatelessWidget {
  final List<Map<String, String>> doctors;
  const PopularDoctors({super.key, required this.doctors});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PopularDoctorsScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: Color(0xff677294),
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
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
          itemCount: doctors.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
                final doctor = doctors[itemIndex];

                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: DoctorCard(
                    name: doctor["name"]!,
                    specialty: doctor["specialty"]!,
                    image: doctor["image"]!,
                  ),
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
    );
  }
}
