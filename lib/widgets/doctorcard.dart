import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String name;
  final String specialty;
  final String image;

  const DoctorCard({
    super.key,
    required this.name,
    required this.specialty,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 264,
      width: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffFFFFFF),
      ),
      child: Column(
        children: [
          Image.asset(image, fit: BoxFit.cover),
          SizedBox(height: 14),
          Text(
            name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff333333),
            ),
          ),
          Text(
            specialty,
            style: TextStyle(fontSize: 12, color: Color(0xff677294CC)),
          ),
          const SizedBox(height: 6),
          Image.asset(
            "assets/star.png",
            height: 12,
            width: 80,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
