import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiagonsticButtom extends StatelessWidget {
  const DiagonsticButtom({super.key, required this.color1, required this.color2, required this.buttonText, required this.svgPath});
  final Color color1;
  final Color color2;
  final String svgPath;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 49.56,
          height: 52.94,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: [color1, color2],
            ),
          ),
          child: Center(
            child: SvgPicture.asset(
              svgPath,
              width: 20,
              height: 20,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(width: 9.44),
        Text(
          buttonText,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}