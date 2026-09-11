import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctorapp/widgets/categories.dart';
import 'package:doctorapp/widgets/doctorcard.dart';
import 'package:doctorapp/widgets/featuredoctor.dart';
import 'package:doctorapp/widgets/featuredoctorcard.dart';
import 'package:doctorapp/widgets/homeappbar.dart';
import 'package:doctorapp/widgets/livedoctors.dart';
import 'package:doctorapp/widgets/populardoctors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/My_doctors_screen.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  CustomAppBar(),
                  SizedBox(height: 20),
                  Positioned(
                    left: 24,
                    right: 24,
                    bottom: 0,
                    child: SearchBar(
                      elevation: WidgetStateProperty.all(4.0),
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      hintText: "Search....",
                      hintStyle: WidgetStateProperty.all(
                        TextStyle(color: Color(0xff677294), fontSize: 15),
                      ),
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.search,
                          size: 24,
                          color: Color(0xff677294),
                        ),
                      ),
                      trailing: [
                        IconButton(icon: Icon(Icons.close), onPressed: () {}),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Live Doctors",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                  LiveDoctors(),
                  SizedBox(height: 20),
                  Categories(),
                ],
              ),
              SizedBox(height: 10),
              PopularDoctors(),
              const SizedBox(height: 20),
              FeatureDoctor(),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> images = [
  'assets/doctor3.png',
  'assets/doctor1.png',
  'assets/doctor2.png',
];
