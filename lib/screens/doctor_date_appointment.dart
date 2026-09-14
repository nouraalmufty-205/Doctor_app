import 'package:doctorapp/core/screens_title.dart';
import 'package:doctorapp/widgets/appointment_selection_panel.dart';
import 'package:flutter/material.dart';

class DoctorDateAppointment extends StatelessWidget {
  const DoctorDateAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Container(
      //   height: 409,
      //   width: double.infinity,
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(45),
      //       topRight: Radius.circular(45),
      //     ),
      //   ),
      // body: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text(
      //         "Available Time",
      //         style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      //       ),
      //     ],
      //   ),
      // ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/My_doctors_screen.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  child: Column(
                    children: [
                      ScreensTitle(
                        icon: Icons.arrow_back_ios,
                        text: "Appointment",
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(height: 29),
                      Image.asset(
                        "assets/shedule.png",
                        height: 280,
                        width: 339,
                      ),
                      const SizedBox(height: 60),

                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              topRight: Radius.circular(45),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(20, 35, 20, 20),
                            child: AppointmentSelectionPanel(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
