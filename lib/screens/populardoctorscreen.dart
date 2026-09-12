import 'package:doctorapp/core/doctor_info_card.dart';
import 'package:doctorapp/core/screens_title.dart';
import 'package:doctorapp/model/popular_doctors_data.dart';
import 'package:doctorapp/widgets/populardoctors.dart';
import 'package:flutter/material.dart';

class PopularDoctorsScreen extends StatelessWidget {
  const PopularDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/My_doctors_screen.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ScreensTitle(icon: Icons.arrow_back_ios, text: ""),
                SizedBox(height: 30),
                PopularDoctors(doctors: allPopularDoctors),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xff333333),
                      ),
                    ),

                    ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: categoryDoctors.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 16),
                      itemBuilder: (context, index) {
                        final doctor = categoryDoctors[index];
                        return DoctorInfoCard(
                          name: doctor["name"]!,
                          specialty: doctor["specialty"]!,
                          image: doctor["image"]!,
                          rate: doctor["rate"],
                          views: doctor["views"],
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final List<Map<String, String>> categoryDoctors = [
  {
    "name": "Dr. Pediatrician",
    "specialty": "Specialist Cardiologist",
    "image": "assets/mydoctor4.png",
    "rate": "2.4",
    "views": "2475",
  },
  {
    "name": "Dr. Mistry Brick",
    "specialty": "Specialist Dentist",
    "image": "assets/mydoctor5.png",
    "rate": "2.8",
    "views": "2893",
  },
  {
    "name": "Dr. Ether Wall",
    "specialty": "Specialist Cancer",
    "image": "assets/mydoctor6.png",
    "rate": "2.7",
    "views": "2754",
  },
  {
    "name": "Dr. Johan smith",
    "specialty": "Specialist cardiologist",
    "image": "assets/mydoctor4.png",
  },
];
