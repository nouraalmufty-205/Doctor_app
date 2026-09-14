import 'package:doctorapp/core/back_ground_screen.dart';
import 'package:doctorapp/core/screens_title.dart';
import 'package:doctorapp/screens/main_diagonstic_screen/widget/diagonstic_buttom.dart';
import 'package:doctorapp/screens/main_diagonstic_screen/widget/diagonstic_card.dart';
import 'package:flutter/material.dart';

class MainDiagonsticScreen extends StatelessWidget {
  const MainDiagonsticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child: BackGroundScreen(),
            ),
            Column(
              children: [
                ScreensTitle(
                  icon: Icons.arrow_back_ios_new_outlined,
                  text: "Diagonstics Tests",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 27, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Get Full body health checkups\nfrom the comfort of your home.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight(500),
                          height: 1.65,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text(
                        "Upto 45% off + get 10% healthcash back",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight(300),
                          height: 1.65,
                          color: Color(0xff0EBE7F),
                        ),
                      ),
                      SizedBox(height: 26),

                      GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 13.0,
                          mainAxisSpacing: 18.0,
                          childAspectRatio: 2.32,
                        ),
                        itemCount: item.length,
                        itemBuilder: (context, index) => item[index],
                      ),
                      SizedBox(height: 23),
                      Text(
                        'Recommend for you',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight(700),
                        ),
                      ),
                      SizedBox(height: 16),

                      Center(
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: cards.length,
                          separatorBuilder: (context, index) => SizedBox(
                            height: 14,
                          ),
                          itemBuilder: (context, index) {
                            return DiagonsticCard(
                              title: cards[index].title,
                              suptitle: cards[index].suptitle,
                              buttontext: cards[index].buttontext,
                              imagepath: cards[index].imagepath,
                              price: cards[index].price,
                              oldprice: cards[index].oldprice,
                              discount: cards[index].discount,
                              cashback: cards[index].cashback,
                            );
                          },
                        ),
                      )

                      
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<DiagonsticCard> cards = [
  DiagonsticCard(
    title: 'Advanced Young Indian Health Checkup',
    suptitle: 'Ideal for individuals aged 21-40 years',
    buttontext: '69 tests included',
    imagepath: 'assets/test1.png',
    price: '\$ 358 ',
    discount: '\$ 330',
    oldprice: '35% off',
    cashback: '\n 10% Health cashback T&C',
  ),
    DiagonsticCard(
    title: 'Working Women’s Health Checkup',
    suptitle: 'Ideal for individuals aged 21-40 years',
    buttontext: '119 tests included',
    imagepath: 'assets/test2.png',
    price: '\$ 387 ',
    discount: '\$ 345',
    oldprice: '35% off',
    cashback: '\n 10% Health cashback T&C',
  ),
    DiagonsticCard(
    title: 'Active Professional Health Checkup',
    suptitle: 'Ideal for individuals aged 21-40 years',
    buttontext: '100 tests included',
    imagepath: 'assets/test3.png',
    price: '\$ 457 ',
    discount: '\$ 411',
    oldprice: '35% off',
    cashback: '\n 10% Health cashback T&C',
  ),
];

List<DiagonsticButtom> item = [
  DiagonsticButtom(
    color1: Color(0xff2753F3),
    color2: Color(0xff765AFC),

    buttonText: 'Free home\nSample pickup',
    svgPath: "assets/icons/home.svg",
  ),
  DiagonsticButtom(
    color1: Color(0xffFF484C),
    color2: Color(0xffFF6C60),
    buttonText: 'Practo\nasociate labs',
    svgPath: 'assets/icons/call_center.svg',
  ),
  DiagonsticButtom(
    color1: Color(0xffFE7F44),
    color2: Color(0xffFFCF68),
    buttonText: 'E-Reports in\n24-72 hours',
    svgPath: 'assets/icons/E-report.svg',
  ),
  DiagonsticButtom(
    color1: Color(0xff0EBE7E),
    color2: Color(0xff07D9AD),
    buttonText: 'Free follow-up\nwith a doctor',
    svgPath: 'assets/icons/auto.svg',
  ),
];
