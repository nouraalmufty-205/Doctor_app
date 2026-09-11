import 'package:flutter/material.dart';

class AppointmentSlotCard extends StatefulWidget {
  final String date;
  final String slot;

  const AppointmentSlotCard({
    super.key,
    required this.date,
    required this.slot,
  });

  @override
  State<AppointmentSlotCard> createState() => _AppointmentSlotCardState();
}

class _AppointmentSlotCardState extends State<AppointmentSlotCard> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        height: 50,
        width: 170,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
          color: _isSelected ? Colors.transparent : Color(0xff0EBE7F),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                SizedBox(height: 8),
                Text(
                  widget.date,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isSelected ? Color(0xff333333) : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${widget.slot} slots available",
                  style: TextStyle(
                    fontSize: 10,
                    color: _isSelected ? Color(0xff333333) : Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
