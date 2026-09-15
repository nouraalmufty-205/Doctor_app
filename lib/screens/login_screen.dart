import 'package:doctorapp/core/back_ground_screen.dart';
import 'package:doctorapp/core/greenbotton.dart';
import 'package:doctorapp/screens/homescreen.dart';
import 'package:doctorapp/screens/signup_screen.dart';
import 'package:doctorapp/widgets/costume_social_button.dart';
import 'package:doctorapp/widgets/custome_Input_field.dart';
import 'package:doctorapp/widgets/forgotpasswordsheet.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: const BackGroundScreen(),
            ),

            SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 60),

                      const Text(
                        "Welcome back",
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
                              imageAssetPath: "assets/google.png",
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
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            useSafeArea: true,
                            backgroundColor: Colors.transparent,
                            builder: (context) => ForgotPasswordBottomSheet(),
                          );
                        },
                        child: const Text(
                          "Forgor password",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0EBE7E),
                          ),
                        ),
                      ),
                      const SizedBox(height: 35),

                      SizedBox(
                        width: double.infinity,
                        child: GreenBotton(
                          title: "Login",
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 130),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account? ",
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
                                  builder: (context) => const SignUpScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Join us",
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
