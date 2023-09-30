import 'package:flutter/material.dart';
import 'package:islami/Settings/Widget/SettingsItem.dart';

import 'Widget/LanguageBottomSheet.dart';
import 'Widget/ThemeModeBottomSheet.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
      child: Column(
        children: [
          SettingsItem(
              SettingsOptionTitle: "Language",
              SelectedOption: "English",
              onOptionTaped: () {
                showLanguageBottomSheet(context);
              }),
          SizedBox(
            height: 40,
          ),
          SettingsItem(
              SettingsOptionTitle: "Theme Mode",
              SelectedOption: "Light",
              onOptionTaped: () {
                showThemeModeBottomSheet(context);
              }),
        ],
      ),
    );
  }

  void showLanguageBottomSheet(context) {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageBottomSheet());
  }
}

void showThemeModeBottomSheet(context) {
  showModalBottomSheet(
      context: context, builder: (context) => ThemeModeBottomSheet());
}
