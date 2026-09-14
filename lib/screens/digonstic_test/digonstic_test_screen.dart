import 'package:doctorapp/core/confimation_screen.dart';
import 'package:doctorapp/screens/all_records/all_records.dart';
import 'package:flutter/material.dart';

class DigonsticTestScreen extends StatelessWidget {
  const DigonsticTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConfimationScreen(
        screensTitleText: 'Diagonstics Tests',
        mainImage: 'assets/diagonstic.png',
        firstText: 'You haven’t booked any tests yet',
        secandText: 'Get started with your first health checkup',
        buttonw: 270,
        buttonh: 40,
        buttontext: 'Book Now',
        buttonradius: 6,
        route: AllRecords(),
      ),
    );
  }
}
