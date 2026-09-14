import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final double buttonw;
  final double buttonh;
  final double buttonradius;
  final String buttontext;
  final VoidCallback? onPrease;
  final bool? changeColor;
  final Color? textColor;
  final Color? bkColor;
  final Color? borderColor;

  const MainButton({
    super.key,
    required this.buttonw,
    required this.buttonh,
    required this.buttontext,
    required this.buttonradius,
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
        width: buttonw,
        height: buttonh,
        decoration: BoxDecoration(
          color: changeColor == true ? bkColor ?? const Color(0xff0EBE7F) : const Color(0xff0EBE7F),
          borderRadius: BorderRadius.circular(buttonradius),
          border: Border.all(
            color: changeColor == true
                ? borderColor ?? Colors.transparent
                : Colors.transparent,
          ),
        ),
        child: Center(
          child: Text(
            buttontext,
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
