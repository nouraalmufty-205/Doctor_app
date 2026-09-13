import 'package:flutter/material.dart';

class FavouriteIcon extends StatefulWidget {
  const FavouriteIcon({super.key});

  @override
  State<FavouriteIcon> createState() => _FavouriteIconState();
}

class _FavouriteIconState extends State<FavouriteIcon> {
  bool _isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: 0,
      child: InkWell(
        onTap: () {
          setState(() {
            _isLiked = !_isLiked;
          });
        },
        child: Icon(
          _isLiked ? Icons.favorite : Icons.favorite_border_outlined,
          color: _isLiked ? Colors.red : const Color(0xff67729480),
        ),
      ),
    );
  }
}
