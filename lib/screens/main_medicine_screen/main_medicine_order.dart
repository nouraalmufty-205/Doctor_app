import 'package:doctorapp/core/screens_title.dart';
import 'package:doctorapp/screens/main_medicine_screen/widget/main_medicine_card.dart';
import 'package:doctorapp/screens/my_doctors/widget/search_feild.dart';
import 'package:flutter/material.dart';

class MainMedicineOrder extends StatelessWidget {
  const MainMedicineOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/My_doctors_screen.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              ScreensTitle(
                icon: Icons.arrow_back_ios_new_rounded,
                text: "Medicines orders",
              ),
              const SizedBox(height: 38),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SearchFeild(
                  Text_feild: 'Search',
                  lIcon: Icons.search,
                  ricon: Icons.close,
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 1,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return products[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<MainMedicineCard> products = [
    MainMedicineCard(
    bkcolor: Colors.white,
    roundColor: Color(0xFFC6EFE5).withOpacity(0.76),
    svgpath: "assets/icons/box.svg",
    cardText: 'Guide to medicine\norder', svgW: 24, svgH: 27.56,
  ),
    MainMedicineCard(
    bkcolor: Colors.white,
    roundColor: Color(0xFFC6EFE5).withOpacity(0.76),
    svgpath: "assets/icons/paper.svg",
    cardText: 'Prescription related\nissues', svgW: 23, svgH: 30.19,
  ),
    MainMedicineCard(
    bkcolor: Colors.white,
    roundColor: Color(0xFFC6EFE5).withOpacity(0.76),
    svgpath: "assets/icons/shopcar.svg",
    cardText: 'Order status', svgW: 28, svgH: 28,
  ),
    MainMedicineCard(
    bkcolor: Colors.white,
    roundColor: Color(0xFFC6EFE5).withOpacity(0.76),
    svgpath: "assets/icons/moto.svg",
    cardText: 'Order delivery', svgW: 24, svgH: 22.36,
  ),
    MainMedicineCard(
    bkcolor: Colors.white,
    roundColor: Color(0xFFC6EFE5).withOpacity(0.76),
    svgpath: "assets/icons/creditcrad.svg",
    cardText: 'Payments & Refunds', svgW: 26.91, svgH: 18.5,
  ),
    MainMedicineCard(
    bkcolor: Colors.white,
    roundColor: Color(0xFFC6EFE5).withOpacity(0.76),
    svgpath: "assets/icons/return.svg",
    cardText: 'Order returns', svgW: 27, svgH: 28.22

,
  ),
];
