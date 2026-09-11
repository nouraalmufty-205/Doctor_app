import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17, left: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 44,
            backgroundImage: AssetImage("assets/user-menu.png"),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 17 ,left: 11.48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Abdullah Mamun",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  SizedBox(width: 1.9),
                  Row(
                    children: [
                      Icon(Icons.phone, color: Color(0xffFFFFFF)),
                      Text(
                        "01303-527300",
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

           Padding(
            padding: const EdgeInsets.only(top: 17,right: 20),
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Color(0xffFF0000),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.close, 
                  color: Colors.white,
                  size: 30, 
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
