import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final double button_w;
  final double button_h;
  final double button_radius;
  final String button_text;
  final VoidCallback? onPrease;
  final bool? changeColor;
  final Color? textColor;
  final Color? bkColor;
  final Color? borderColor;

  const MainButton({
    super.key,
    required this.button_w,
    required this.button_h,
    required this.button_text,
    required this.button_radius,
    this.onPrease,
    this.textColor,
    this.bkColor,
    this.changeColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPrease,
      child: Container(
        width: button_w,
        height: button_h,
        decoration: BoxDecoration(
          color: changeColor == true ? bkColor ?? const Color(0xff0EBE7F) : const Color(0xff0EBE7F),
          borderRadius: BorderRadius.circular(button_radius),
          border: Border.all(
            color: changeColor == true
                ? borderColor ?? Colors.transparent
                : Colors.transparent,
          ),
        ),
        child: Center(
          child: Text(
            button_text,
            style: TextStyle(
              color: changeColor == true ? textColor ?? const Color(0xffFFFFFF) : const Color(0xffFFFFFF),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
