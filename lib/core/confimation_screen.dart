import 'package:doctorapp/core/back_ground_screen.dart';
import 'package:doctorapp/core/main_button.dart';
import 'package:doctorapp/core/screens_title.dart';
import 'package:doctorapp/screens/add_record_screen/add_record_screen.dart';
import 'package:flutter/material.dart';

class ConfimationScreen extends StatelessWidget {
  final String screensTitleText;
  final Widget screenTitleNavigator;
  final String mainImage;
  final String firstText;
  final String secandText;
  final double button_w;
  final double button_h;
  final String button_text;
  final double button_radius;
  final Widget route;

  const ConfimationScreen({
    super.key,
    required this.screensTitleText,
    required this.screenTitleNavigator,
    required this.mainImage,
    required this.firstText,
    required this.secandText,
    required this.button_w,
    required this.button_h,
    required this.button_text,
    required this.button_radius,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const BackGroundScreen(),
            Column(
              children: [
                Row(
                  children: [
                    ScreensTitle(
                      icon: Icons.arrow_back_ios_new_outlined,
                      text: screensTitleText,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => screenTitleNavigator,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 107,
                          backgroundImage: AssetImage(mainImage),
                        ),
                      ),
                      const SizedBox(height: 51),
                      Text(
                        firstText,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff222222),
                        ),
                      ),
                      const SizedBox(height: 13),
                      Text(
                        secandText,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff677294),
                        ),
                      ),
                      const SizedBox(height: 48),
                      MainButton(
                        button_w: button_w,
                        button_h: button_h,
                        button_text: button_text,
                        button_radius: button_radius,
                        onPrease: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => route),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

