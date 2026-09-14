import 'package:doctorapp/screens/help_center/help_center_screen.dart';
import 'package:flutter/material.dart';

class HelpItem extends StatelessWidget {
  const HelpItem({super.key, required this.itemText});

  final String itemText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 19 ,bottom: 35),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=> HelpCenterScreen()));
        },
        child: Row(
          children: [
            Expanded(
              child: Text(
                itemText,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff677294),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.arrow_forward_ios_outlined ,color: Color(0xff677294),),
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
