import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_neon_design/constants.dart';


class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Constants.kWhiteColor,
      ),
      cursorColor: Constants.kWhiteColor,
      maxLines: 1,
      decoration: InputDecoration(
        fillColor: Constants.kWhiteColor.withOpacity(0.05),
        filled: true,
        prefixIcon: SvgPicture.asset(
          Constants.kIconSearch,
          width: 16,
          height: 16,
          fit: BoxFit.scaleDown,
        ),
        suffixIcon: SvgPicture.asset(
          Constants.kIconMic,
          width: 16,
          height: 16,
          fit: BoxFit.scaleDown,
        ),
        hintText: 'Search',
        hintStyle: TextStyle(
          color: Constants.kWhiteColor.withOpacity(0.5),
        ),
        contentPadding: const EdgeInsets.all(8.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 0.0,
            style: BorderStyle.none,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 0.0,
            style: BorderStyle.none,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 0.0,
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}

