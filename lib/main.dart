import 'package:doctorapp/screens/menu_screen/menu_screen.dart';
import 'package:doctorapp/screens/livescreen.dart';
import 'package:doctorapp/widgets/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuScreen(), 
    );
  }
}
