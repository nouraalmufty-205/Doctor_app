import 'package:doctorapp/core/back_ground_screen.dart';
import 'package:doctorapp/core/screens_title.dart';
import 'package:doctorapp/screens/help_center/widget/help_item.dart';
import 'package:doctorapp/screens/my_doctors/widget/search_feild.dart';
import 'package:flutter/material.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            BackGroundScreen(),
            Column(
              children: [
                ScreensTitle(
                  icon: Icons.arrow_back_ios_new_outlined,
                  text: "Help center",
                ),
                SizedBox(height: 38),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SearchFeild(textfeild: 'I have an issue with',hastextcolor: true, textColor: Color(0xff0EBE7F),),
                ),
                const SizedBox(height: 19),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: item.length,
                    itemBuilder: (context, index) {
                      return item[index];
                    },
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

List<HelpItem> item = [
  const HelpItem(itemText: 'Booking a new Appointment'),
  const HelpItem(itemText: 'Existing Appointment'),
  const HelpItem(itemText: 'Online consultations'),
  const HelpItem(itemText: 'Feedbacks'),
  const HelpItem(itemText: 'Medicine orders'),
  const HelpItem(itemText: 'Diagnostic Tests'),
  const HelpItem(itemText: 'Health plans'),
  const HelpItem(itemText: 'My account and Practo Drive'),
  const HelpItem(itemText: 'Have a feature in mind'),
  const HelpItem(itemText: 'Other issues'),
];
