import 'package:doctorapp/core/doctor_card.dart';
import 'package:doctorapp/core/screens_title.dart';
import 'package:doctorapp/model/doctor_model.dart';
import 'package:doctorapp/screens/my_doctors/widget/search_feild.dart';
import 'package:flutter/material.dart';

class MyDoctorsScreen extends StatelessWidget {
  const MyDoctorsScreen({super.key});

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
                text: "My Doctors",
              ),
              const SizedBox(height: 34),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const SearchFeild(Text_feild: 'search',lIcon:Icons.search , ricon: Icons.close,),
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
    doctorName: 'Dr. Tranquilli',
    doctorTitle: 'Specilist medicine',
    doctorExperience: '6 Years experience ',
    doctorSpercentage: '87%',
    doctorNPatient: '69 Patient Stories',
    openingHour: '10:00',
    hasBooking: true,
  ),
  DoctorModel(
    imageName: 'assets/mydoctor2.png',
    doctorName: 'Dr. Bonebrake',
    doctorTitle: 'Specilist Dentist',
    doctorExperience: '8 Years experience  ',
    doctorSpercentage: '59%',
    doctorNPatient: '82 Patient Stories',
    openingHour: '12:00',
    hasBooking: true,
  ),
  DoctorModel(
    imageName: 'assets/mydoctor3.png',
    doctorName: 'Dr. Luke Whitesell',
    doctorTitle: 'Specilist Cardiology',
    doctorExperience: '7 Years experience ',
    doctorSpercentage: '57%',
    doctorNPatient: '76 Patient Stories',
    openingHour: '11:00',
    hasBooking: true,
  ),
  DoctorModel(
    imageName: 'assets/mydoctor4.png',
    doctorName: 'Dr. Shoemaker',
    doctorTitle: 'Specilist Patheology',
    doctorExperience: '5 Years experience ',
    doctorSpercentage: '87%',
    doctorNPatient: '69 Patient Stories',
    openingHour: '10:00',
    hasBooking: true,
  ),
];