import 'package:flutter/material.dart';

class CommentBar extends StatelessWidget {
  const CommentBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35.0),
      ),
      child: Row(
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: const BoxDecoration(
              color: Color(0xFF00C875),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.chat_bubble_outline_rounded,
              color: Colors.white,
              size: 20,
            ),
          ),

          const SizedBox(width: 12),

          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add a Comment...",
                hintStyle: TextStyle(color: Color(0xFF9E9E9E), fontSize: 16),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 10),
              ),
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),

          IconButton(
            icon: const Icon(
              Icons.sentiment_satisfied_alt_rounded,
              color: Color(0xFF9E9E9E),
              size: 26,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
