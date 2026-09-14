import 'package:doctorapp/core/confimation_screen.dart';
import 'package:doctorapp/screens/add_record_screen/add_record_screen.dart';
import 'package:doctorapp/screens/location_service_screen.dart/location_service.dart';
import 'package:flutter/material.dart';

class MedicineOrderScreen extends StatelessWidget {
  const MedicineOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConfimationScreen(
        screensTitleText: 'Medicine Orders',
        mainImage: 'assets/medicneorders.png',
        firstText: 'No orders placed yet',
        secandText: 'Place your first order now.',
        buttonw: 270,
        buttonh: 40,
        buttontext: 'Order medicines',
        buttonradius: 6, route:LocationService() ,
      ),
    );
  }
}
