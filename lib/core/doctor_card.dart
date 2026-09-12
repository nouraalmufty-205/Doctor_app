import 'package:doctorapp/core/main_button.dart';
import 'package:doctorapp/screens/medical_record_screen/medical_record_screen.dart';
import 'package:doctorapp/model/doctor_model.dart';
import 'package:flutter/material.dart';

class DoctorCardMain extends StatefulWidget {
  final DoctorModel doctorModel;

  const DoctorCardMain({super.key, required this.doctorModel});

  @override
  State<DoctorCardMain> createState() => _DoctorCardMainState();
}

class _DoctorCardMainState extends State<DoctorCardMain> {
  late bool colored;

  @override
  void initState() {
    super.initState();
    colored = widget.doctorModel.colored ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color(0xffFFFFFF),
          width: 335,
          height: widget.doctorModel.cardHeight ?? 177,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 18,
              left: 20,
              right: 17,
              bottom: 17,
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Image.asset(
                            widget.doctorModel.imageName,
                            width: 92,
                            height: 87,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    widget.doctorModel.doctorName,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff333333),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    widget.doctorModel.doctorTitle,
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff0EBE7F),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    widget.doctorModel.doctorExperience,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xff677294),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 10,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: const Color(0xff0EBE7F),
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          Text(
                                            widget
                                                .doctorModel
                                                .doctorSpercentage,
                                            style: const TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff677294),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 17),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 10,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: const Color(0xff0EBE7F),
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          Text(
                                            widget.doctorModel.doctorNPatient,
                                            style: const TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff677294),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            colored = !colored;
                          });
                        },
                        child: Icon(
                          colored
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          color: colored
                              ? Colors.red
                              : const Color(0xff67729480),
                        ),
                      ),
                    ),
                  ],
                ),
                if (widget.doctorModel.hasBooking ?? false) ...[
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Next Available',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff0EBE7F),
                              ),
                            ),
                            const SizedBox(height: 5),
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  color: Color(0xff677294),
                                  fontWeight: FontWeight.w500,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        widget.doctorModel.openingHour ??
                                        '9:00',
                                  ),
                                  const TextSpan(
                                    text: 'AM tomorrow',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      MainButton(
                        onPrease: () => {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MedicalRecordScreen(),
                              ),
                            );
                          }),
                        },
                        button_w: 112,
                        button_h: 34,
                        button_text: 'Book Now',
                        button_radius: 4,
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
