import 'package:flutter/material.dart';

// local imports
import '../screens/movie_deatils_screen.dart';

class TvShows extends StatelessWidget {
  final String image;
  final String name;
  final String? backDrop;
  const TvShows(
      {Key? key,
      required this.image,
      required this.name,
      required this.backDrop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(12.0, 5.0, 4.0, 0.0),
          child: GestureDetector(
// will add tap gesture for page backdropimage error
            onTap: () {},
            child: Image.network(
              'https://image.tmdb.org/t/p/w500$image',
              height: 200,
            ),
          ),
        ),
        Text(name),
      ],
    );
  }
}
