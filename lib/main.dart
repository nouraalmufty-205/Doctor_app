import 'package:doctorapp/core/doctor_card.dart';
import 'package:doctorapp/screens/doctor_details.dart';
import 'package:doctorapp/screens/add_record_screen/add_record_screen.dart';
import 'package:doctorapp/screens/all_records/all_records.dart';
import 'package:doctorapp/screens/doctorselecttime1.dart';
import 'package:doctorapp/screens/doctorselecttime2.dart';
import 'package:doctorapp/screens/finddoctorscreen.dart';
import 'package:doctorapp/screens/help_center/help_center_screen.dart';
import 'package:doctorapp/screens/homescreen.dart';

import 'package:doctorapp/screens/main_medicine_screen/main_medicine_order.dart';

import 'package:doctorapp/screens/medicine_order.dart/medicine_order_screen.dart';

import 'package:doctorapp/screens/location_service_screen.dart/location_service.dart';

import 'package:doctorapp/screens/medical_record_screen/medical_record_screen.dart';

import 'package:doctorapp/screens/menu_screen/menu_screen.dart';
import 'package:doctorapp/screens/livescreen.dart';
import 'package:doctorapp/screens/my_doctors/my_doctors_screen.dart';
import 'package:doctorapp/widgets/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDoctorsScreen(),
    );
  }
}
