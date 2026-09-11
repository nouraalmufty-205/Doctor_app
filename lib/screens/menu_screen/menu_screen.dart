import 'package:doctorapp/model/menu_model.dart';
import 'package:doctorapp/screens/menu_screen/widget/menu_item.dart';
import 'package:doctorapp/screens/menu_screen/widget/user_info.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff6F7FA1), Color(0xff536184)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              UserInfo(),
              Expanded(
                child: Row(
                  children: [
                    SingleChildScrollView(
                      padding: const EdgeInsets.only(top: 72, left: 20),
                      child: Column(
                        children: products
                            .map((product) => MenuTile(menuModel: product))
                            .toList(),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 51),
                      child: Column(
                        children: [Image.asset("assets/menu_secand_image.png")],
                      ),
                    ),
                  ],
                ),
              ),
                Padding(
                  padding: const EdgeInsets.only(left: 29, bottom: 49),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage("assets/icons/logout.png"),
                        color: Colors.white, //
                      ),
      
                      Padding(
                        padding: const EdgeInsets.only(left: 27),
                        child: Text(
                          "Logout",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight(500),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}

List<MenuModel> products = [
  MenuModel(icon: Icons.person, title: 'My Doctors', selected: true),
  MenuModel(icon: Icons.article_outlined, title: 'Medical Records'),
  MenuModel(icon: Icons.payment, title: 'Payments'),
  MenuModel(icon: Icons.shopping_bag_outlined, title: 'Medicine Orders'),
  MenuModel(icon: Icons.calendar_month_outlined, title: 'Test Bookings'),
  MenuModel(icon: Icons.privacy_tip_outlined, title: 'Privacy & Policy'),
  MenuModel(icon: Icons.help, title: 'Help Center'),
  MenuModel(icon: Icons.settings, title: 'Settings'),
];
