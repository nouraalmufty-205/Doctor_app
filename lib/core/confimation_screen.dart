import 'package:doctorapp/core/back_ground_screen.dart';
import 'package:doctorapp/core/main_button.dart';
import 'package:doctorapp/core/screens_title.dart';
import 'package:flutter/material.dart';

class ConfimationScreen extends StatelessWidget {
  final String screensTitleText;
  final String mainImage;
  final String firstText;
  final String secandText;
  final double buttonw;
  final double buttonh;
  final String buttontext;
  final double buttonradius;
  final Widget route;

  const ConfimationScreen({
    super.key,
    required this.screensTitleText,
    required this.mainImage,
    required this.firstText,
    required this.secandText,
    required this.buttonw,
    required this.buttonh,
    required this.buttontext,
    required this.buttonradius,
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
                        buttonw: buttonw,
                        buttonh: buttonh,
                        buttontext: buttontext,
                        buttonradius: buttonradius,
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
