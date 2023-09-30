import 'package:flutter/material.dart';

class UnSelectedOptionWidget extends StatelessWidget {
  final String UnSelectedOption;

  const UnSelectedOptionWidget({super.key, required this.UnSelectedOption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(UnSelectedOption),
    );
  }
}
