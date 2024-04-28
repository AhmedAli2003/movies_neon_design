
import 'package:flutter/material.dart';
import 'package:movies_neon_design/constants.dart';

class HomeScreenTitle extends StatelessWidget {
  const HomeScreenTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'What would you like to watch?',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 28,
        color: Constants.kWhiteColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
