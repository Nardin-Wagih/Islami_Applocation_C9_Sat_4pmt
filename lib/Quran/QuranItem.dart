import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  final String SuraName;
  final String SuraNumber;

  const QuranItem(
      {super.key, required this.SuraName, required this.SuraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            SuraNumber,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        Container(
          width: 1.5,
          color: theme.colorScheme.onSecondary,
          height: 45,
        ),
        Expanded(
            child: Text(
          SuraName,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium,
        )),
      ],
    );
  }
}
