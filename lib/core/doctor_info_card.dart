import 'package:doctorapp/core/favourite_icon.dart';
import 'package:doctorapp/core/screens_title.dart';
import 'package:flutter/material.dart';

class DoctorInfoCard extends StatefulWidget {
  final String image;
  final String name;
  final String specialty;
  final String? rate;
  final String? views;

  const DoctorInfoCard({
    super.key,
    required this.image,
    required this.name,
    required this.specialty,
    this.rate,
    this.views,
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
          // height: 88,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        widget.image,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 28),
                      child: Column(
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
                            style: TextStyle(
                              color: Color(0xff677294),
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: List.generate(5, (index) {
                                  return Icon(
                                    index < 4 ? Icons.star : Icons.star_border,
                                    color: Colors.amber,
                                    size: 14,
                                  );
                                }),
                              ),
                              const Spacer(),
                              Text(
                                widget.rate ?? "0.0",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                "(${widget.views ?? "0"} views) ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              FavouriteIcon(),
            ],
          ),
        ),
      ],
    );
  }
}
