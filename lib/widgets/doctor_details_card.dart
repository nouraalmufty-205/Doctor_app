import 'package:doctorapp/core/favourite_icon.dart';
import 'package:flutter/material.dart';

class DoctorDetailsCard extends StatelessWidget {
  const DoctorDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Dr. Pediatrician",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const FavouriteIcon(),
            ],
          ),
          const SizedBox(height: 4),
          const Text(
            "Specialist Cardiologist",
            style: TextStyle(color: Color(0xff677294)),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(
                  5,
                  (index) =>
                      const Icon(Icons.star, color: Colors.amber, size: 16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.attach_money,
                    size: 16,

                    color: Color(0xff53B175),
                  ),

                  const Text(
                    "22/hr",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff677294),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
