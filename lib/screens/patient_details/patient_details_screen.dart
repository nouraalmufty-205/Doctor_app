import 'package:doctorapp/core/confimation_screen.dart';
import 'package:doctorapp/screens/main_medicine_screen/main_medicine_order.dart';
import 'package:flutter/material.dart';

class PatientDetailsScreen extends StatelessWidget {
  const PatientDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          ConfimationScreen(
            screensTitleText: "Patient Details", 
            screenTitleNavigator: MainMedicineOrder(), 
            mainImage: "assets/patiant.png", 
            firstText: "Your cart is empty", 
            secandText: " ", 
            buttonw: 270, 
            buttonh: 54, 
            buttontext: "Add Tests", 
            buttonradius: 6, 
            route: MainMedicineOrder())
        ],
      )
    );
  }
}