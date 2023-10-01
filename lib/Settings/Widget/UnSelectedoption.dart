import 'package:flutter/material.dart';

class UnSelectedOptionWidget extends StatelessWidget {
  final String UnSelectedOption;

  const UnSelectedOptionWidget({super.key, required this.UnSelectedOption});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white10.withOpacity(0.05),
          border: Border.all(
            color: Colors.black,
          )),
      child: Text(UnSelectedOption),
    );
  }
}
