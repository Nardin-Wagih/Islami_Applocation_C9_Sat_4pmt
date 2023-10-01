import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Settings/Widget/SettingsItem.dart';
import 'package:provider/provider.dart';

import '../Core/Provider/AppProvider.dart';
import 'Widget/LanguageBottomSheet.dart';
import 'Widget/ThemeModeBottomSheet.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    var appProvider = Provider.of<AppProvider>(context);
    var locale = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
      child: Column(
        children: [
          SettingsItem(
              SettingsOptionTitle: locale.language,
              SelectedOption:
                  appProvider.CurrentLanguage == "en" ? "English" : "عربي",
              onOptionTaped: () {
                showLanguageBottomSheet(context);
              }),
          SizedBox(
            height: 40,
          ),
          SettingsItem(
              SettingsOptionTitle: locale.thememode,
              SelectedOption: appProvider.isDark() ? locale.dark : locale.light,
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
