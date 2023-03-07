import 'package:flutter/material.dart';

class TrendingMovies extends StatelessWidget {
  final String image;
  final String title;
  const TrendingMovies({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.fromLTRB(4.0, 10.0, 4.0, 0.0),
        child: GestureDetector(
          onTap: () {},
          child: Image.network(
            'https://image.tmdb.org/t/p/w500' + image,
            height: 300,
          ),
        ),
      ),
      Text(title),
    ]);
  }
}