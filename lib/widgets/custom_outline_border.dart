import 'package:flutter/material.dart';
import 'package:movies_neon_design/components/custom_outline.dart';
import 'package:movies_neon_design/constants.dart';

class CustomOutlineBorder extends StatelessWidget {
  const CustomOutlineBorder({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return CustomOutline(
      strokeWidth: 4,
      radius: screenWidth * 0.8,
      padding: const EdgeInsets.all(4),
      width: screenWidth * 0.8,
      height: screenWidth * 0.8,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Constants.kPinkColor,
          Constants.kPinkColor.withOpacity(0),
          Constants.kGreenColor.withOpacity(0.1),
          Constants.kGreenColor
        ],
        stops: const [0.2, 0.4, 0.6, 1],
      ),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: Alignment.bottomLeft,
            image: AssetImage(Constants.onboardingImg),
          ),
        ),
      ),
    );
  }
}
