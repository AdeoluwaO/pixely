import 'package:flutter/material.dart';

class TrendingMovies extends StatelessWidget {
  final String image;
  const TrendingMovies({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {},
        child: Image.network(
          'https://image.tmdb.org/t/p/w500' + image,
          height: 200,
        ),
      ),
    );
    ;
  }
}


// 'https://image.tmdb.org/t/p/w500' + trendingMovies[index]['poster_path']
// Text( trendingMovies[index]['title'],  style: const TextStyle( fontSize: 12, ),