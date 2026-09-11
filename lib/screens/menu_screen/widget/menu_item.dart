import 'package:doctorapp/model/menu_model.dart';
import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  final MenuModel menuModel;

  const MenuTile({
    super.key,
    required this.menuModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 212,
      height: 61,
      padding: const EdgeInsets.only(
        left: 10,
        top: 18,
        right: 31,
        bottom: 20.01,
      ),
      decoration: BoxDecoration(
        color: menuModel.selected
            ? Colors.white12
            : Colors.transparent,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Icon(
            menuModel.icon,
            color: Colors.white,
            size: 19,
          ),
          const SizedBox(width: 22),
          Expanded(
            child: Text(
              menuModel.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white70,
            size: 13,
          ),
        ],
      ),
    );
  }
}