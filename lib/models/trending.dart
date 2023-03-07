import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  final String image;
  final String? name;
  const Trending({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(4.0, 10.0, 4.0, 0.0),
          child: GestureDetector(
            onTap: () {},
            child: Image.network(
              'https://image.tmdb.org/t/p/w500' + image,
              height: 400,
            ),
          ),
        ),
        Text(name == null ? 'Loading..' : name.toString()),
      ],
    );
  }
}
