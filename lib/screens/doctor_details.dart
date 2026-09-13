import 'package:doctorapp/core/favourite_icon.dart';
import 'package:doctorapp/core/screens_title.dart';
import 'package:doctorapp/screens/doctor_appointment_screen.dart';
import 'package:doctorapp/widgets/doctor_details_card.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ScreensTitle(
                    icon: Icons.arrow_back_ios,
                    text: "Doctor Details",
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search_rounded,
                      size: 30,
                      color: Color(0xff677294),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 34),
              Container(
                height: 170,
                width: 355,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(child: Image.asset("assets/mydoctor5.png")),
                          const SizedBox(width: 12),

                          DoctorDetailsCard(),
                        ],
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: 140,
                        height: 32,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff0EBE7F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            "Book Now",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DoctorAppointmentScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Container(
                height: 84,
                width: 305,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildStatTile("100", "Running"),
                      _buildStatTile("500", "Ongoing"),
                      _buildStatTile("700", "Patient"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 27),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Services",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  _serviceItem(
                    1,
                    "Patient care should be the number one priority.",
                  ),

                  _serviceItem(
                    2,
                    "If you run your practiceyou know how frustrating.",
                  ),
                  _serviceItem(
                    3,
                    "That is why some of appointment reminder system.",
                    isLast: true,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                height: 210,
                width: 335,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Image.asset("assets/map.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatTile(String count, String label) {
    return Container(
      height: 65,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 9),
        child: Column(
          children: [
            Text(
              count,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            Text(label, style: TextStyle(color: Color(0xff677294))),
          ],
        ),
      ),
    );
  }

  Widget _serviceItem(int number, String text, {bool isLast = false}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$number.",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff10B981),
                ),
              ),

              const SizedBox(width: 25),

              Expanded(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xff7180A0),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (!isLast) Divider(color: Color(0xffEEEEEE), thickness: 1),
      ],
    );
  }
}
