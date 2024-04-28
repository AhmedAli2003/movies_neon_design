import 'package:flutter/material.dart';
import 'package:movies_neon_design/constants.dart';
import 'package:movies_neon_design/widgets/blured_container.dart';
import 'package:movies_neon_design/widgets/custom_outline_border.dart';
import 'package:movies_neon_design/widgets/page_view_dots.dart';
import 'package:movies_neon_design/widgets/sign_up_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.1,
              left: -64,
              child: const BluredContainer(color: Constants.kPinkColor),
            ),
            Positioned(
              top: screenHeight * 0.3,
              right: -80,
              child: const BluredContainer(color: Constants.kGreenColor),
            ),
            Positioned(
              bottom: 0,
              left: screenWidth * 0.25,
              child: const BluredContainer(
                side: 100,
                color: Constants.kPinkColor,
              ),
            ),
            Positioned(
              bottom: 0,
              right: screenWidth * 0.2,
              child: const BluredContainer(
                side: 100,
                color: Constants.kGreenColor,
              ),
            ),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight * 0.07),
                  CustomOutlineBorder(screenWidth: screenWidth),
                  SizedBox(height: screenHeight * 0.09),
                  OnBoardingTextOne(screenHeight: screenHeight),
                  SizedBox(height: screenHeight * 0.05),
                  OnBoardingTextTwo(screenHeight: screenHeight),
                  SizedBox(height: screenHeight * 0.03),
                  const SignUpButton(),
                  const Spacer(),
                  const PageViewDots(),
                  SizedBox(height: screenHeight * 0.01)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardingTextOne extends StatelessWidget {
  const OnBoardingTextOne({
    super.key,
    required this.screenHeight,
  });
  final double screenHeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      'Watch movies in\nVirtual Reality',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Constants.kWhiteColor.withOpacity(0.85),
        fontSize: screenHeight <= 667 ? 18 : 34,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class OnBoardingTextTwo extends StatelessWidget {
  const OnBoardingTextTwo({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Download and watch offline\nwherever you are',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Constants.kWhiteColor.withOpacity(0.75),
        fontSize: screenHeight <= 667 ? 12 : 16,
      ),
    );
  }
}
