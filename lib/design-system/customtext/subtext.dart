import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubText extends StatelessWidget {
  const SubText({super.key, required this.size, required this.text});
  final double size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Testing',
      style: GoogleFonts.caveat(
        textStyle: TextStyle(fontSize: size),
      ),
    );
  }
}
