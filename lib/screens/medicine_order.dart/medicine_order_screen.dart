import 'package:doctorapp/core/confimation_screen.dart';
import 'package:doctorapp/screens/add_record_screen/add_record_screen.dart';
import 'package:flutter/material.dart';

class MedicineOrderScreen extends StatelessWidget {
  const MedicineOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConfimationScreen(
        screensTitleText: 'Medicine Orders',
        screenTitleNavigator: AddRecordScreen(),
        mainImage: 'assets/medicneorders.png',
        firstText: 'No orders placed yet',
        secandText: 'Place your first order now.',
        button_w: 270,
        button_h: 40,
        button_text: 'Order medicines',
        button_radius: 6, route:MedicineOrderScreen() ,
      ),
    );
  }
}
