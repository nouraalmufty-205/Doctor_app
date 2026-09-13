import 'package:doctorapp/core/favourite_icon.dart';
import 'package:doctorapp/model/favourite_doctor_model.dart';
import 'package:flutter/material.dart';

class DoctorGridTile extends StatelessWidget {
  final DoctorModel doctor;
  const DoctorGridTile({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(doctor.imagePath),
                  ),
                  const SizedBox(height: 11),
                  Text(
                    doctor.name,
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    doctor.specialty,
                    style: TextStyle(fontSize: 12, color: Color(0xff0EBE7E)),
                  ),
                ],
              ),
            ),
            Positioned(top: 0, right: 0, child: FavouriteIcon()),
          ],
        ),
      ),
    );
  }
}
