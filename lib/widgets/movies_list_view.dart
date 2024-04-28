import 'package:flutter/material.dart';
import 'package:movies_neon_design/components/masked_image.dart';
import 'package:movies_neon_design/constants.dart';
import 'package:movies_neon_design/movies.dart';


class MoviesListView extends StatelessWidget {
  const MoviesListView({
    super.key,
    required this.movies,
  });

  final List<Movie> movies;

  static const itemHeight = 160.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: itemHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final String mask;
          final lastIndex = index == movies.length - 1;
          final firstIndex = index == 0;
          if (firstIndex) {
            mask = Constants.kMaskFirstIndex;
          } else if (lastIndex) {
            mask = Constants.kMaskLastIndex;
          } else {
            mask = Constants.kMaskCenter;
          }
          return GestureDetector(
            child: Container(
              margin: lastIndex
                  ? const EdgeInsets.only(right: 16)
                  : firstIndex
                      ? const EdgeInsets.only(left: 16)
                      : EdgeInsets.zero,
              height: itemHeight,
              width: 142,
              child: MaskedImage(
                asset: movies[index].moviePoster,
                mask: mask,
              ),
            ),
          );
        },
      ),
    );
  }
}