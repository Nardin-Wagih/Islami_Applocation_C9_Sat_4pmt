import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../Core/Provider/AppProvider.dart';

class Radioview extends StatelessWidget {
  const Radioview({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);

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
        Image(image: AssetImage(appProvider.radio())),
      ],
    );
  }
}
