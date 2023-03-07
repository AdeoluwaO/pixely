import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key, required this.image, required this.subImage});
  final String? image;
  final String? subImage;

  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Image.network(
                    'https://image.tmdb.org/t/p/w500' + image.toString()),
                Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, ScreenHeight * 0.20, ScreenHeight * 0.33, 0),
                    child: Container(
                      child: Image.network(
                        'https://image.tmdb.org/t/p/w500' + subImage.toString(),
                        height: 100,
                        width: 200,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
