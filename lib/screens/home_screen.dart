import 'package:flutter/material.dart';
import 'package:movies_neon_design/constants.dart';
import 'package:movies_neon_design/movies.dart';
import 'package:movies_neon_design/widgets/blured_container.dart';
import 'package:movies_neon_design/widgets/home_screen_title.dart';
import 'package:movies_neon_design/widgets/list_title.dart';
import 'package:movies_neon_design/widgets/movies_list_view.dart';
import 'package:movies_neon_design/widgets/search_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: BluredContainer(
                side: 96,
                color: Constants.kGreenColor.withOpacity(0.8),
              ),
            ),
            Positioned(
              top: height / 3,
              right: 20,
              child: const BluredContainer(
                side: 124,
                color: Constants.kPinkColor,
              ),
            ),
            const Positioned(
              bottom: 20,
              left: 20,
              child: BluredContainer(
                side: 96,
                color: Constants.kCyanColor,
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.20),
                      child: const HomeScreenTitle(),
                    ),
                    const SizedBox(height: 24),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: SearchTextField(),
                    ),
                    const SizedBox(height: 32),
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: ListTitle(title: 'New Movies'),
                    ),
                    const SizedBox(height: 32),
                    MoviesListView(movies: newMovies),
                    const SizedBox(height: 32),
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: ListTitle(title: 'Upcoming Movies'),
                    ),
                    const SizedBox(height: 32),
                    MoviesListView(movies: upcomingMovies),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
