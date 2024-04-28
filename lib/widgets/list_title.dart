import 'package:flutter/material.dart';
import 'package:movies_neon_design/constants.dart';


class ListTitle extends StatelessWidget {
  const ListTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Constants.kWhiteColor,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
