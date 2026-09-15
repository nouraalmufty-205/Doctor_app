import 'package:blobs/blobs.dart';
import 'package:doctorapp/core/back_ground_screen.dart';
import 'package:doctorapp/core/greenbotton.dart';
import 'package:doctorapp/screens/homescreen.dart';
import 'package:doctorapp/screens/signup_screen.dart';
import 'package:flutter/material.dart';


class OnBording1 extends StatelessWidget {
  const OnBording1({super.key});
  static const String _blobId = '7-4-192837';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(child: BackGroundScreen()),
          SizedBox(height: 100),
          Positioned(
            top: -120,
            left: -100,
            child: Blob.fromID(
              id: [_blobId],
              size: 420,
              styles: BlobStyles(
                color: Color(0xff0EBE7E),
                fillType: BlobFillType.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    const Color(0xff0EBE7E).withValues(alpha:0.25),
                    Colors.white,
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 40),
              Center(
                child: Container(
                  width: 350,
                  height: 350,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage("assets/onbording1.png"),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha:  0.08),
                        blurRadius: 20,
                        offset: const Offset(0, 12),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    const Text(
                      'Find Trusted Doctors',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1F2937),
                        letterSpacing: -0.5,
                      ),
                    ),
                    const SizedBox(height: 14),
                    const Text(
                      'Contrary to popular belief, Lorem Ipsum is '
                      'not simply random text. It has roots in a '
                      'piece of it over 2000 years old.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        color: Color(0xff677294E5),
                      ),
                    ),
                    const SizedBox(height: 32),
                    GreenBotton(
                      title: "Get Started",
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),

                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff677294),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
