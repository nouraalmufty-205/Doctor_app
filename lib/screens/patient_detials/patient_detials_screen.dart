import 'package:doctorapp/core/confimation_screen.dart';
import 'package:doctorapp/screens/location_service_screen.dart/location_service.dart';
import 'package:flutter/material.dart';

class PatientDetialsScreen extends StatelessWidget {
  const PatientDetialsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConfimationScreen(
        screensTitleText: 'Patient Details',
        mainImage: 'assets/Patient_Details.png',
        firstText: 'Your cart is empty',
        secandText: '',
        buttonw: 270.0,
        buttonh: 54.0,
        buttontext: 'Add Tests',
        buttonradius: 6,
        route: LocationService(), 
      ),
    );
  }
}