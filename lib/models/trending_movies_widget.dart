import 'package:flutter/material.dart';

// local imports
import '../screens/movie_deatils_screen.dart';

class TrendingMovies extends StatelessWidget {
  final String image;
  final String title;
  final String backDrop;
  const TrendingMovies(
      {Key? key,
      required this.image,
      required this.title,
      required this.backDrop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.fromLTRB(4.0, 10.0, 4.0, 0.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MovieDetails(
                  image: backDrop,
                  subImage: image.toString(),
                ),
              ),
            );
          },
          child: Image.network(
            'https://image.tmdb.org/t/p/w500$image',
            height: 300,
          ),
        ),
      ),
      Text(title),
    ]);
  }
}
