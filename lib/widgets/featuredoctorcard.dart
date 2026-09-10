import 'package:flutter/material.dart';

class FeatureDoctorCard extends StatefulWidget {
  final String name;
  final String image;
  final double rating;
  final double price;

  const FeatureDoctorCard({
    super.key,
    required this.name,
    required this.image,
    required this.rating,
    required this.price,
  });

  @override
  State<FeatureDoctorCard> createState() => _FeatureDoctorCardState();
}

class _FeatureDoctorCardState extends State<FeatureDoctorCard> {
  bool _isliked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 180,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    setState(() {
                      _isliked = !_isliked;
                    });
                  },
                  icon: Icon(
                    _isliked ? Icons.favorite : Icons.favorite_border,
                    size: 20,
                    color: _isliked ? Colors.red : Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.star, size: 16, color: Color(0xffFFC529)),
                    const SizedBox(width: 4),
                    Text(
                      widget.rating.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image.asset(
                    widget.image,
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                widget.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color(0xff333333),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.attach_money,
                  size: 16,
                  color: Color(0xff53B175),
                ),
                Text(
                  widget.price.toStringAsFixed(2),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Color(0xff53B175),
                  ),
                ),
                const Text(
                  "/ hours",
                  style: TextStyle(fontSize: 13, color: Color(0xff677294)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
