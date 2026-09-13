import 'package:flutter/material.dart';

class BackGroundScreen extends StatelessWidget {
  const BackGroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/My_doctors_screen.png"),
              fit: BoxFit.cover,
            ),
          ),
    );
  }
}