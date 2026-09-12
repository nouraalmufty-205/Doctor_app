import 'package:doctorapp/core/main_button.dart';
import 'package:doctorapp/core/screens_title.dart';
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

  const ConfimationScreen({
    super.key,
    required this.screensTitleText,
    required this.screenTitleNavigator,
    required this.mainImage, required this.firstText, required this.secandText, required this.button_w, required this.button_h, required this.button_text, required this.button_radius,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/My_doctors_screen.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
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
                        backgroundImage: AssetImage(mainImage)),
                    ),
                      SizedBox(height: 51,),
                      Text(firstText, style: TextStyle(fontSize: 22 ,fontWeight: FontWeight(700),color: Color(0xff222222)),),
                      SizedBox(height: 13,),
                      Text(secandText ,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight(400),color: Color(0xff677294)),),
                      SizedBox(height: 48,),
                      MainButton(button_w: button_w, button_h: button_h, button_text: button_text, button_radius: button_radius,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
