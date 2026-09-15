import 'package:doctorapp/core/greenbotton.dart';
import 'package:doctorapp/widgets/custome_Input_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordBottomSheet extends StatelessWidget {
  const ForgotPasswordBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Center(
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                right: 24,
                top: 12,

                bottom: MediaQuery.of(context).viewInsets.bottom + 30,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 130,
                      height: 5,
                      decoration: BoxDecoration(
                        color: const Color(0xffC4C4C4),
                        borderRadius: BorderRadius.circular(2.5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),

                  const Text(
                    "Forgot password",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 12),

                  const Text(
                    "Enter your email for the verification proccesss,\nwe will send 4 digits code to your email.",
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.4,
                      color: Color(0xff677294),
                    ),
                  ),
                  const SizedBox(height: 30),

                  const CustomInputField(hintText: "Email"),
                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    child: GreenBotton(
                      title: "Continue",
                      ontap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
