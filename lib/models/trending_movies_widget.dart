import 'package:flutter/material.dart';

class TrendingMovies extends StatelessWidget {
  final List trendingMovies;
  const TrendingMovies({Key? key, required this.trendingMovies})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: trendingMovies.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://image.tmdb.org/t/p/w500' +
                        trendingMovies[index]['poster_path'],
                    height: 200,
                    width: 400,
                  ),
                ),
                Text(trendingMovies[index]['title'],
                    style: const TextStyle(
                      fontSize: 12,
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}


// 'https://image.tmdb.org/t/p/w500' + trendingMovies[index]['poster_path']
// Text( trendingMovies[index]['title'],  style: const TextStyle( fontSize: 12, ),