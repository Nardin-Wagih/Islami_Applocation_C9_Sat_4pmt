import 'package:flutter/material.dart';

class AhadethView extends StatelessWidget {
  const AhadethView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Ahadeth",
        style: TextStyle(
          fontSize: 50,
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
