import 'package:doctorapp/core/main_button.dart';
import 'package:doctorapp/core/screens_title.dart';
import 'package:doctorapp/screens/add_record_screen/add_record_screen.dart';
import 'package:doctorapp/screens/all_records/widget/all_record_item.dart';
import 'package:flutter/material.dart';

class AllRecords extends StatelessWidget {
  const AllRecords({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/My_doctors_screen.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              ScreensTitle(
                icon: Icons.arrow_back_ios_new_outlined,
                text: "All Records",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => AddRecordScreen()),
                  );
                },
              ),
              SizedBox(height: 38),
              AllRecordItem(
                day: '27',
                month: 'Feb',
                firstrecord: 'Records added by you',
                secandrecord: 'Record for Abdullah mamun',
                thirdrecord: '1 Prescription',
              ),
              SizedBox(height: 10),
              AllRecordItem(
                day: '28',
                month: 'Feb',
                firstrecord: 'Records added by you',
                secandrecord: 'Record for Abdullah shuvo',
                thirdrecord: '1 Prescription',
              ),
              SizedBox(height: 10),
              AllRecordItem(
                day: '1',
                month: 'MAR',
                firstrecord: 'Records added by you',
                secandrecord: 'Record for Shruti Kedia',
                thirdrecord: '1 Prescription',
              ),
              SizedBox(height: 10),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: MainButton(
                  button_w: 270,
                  button_h: 54,
                  button_text: "Add a record",
                  button_radius: 6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
