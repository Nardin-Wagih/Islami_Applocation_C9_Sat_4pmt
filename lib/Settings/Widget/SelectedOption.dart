import 'package:flutter/material.dart';

class SelectedOptionWidget extends StatelessWidget {
  final String SelectedOption;

  const SelectedOptionWidget({super.key, required this.SelectedOption});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white24,
          border: Border.all(
            color: Colors.black,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(SelectedOption),
          Icon(Icons.check),
        ],
      ),
    );
  }
}
