import 'package:doctorapp/core/back_ground_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(child: BackGroundScreen()),
          const SizedBox(height: 150),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Join us to start searching",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "You can search c ourse, apply course and find"
                "scholarship for abroad studies",
                style: TextStyle(color: Color(0xff677294)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
