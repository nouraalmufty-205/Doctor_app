import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctorapp/core/doctor_info_card.dart';
import 'package:doctorapp/core/greenbotton.dart';
import 'package:doctorapp/core/screens_title.dart';
import 'package:doctorapp/model/doctor_model.dart';
import 'package:doctorapp/widgets/appointmentslotcard.dart';
import 'package:flutter/material.dart';

class Doctorselecttime1 extends StatefulWidget {
  const Doctorselecttime1({super.key});

  @override
  State<Doctorselecttime1> createState() => _Doctorselecttime1State();
}

class _Doctorselecttime1State extends State<Doctorselecttime1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/My_doctors_screen.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                ScreensTitle(icon: Icons.arrow_back_ios, text: "Select Time"),
                SizedBox(height: 30),
                DoctorInfoCard(
                  image: "assets/mydoctor1.png",
                  name: "Dr. Shruti Kedia",
                  specialty: "Upasana Dental Clinic, salt lake",
                ),
                SizedBox(height: 34),
                CarouselSlider(
                  items: dummySlots.map((data) {
                    return AppointmentSlotCard(
                      date: data.date,
                      slot: data.slot,
                    );
                  }).toList(),

                  options: CarouselOptions(
                    height: 70,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.50,
                    initialPage: 0,
                    padEnds: false,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: false,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Today, 23 Feb",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 23),
                Text(
                  "No Slot available",
                  style: TextStyle(fontSize: 14, color: Color(0xff677294)),
                ),
                const SizedBox(height: 20),
                GreenBotton(title: "Next availability on wed, 24 Feb"),
                const SizedBox(height: 14),
                Text(
                  "OR",
                  style: TextStyle(color: Color(0xff677294), fontSize: 14),
                ),
                const SizedBox(height: 14),
                Container(
                  height: 54,
                  width: 306,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff0EBE7F)),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Contact Clinic",
                          style: TextStyle(
                            color: Color(0xff0EBE7F),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<AppointmentSlotCard> dummySlots = [
  AppointmentSlotCard(date: "Today, 23 Feb", slot: "No"),
  AppointmentSlotCard(date: "Tomorrow, 24 Feb", slot: "9"),
  AppointmentSlotCard(date: "Wed, 16 Oct", slot: "10"),
];
