import 'package:doctorapp/core/confimation_screen.dart';
import 'package:doctorapp/screens/add_record_screen/add_record_screen.dart';
import 'package:doctorapp/screens/my_doctors/my_doctors_screen.dart';
import 'package:flutter/material.dart';

class MedicalRecordScreen extends StatelessWidget {
  const MedicalRecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ConfimationScreen(
      screensTitleText: 'Medical Records',
      screenTitleNavigator: MyDoctorsScreen(),
      mainImage: 'assets/medcalrecordsImage.png',
      firstText: 'Add a medical record.',
      secandText:
          'A detailed health history helps a doctor diagnose \nyou btter.',
      buttonw: 270,
      buttonh: 54,
      buttontext: 'Add a record',
      buttonradius: 6,
      route: AddRecordScreen(),
    );
  }
}
