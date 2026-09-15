import 'package:doctorapp/screens/finddoctorscreen.dart';
import 'package:doctorapp/widgets/commentbar.dart';
import 'package:doctorapp/widgets/commenttile.dart';
import 'package:flutter/material.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,

            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 16,
                          color: Color(0xff677294),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: Image.asset('assets/live.png').image,
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,

            child: InkWell(
                onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => FindDoctorsScreen(),
                          ),
                        );
                      },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      // ignore: deprecated_member_use
                      Colors.black.withOpacity(0.85),
                    ],
                  ),
                ),
              
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView(
                      shrinkWrap: true,
              
                      children: [
                        CommentTile(
                          title: "Everhart Tween",
                          image: 'assets/comment1.png',
                          subtitle: "Thanks for shareing doctor",
                        ),
              
                        CommentTile(
                          title: "Bonebrake Mash",
                          image: 'assets/comment2.png',
                          subtitle: "They treat immune system disorders",
                        ),
                        CommentTile(
                          title: "Handler  Wack",
                          image: 'assets/comment3.png',
                          subtitle: "This is the largest directory",
                        ),
                        CommentTile(
                          title: "Comfort Love",
                          image: 'assets/comment4.png',
                          subtitle: "Depending on their education",
                        ),
                      ],
                    ),
                    CommentBar(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
