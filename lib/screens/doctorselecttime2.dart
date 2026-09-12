import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctorapp/core/doctor_info_card.dart';
import 'package:doctorapp/core/greenbotton.dart';
import 'package:doctorapp/core/screens_title.dart';
import 'package:doctorapp/widgets/appointmentslotcard.dart';
import 'package:flutter/material.dart';

class Doctorselecttime2 extends StatefulWidget {
  const Doctorselecttime2({super.key});

  @override
  State<Doctorselecttime2> createState() => _Doctorselecttime2State();
}

class _Doctorselecttime2State extends State<Doctorselecttime2> {
  String? _selectedTime;
  bool _showSlots = false;
  final List<String> afternoonSlots = [
    "1:00 PM",
    "1:30 PM",
    "2:00 PM",
    "2:30 PM",
    "3:00 PM",
    "3:30 PM",
    "4:00 PM",
  ];
  final List<String> eveningSlots = [
    "5:00 PM",
    "5:30 PM",
    "6:00 PM",
    "6:30 PM",
    "7:00 PM",
  ];
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
                Column(
                  children: [
                    if (_showSlots) ...[
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Afternoon ${afternoonSlots.length} slots",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      _buildWidgetSlot(afternoonSlots),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Evening ${eveningSlots.length} slots",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      _buildWidgetSlot(eveningSlots),
                    ] else ...[
                      const SizedBox(height: 23),
                      const Text(
                        "No slots available",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff677294),
                        ),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () => setState(() => _showSlots = true),
                        child: GreenBotton(
                          title: "Next availability on wed, 24 Feb",
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<AppointmentSlotCard> dummySlots = [
    AppointmentSlotCard(date: "Today, 23 Feb", slot: "No"),
    AppointmentSlotCard(date: "Tomorrow, 24 Feb", slot: "9"),
    AppointmentSlotCard(date: "Wed, 16 Oct", slot: "10"),
  ];
  Widget _buildWidgetSlot(List<String> slots) {
    return Wrap(
      spacing: 5,
      runSpacing: 10,
      children: slots.map((time) {
        final isSelected = _selectedTime == time;
        return ChoiceChip(
          label: Text(time),
          selected: isSelected,
          onSelected: (_) => setState(() => _selectedTime = time),
          backgroundColor: const Color(0xffE8F8F1),
          selectedColor: const Color(0xff0EBE7F),
          labelStyle: TextStyle(
            color: isSelected ? Colors.white : const Color(0xff0EBE7F),
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Color(0xff0EBE7F14)),
          ),
          showCheckmark: false,
        );
      }).toList(),
    );
  }
}
