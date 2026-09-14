import 'package:flutter/material.dart';

class GreenBotton extends StatelessWidget {
  final String title;
  final Function()? ontap;
  const GreenBotton({super.key, required this.title, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: 306,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff0EBE7F),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: GestureDetector(
            onTap: ontap,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
