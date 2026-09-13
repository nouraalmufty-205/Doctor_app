import 'package:doctorapp/screens/favouritescreen.dart';

import 'package:doctorapp/screens/homescreen.dart';
import 'package:doctorapp/screens/messagescreen.dart';
import 'package:doctorapp/screens/readscreen.dart';
import 'package:flutter/material.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    FavouriteScreen(),
    ReadScreen(),
    MessageScreen(),
  ];

  final List<IconData> icons = const [
    Icons.home,
    Icons.favorite,
    Icons.auto_stories,
    Icons.chat,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(index: currentIndex, children: screens),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 12,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(icons.length, (index) {
            final bool isSelected = index == currentIndex;
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected
                      ? const Color(0xff53B175)
                      : Colors.transparent,
                ),
                child: Icon(
                  icons[index],
                  color: isSelected ? Colors.white : Colors.grey,
                  size: 24,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
