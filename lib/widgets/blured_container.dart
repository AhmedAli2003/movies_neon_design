import 'dart:ui';

import 'package:flutter/material.dart';

class BluredContainer extends StatelessWidget {
  const BluredContainer({
    super.key,
    required this.color,
    this.side,
  });

  final Color color;
  final double? side;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: side ?? 200,
      width: side ?? 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: side == null ? 96 : side! / 2.05,
          sigmaY: side == null ? 96 : side! / 2.05,
        ),
        child: Container(
          height: side ?? 200,
          width: side ?? 200,
          color: Colors.transparent,
        ),
      ),
    );
  }
}
