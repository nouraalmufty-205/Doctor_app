import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainMedicineCard extends StatelessWidget {
  const MainMedicineCard({
    super.key,
    required this.bkcolor,
    required this.roundColor,
    required this.svgpath,
    required this.svgW,
    required this.svgH,
    required this.cardText,
  });

  final Color bkcolor;
  final Color roundColor;
  final String svgpath;
  final String cardText;
  final dynamic svgH;
  final dynamic svgW;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 160,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: bkcolor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 38,
                backgroundColor: roundColor,
                child: SvgPicture.asset(svgpath, width: svgW, height: svgH),
              ),
            ),
            SizedBox(height: 10),
            Text(
              cardText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff677294),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
