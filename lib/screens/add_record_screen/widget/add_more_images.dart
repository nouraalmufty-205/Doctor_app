import 'package:doctorapp/screens/medical_record_screen/medical_record_screen.dart';
import 'package:flutter/material.dart';

class AddMoreImages extends StatelessWidget {
  final bool hasImage;
  const AddMoreImages({super.key, required this.hasImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: hasImage
            ? const DecorationImage(
                image: AssetImage('assets/addRecord.png'),
                fit: BoxFit.cover,
              )
            : null,
        color: !hasImage ? const Color.fromARGB(80, 14, 190, 128) : null,
      ),
      child: !hasImage
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MedicalRecordScreen(),
                      ),
                    );
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return const SizedBox(
                          height: 300,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 123,
                                  top: 20,
                                  right: 122,
                                  bottom: 29,
                                ),
                                child: Divider(height: 5),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Add a record',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    SizedBox(height: 26),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.camera_alt,
                                          color: Color(0xff677294),
                                        ),
                                        SizedBox(width: 13),
                                        Text(
                                          'Take a photo',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff677294),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 21),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.photo,
                                          color: Color(0xff677294),
                                        ),
                                        SizedBox(width: 13),
                                        Text(
                                          'Upload from gallery',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff677294),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 21),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.picture_as_pdf_rounded,
                                          color: Color(0xff677294),
                                        ),
                                        SizedBox(width: 13),
                                        Text(
                                          'Upload files',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff677294),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: const Icon(
                    Icons.add,
                    size: 29,
                    color: Color(0xff0EBE7F),
                  ),
                ),
                const Text(
                  "Add more \nimages",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xff0EBE7F)),
                ),
              ],
            )
          : null,
    );
  }
}
