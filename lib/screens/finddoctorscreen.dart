import 'package:doctorapp/core/doctor_card.dart';
import 'package:doctorapp/core/screens_title.dart';
import 'package:doctorapp/model/doctor_model.dart';
import 'package:doctorapp/screens/my_doctors/widget/search_feild.dart';
import 'package:flutter/material.dart';

class FindDoctorsScreen extends StatelessWidget {
  const FindDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/My_doctors_screen.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              ScreensTitle(
                icon: Icons.arrow_back_ios_outlined,
                text: "Find Doctors",
              ),
              const SizedBox(height: 34),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const SearchFeild(
                  textfeild: 'Dentist',
                  lIcon: Icons.search,
                  ricon: Icons.close,
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: ListView.builder(
                  itemCount: doctors.length,
                  itemBuilder: (context, index) {
                    return DoctorCardMain(doctorModel: doctors[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<DoctorModel> doctors = [
  DoctorModel(
    imageName: 'assets/mydoctor1.png',
    doctorName: 'Dr. Shruti Kedia',
    doctorTitle: 'Tooths Dentist',
    doctorExperience: '7 Years experience ',
    doctorSpercentage: '87%',
    doctorNPatient: '69 Patient Stories',
    openingHour: '10:00 ',
    hasBooking: true,
  ),
  DoctorModel(
    imageName: 'assets/mydoctor2.png',
    doctorName: 'Dr. Watamaniuk',
    doctorTitle: 'Tooths Dentist',
    doctorExperience: '9 Years experience  ',
    doctorSpercentage: '74%',
    doctorNPatient: '78 Patient Stories',
    openingHour: '12:00 ',
    hasBooking: true,
  ),
  DoctorModel(
    imageName: 'assets/mydoctor3.png',
    doctorName: 'Dr. Luke Whitesell',
    doctorTitle: 'Specilist Cardiology',
    doctorExperience: '7 Years experience ',
    doctorSpercentage: '57%',
    doctorNPatient: '76 Patient Stories',
    openingHour: '11:00 ',
    hasBooking: true,
  ),
  DoctorModel(
    imageName: 'assets/mydoctor1.png',
    doctorName: 'Dr. Balestra',
    doctorTitle: 'Tooths Dentist',
    doctorExperience: '6 Years experience ',
    doctorSpercentage: '67%',
    doctorNPatient: '86 Patient Stories',
    openingHour: '11:00 ',
    hasBooking: true,
  ),
];
