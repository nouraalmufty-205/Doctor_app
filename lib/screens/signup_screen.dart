import 'package:doctorapp/core/back_ground_screen.dart';
import 'package:doctorapp/core/greenbotton.dart';
import 'package:doctorapp/screens/homescreen.dart';
import 'package:doctorapp/screens/login_screen.dart';
import 'package:doctorapp/widgets/costume_social_button.dart';
import 'package:doctorapp/widgets/custome_Input_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isAgreed = false;
  bool _obscurePassword = true;
  final _formKey = GlobalKey<FormState>();
  void submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Processing Login...')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned.fill(child: const BackGroundScreen()),

            SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),
                      const Text(
                        "Join us to start searching",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "You can search course, apply course and find\nscholarship for abroad studies",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff677294),
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 40),

                      Row(
                        children: [
                          Expanded(
                            child: CustomSocialButton(
                              label: "Google",

                              imageAssetPath: 'assets/google.png',
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: CustomSocialButton(
                              label: "Facebook",
                              imageAssetPath: "assets/facebook.png",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 35),

                      CustomInputField(hintText: "Name"),
                      const SizedBox(height: 16),
                      Form(
                        key: _formKey,
                        child: CustomInputField(
                          hintText: "Email",
                          suffixIcon: const Icon(
                            Icons.check,
                            color: Color(0xff677294),
                            size: 18,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter a value';
                            } else if (!value.contains("@") ||
                                !value.contains(".")) {
                              return "invalid Email";
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 16),
                      CustomInputField(
                        hintText: "Password",
                        obscureText: _obscurePassword,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: const Color(0xff677294),
                            size: 20,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter a value';
                          } else if (value.length < 8) {
                            return "too Short";
                          } else if (!RegExp(r'[a-z]').hasMatch(value)) {
                            return "must contain lowercase letter";
                          } else if (!RegExp(r'[A-Z]').hasMatch(value)) {
                            return "must contain uppercase letter";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isAgreed = !_isAgreed;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _isAgreed
                                    ? const Color(0xff0EBE7E)
                                    : const Color(0xffD1D5DB),
                              ),
                              child: _isAgreed
                                  ? const Icon(
                                      Icons.check,
                                      size: 12,
                                      color: Colors.white,
                                    )
                                  : null,
                            ),
                            const SizedBox(width: 12),
                            const Expanded(
                              child: Text(
                                "I agree with the Terms of Service & Privacy Policy",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff677294),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 35),

                      GreenBotton(
                        title: "Sign Up",
                        ontap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 170),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Have an account? ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff0EBE7E),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Log in",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff0EBE7E),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
