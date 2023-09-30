import 'package:flutter/material.dart';

typedef SettingsOptionClicked = void Function();

class SettingsItem extends StatelessWidget {
  final String SettingsOptionTitle;
  final String SelectedOption;
  final SettingsOptionClicked onOptionTaped;

  const SettingsItem(
      {super.key,
      required this.SettingsOptionTitle,
      required this.onOptionTaped,
      required this.SelectedOption});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          SettingsOptionTitle,
          textAlign: TextAlign.start,
          style: theme.textTheme.bodyMedium,
        ),
        GestureDetector(
          onTap: onOptionTaped,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: mediaQuery.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: theme.primaryColor,
                  width: 2,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(SelectedOption),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
