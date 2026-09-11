import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final double button_w;
  final double button_h;
  final double button_radius;
  final String button_text;

  const MainButton({
    super.key,
    required this.button_w,
    required this.button_h,
    required this.button_text,
    required this.button_radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: button_w,
      height: button_h,
      decoration: BoxDecoration(
        color: const Color(0xff0EBE7F),
        borderRadius: BorderRadius.circular(button_radius),
      ),
      child: Center(
        child: Text(
          button_text,
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
