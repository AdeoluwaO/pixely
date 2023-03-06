import 'package:flutter/material.dart';

class TvShows extends StatelessWidget {
  final List tvShows;
  const TvShows({Key? key, required this.tvShows}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: tvShows.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Container(
              padding: const EdgeInsets.only(top: 6),
              margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 190,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://image.tmdb.org/t/p/w500' +
                              tvShows[index]['poster_path'],
                        ),
                      ),
                    ),
                  ),
                  Text(tvShows[index]['name'])
                ],
              )),
        );
      },
    ));
  }
}
