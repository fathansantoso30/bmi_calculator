import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AgeSliderWidget extends StatefulWidget {
  const AgeSliderWidget({super.key});

  @override
  State<AgeSliderWidget> createState() => _AgeSliderWidgetState();
}

class _AgeSliderWidgetState extends State<AgeSliderWidget> {
  int age = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {
              setState(() {
                age -= 1;
              });
            },
            icon: const Icon(FontAwesomeIcons.minus)),
        Text(
          age.toString(),
          style: GoogleFonts.raleway(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        IconButton(
            onPressed: () {
              setState(() {
                age += 1;
              });
            },
            icon: const Icon(FontAwesomeIcons.plus))
      ],
    );
  }
}
