import 'package:doctorapp/core/back_ground_screen.dart';
import 'package:doctorapp/core/main_button.dart';
import 'package:doctorapp/core/screens_title.dart';
import 'package:doctorapp/screens/add_record_screen/widget/add_more_images.dart';
import 'package:doctorapp/screens/all_records/all_records.dart';
import 'package:doctorapp/screens/medical_record_screen/medical_record_screen.dart';
import 'package:flutter/material.dart';

class AddRecordScreen extends StatelessWidget {
  const AddRecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const BackGroundScreen(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ScreensTitle(
                  icon: Icons.arrow_back_ios_new_outlined,
                  text: "Add Records",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const MedicalRecordScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 38),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: AddMoreImages(hasImage: true),
                    ),
                    const SizedBox(width: 17),
                    AddMoreImages(hasImage: false),
                  ],
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: Offset(0, -5),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 31, left: 19),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Record for",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [Icon(Icons.edit)],
                              ),
                              const Text(
                                "Abdullah Mamun",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff0EBE7F),
                                ),
                              ),
                              const SizedBox(height: 27),
                              const Divider(),
                              const SizedBox(height: 18),
                              const Text(
                                "Type of record",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 17.33),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/icons/report1.png",
                                        width: 17,
                                        height: 22.67,
                                      ),
                                      const SizedBox(height: 6),
                                      const Text(
                                        "Report",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff677294),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 46),
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/icons/prescription.png",
                                        width: 17,
                                        height: 22.67,
                                      ),
                                      const SizedBox(height: 6),
                                      const Text(
                                        "Prescription",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff0EBE7F),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 50),
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/icons/Invoice.png",
                                        width: 17,
                                        height: 22.67,
                                      ),
                                      const SizedBox(height: 6),
                                      const Text(
                                        "Report",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff677294),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 21),
                              const Divider(),
                              const SizedBox(height: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Record created on",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [Icon(Icons.edit)],
                                  ),
                                  const Text(
                                    "27 Feb, 2021",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff0EBE7F),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              const Divider(),
                              const SizedBox(height: 35),
                              Center(
                                child: MainButton(
                                  onPrease: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => const AllRecords(),
                                      ),
                                    );
                                  },
                                  button_w: 270,
                                  button_h: 54,
                                  button_text: 'Upload record',
                                  button_radius: 6,
                                ),
                              ),
                              const SizedBox(height: 30),
                            ],
                          ),
                        ),
                      ),
                    ),
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
