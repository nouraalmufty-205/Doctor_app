import 'package:doctorapp/core/greenbotton.dart';
import 'package:doctorapp/screens/doctor_appointment_screen.dart';
import 'package:doctorapp/screens/homescreen.dart';

import 'package:flutter/material.dart';

class AppointmentSelectionPanel extends StatefulWidget {
  const AppointmentSelectionPanel({super.key});

  @override
  State<AppointmentSelectionPanel> createState() =>
      _AppointmentSelectionPanelState();
}

class _AppointmentSelectionPanelState extends State<AppointmentSelectionPanel> {
  String selectedTime = "02:00 PM";
  String selectedReminder = "25 Minute";

  // Data lists matching your design
  final List<String> availableTimes = [
    "10:00\nAM",
    "12:00\nAM",
    "02:00\nPM",
    "03:00\nPM",
    "04:00\nPM",
  ];

  final List<String> reminders = [
    "30\nMinute",
    "40\nMinute",
    "25\nMinute",
    "10\nMinute",
    "35\nMinute",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Available Time",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1E293B),
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 5,
          runSpacing: 9,
          children: availableTimes.map((time) {
            final isSelected = time.replaceAll('\n', ' ') == selectedTime;
            return _buildCircularButton(
              text: time,
              isSelected: isSelected,
              onTap: () {
                setState(() {
                  selectedTime = time.replaceAll('\n', ' ');
                });
              },
            );
          }).toList(),
        ),

        const SizedBox(height: 32),

        const Text(
          "Reminder Me Before",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1E293B),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: reminders.map((reminder) {
            final isSelected =
                reminder.replaceAll('\n', ' ') == selectedReminder;
            return _buildCircularButton(
              text: reminder,
              isSelected: isSelected,
              onTap: () {
                setState(() {
                  selectedReminder = reminder.replaceAll('\n', ' ');
                });
              },
            );
          }).toList(),
        ),

        const SizedBox(height: 100),
        SizedBox(
          width: double.infinity,
          height: 54,
          child: GreenBotton(
            title: "Confirm",
            ontap: () {
              _showSuccessDialog(context);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCircularButton({
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,

          color: isSelected ? const Color(0xFF00C187) : const Color(0xFFE8F8F4),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            height: 1.2,

            color: isSelected ? Colors.white : const Color(0xFF00C187),
          ),
        ),
      ),
    );
  }
}

void _showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Color(0xFFE8F8F2),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.thumb_up_alt_rounded,
                  color: Color(0xFF00C58D),
                  size: 44,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Thank You !',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Your Appointment Successful',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'You booked an appointment with Dr.\nPediatrician Purpieson on February 21,\nat 02:00 PM',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, color: Colors.grey, height: 1.5),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00C58D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Done',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);

                  DoctorAppointmentScreen();
                },
                child: const Text(
                  'Edit your appointment',
                  style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
