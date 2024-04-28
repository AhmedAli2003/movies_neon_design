import 'package:flutter/material.dart';
import 'package:movies_neon_design/components/custom_outline.dart';
import 'package:movies_neon_design/constants.dart';
import 'package:movies_neon_design/screens/home_screen.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomOutline(
      strokeWidth: 3,
      radius: 20,
      padding: const EdgeInsets.all(3),
      width: 160,
      height: 38,
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Constants.kPinkColor, Constants.kGreenColor],
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => const HomeScreen(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Center(
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 14,
                color: Constants.kWhiteColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
