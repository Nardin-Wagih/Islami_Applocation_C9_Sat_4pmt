import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Radioview extends StatelessWidget {
  const Radioview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage("assets/Images/radio_image.png")),
        SizedBox(
          height: 20,
        ),
        Text("اذاعة القران الكريم",
            style: GoogleFonts.elMessiri(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            )),
        SizedBox(
          height: 40,
        ),
        Image(image: AssetImage("assets/Images/Group 5.png")),
      ],
    );
  }
}
