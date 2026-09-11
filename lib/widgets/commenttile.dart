import 'package:flutter/material.dart';

class CommentTile extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const CommentTile({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.start, // pins avatar + text to same top line
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: Image.asset(image).image,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: const TextStyle(color: Color(0xffFFFFFF)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
