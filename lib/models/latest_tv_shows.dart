import 'package:flutter/material.dart';

class TvShows extends StatelessWidget {
  final String image;
  const TvShows({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {},
        child: Image.network(
          'https://image.tmdb.org/t/p/w500' + image,
          height: 170,
          width: 100,
        ),
      ),
    );
  }
}
