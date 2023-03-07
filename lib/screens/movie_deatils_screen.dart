import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key, required this.image, required this.subImage});
  final String? image;
  final String? subImage;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                // background image
                Image.network(
                  'https://image.tmdb.org/t/p/w500$image',
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, screenHeight * 0.20, screenHeight * 0.33, 0),
                    child: Container(
                      // profile image
                      child: Image.network(
                        'https://image.tmdb.org/t/p/w500$subImage',
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
