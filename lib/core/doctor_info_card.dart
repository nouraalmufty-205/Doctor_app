import 'package:doctorapp/core/screens_title.dart';
import 'package:flutter/material.dart';

class DoctorInfoCard extends StatefulWidget {
  final String image;
  final String name;
  final String specialty;
  const DoctorInfoCard({
    super.key,
    required this.image,
    required this.name,
    required this.specialty,
  });

  @override
  State<DoctorInfoCard> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DoctorInfoCard> {
  bool _isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 88,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Image.asset(
                  widget.image,
                  width: 72,
                  height: 72,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      widget.specialty,
                      style: TextStyle(color: Color(0xff677294), fontSize: 12),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: List.generate(5, (index) {
                        return Icon(
                          index < 4 ? Icons.star : Icons.star_border,
                          color: Colors.amber,
                          size: 14,
                        );
                      }),
                    ),
                  ],
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),

                onPressed: () {
                  setState(() {
                    _isLiked = !_isLiked;
                  });
                },
                icon: Icon(
                  _isLiked ? Icons.favorite : Icons.favorite_border,
                  size: 20,
                  color: _isLiked ? Colors.red : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
