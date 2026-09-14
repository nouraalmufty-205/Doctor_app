import 'package:flutter/material.dart';

class CustomSocialButton extends StatelessWidget {
  final String label;
  final String imageAssetPath;

  const CustomSocialButton({
    super.key,
    required this.label,
    required this.imageAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageAssetPath,
            width: 22,
            height: 22,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 10),
          Text(
            label,
            style: const TextStyle(
              fontSize: 15,
              color: Color(0xff677294),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
