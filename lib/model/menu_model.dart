import 'package:flutter/material.dart';

class MenuModel {
  IconData icon;
  String title;
  bool selected;

  MenuModel({
    required this.icon,
    required this.title,
    this.selected = false,
  });
}