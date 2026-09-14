import 'package:doctorapp/core/main_button.dart';
import 'package:flutter/material.dart';

class DiagonsticCard extends StatelessWidget {
  const DiagonsticCard({
    super.key,
    required this.title,
    required this.suptitle,
    required this.buttontext,
    required this.imagepath,
    required this.price, required this.discount,required this.oldprice,
    required this.cashback,

  });
  final String title;
  final String suptitle;
  final String buttontext;
  final String imagepath;
  final String price;
  final String  discount;
  final String oldprice;
  final dynamic cashback;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 20,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 19),
            child: Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight(500)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6, bottom: 18, left: 19),
            child: Text(
              suptitle,
              style: TextStyle(
                fontWeight: FontWeight(300),
                color: Color(0xff677294),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: MainButton(
              button_w: 130,
              button_h: 32,
              button_text: buttontext,
              button_radius: 6,
              changeColor: true,
              textColor: Color(0xff0EBE7F),
              bkColor: Colors.white,
              borderColor: Color(0xff0EBE7F),
            ),
          ),
          SizedBox(height: 18),
          SizedBox(
            width: double.infinity,
            child: Image.asset(imagepath, fit: BoxFit.contain),
          ),
          SizedBox(height: 11),
          Row(
            children: [
              Text.rich(
                TextSpan(
                  text: price,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight(400)),
                  children: <InlineSpan>[
                    TextSpan(
                      text: oldprice ,style: 
                      TextStyle(fontSize: 16, fontWeight: FontWeight(400),color: Color(0xff677294))
                    ),
                    TextSpan(
                      text: discount ,style: 
                      TextStyle( fontWeight: FontWeight(400),color: Color(0xff0EBE7F))
                    ),
                    TextSpan(
                      text: cashback ,style: 
                      TextStyle(fontWeight: FontWeight(400),color: Color(0xff677294))
                    )
                  ],
                ),
              ),
              SizedBox(width: 11),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: MainButton(
                  button_w: 110,
                  button_h: 32,
                  button_text: "Book Now",
                  button_radius: 6,
                ),
              ),
              SizedBox(height: 23,)
            ],
          ),
        ],
      ),
    );
  }
}
