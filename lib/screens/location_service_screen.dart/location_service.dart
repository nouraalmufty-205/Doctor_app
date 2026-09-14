import 'package:doctorapp/core/confimation_screen.dart';
import 'package:doctorapp/screens/main_medicine_screen/main_medicine_order.dart';
import 'package:flutter/material.dart';

class LocationService extends StatelessWidget {
  const LocationService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConfimationScreen(
        screensTitleText: "Enable Location Services",
        screenTitleNavigator: LocationService(),
        mainImage: "assets/locationservice.png",
        firstText: "Location",
        secandText: "Your location services are switched off. Please\nenable location, to help us serve better.",
        buttonw: 270,
        buttonh: 54,
        buttontext: "Enable Location",
        buttonradius: 6,
        route: MainMedicineOrder(),
      ),
    );
  }
}
