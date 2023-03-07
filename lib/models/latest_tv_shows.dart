import 'package:flutter/material.dart';

class TvShows extends StatelessWidget {
  final String image;
  final String name;
  const TvShows({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: GestureDetector(
            onTap: () {},
            child: Image.network(
              'https://image.tmdb.org/t/p/w500' + image,
              height: 170,
              width: 100,
            ),
          ),
        ),
        Text(name),
      ],
    );
  }
}
