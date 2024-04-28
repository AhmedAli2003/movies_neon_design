import 'package:flutter/material.dart';
import 'package:movies_neon_design/constants.dart';

class PageViewDots extends StatelessWidget {
  const PageViewDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) {
          return Container(
            height: 7,
            width: 7,
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == 0
                  ? Constants.kGreenColor
                  : Constants.kWhiteColor.withOpacity(0.2),
            ),
          );
        },
      ),
    );
  }
}
