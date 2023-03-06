import 'package:flutter/material.dart';

class TrendingMovies extends StatelessWidget {
  final List trendingMovies;
  const TrendingMovies({Key? key, required this.trendingMovies})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: trendingMovies.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Container(
              width: 250,
              margin: EdgeInsets.only(left: 8, right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 170,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://image.tmdb.org/t/p/w500' +
                              trendingMovies[index]['poster_path'],
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    trendingMovies[index]['title'],
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              )),
        );
      },
    );
  }
}
