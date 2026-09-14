import 'package:doctorapp/core/confimation_screen.dart';
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
        button_w: 270,
        button_h: 54,
        button_text: "Enable Location",
        button_radius: 6,
        route: LocationService(),
      ),
    );
  }
}
