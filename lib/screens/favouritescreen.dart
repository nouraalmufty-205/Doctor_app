import 'package:doctorapp/core/favourite_icon.dart';
import 'package:doctorapp/core/screens_title.dart';
import 'package:doctorapp/model/doctor_model.dart';
import 'package:doctorapp/model/favourite_doctor_model.dart';
import 'package:doctorapp/screens/homescreen.dart';
import 'package:doctorapp/widgets/doctor_grid_tile.dart';
import 'package:doctorapp/widgets/featuredoctor.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/My_doctors_screen.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 36),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: ScreensTitle(
                icon: Icons.arrow_back_ios,
                text: "Favourite Doctors",
              ),
            ),
            const SizedBox(height: 20),
            SearchBar(
              elevation: WidgetStateProperty.all(4.0),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              hintText: "Dentist",
              hintStyle: WidgetStateProperty.all(
                TextStyle(color: Color(0xff677294), fontSize: 15),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Icon(Icons.search, size: 24, color: Color(0xff677294)),
              ),
              trailing: [IconButton(icon: Icon(Icons.close), onPressed: () {})],
            ),
            const SizedBox(height: 24),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.only(
                        bottom: 20,
                      ), // Adds safe breathing room at the bottom
                      itemCount: favoriteDoctorsList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 14.0,
                            crossAxisSpacing: 10.0,
                            childAspectRatio: 0.85,
                          ),
                      itemBuilder: (BuildContext context, int index) {
                        final doctor = favoriteDoctorsList[index];
                        return DoctorGridTile(doctor: doctor);
                      },
                    ),
                    const SizedBox(height: 30),
                    FeatureDoctor(),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
