import 'package:flutter/material.dart';

class ScreensTitle extends StatelessWidget {
  final IconData icon;
  final String text;

  const ScreensTitle({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,top:7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                border: Border.all(color: Color(0xffFFFFFF)),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              width: 30,
              height: 30,
              child: IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: (){
                  Navigator.pop(context); 
                },
                icon: Center(child: Icon(icon, size: 20)),
              ),
            ),
          ),
          SizedBox(width: 19),
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff333333),
            ),
          ),
        ],
      ),
    );
  }
}
