import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../Core/Provider/AppProvider.dart';
import 'SelectedOption.dart';
import 'UnSelectedoption.dart';

class ThemeModeBottomSheet extends StatelessWidget {
  const ThemeModeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              appProvider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: appProvider.isDark()
                ? SelectedOptionWidget(
                    SelectedOption: AppLocalizations.of(context)!.dark)
                : UnSelectedOptionWidget(
                    UnSelectedOption: AppLocalizations.of(context)!.dark),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              appProvider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: appProvider.isDark()
                ? UnSelectedOptionWidget(
                    UnSelectedOption: AppLocalizations.of(context)!.light)
                : SelectedOptionWidget(
                    SelectedOption: AppLocalizations.of(context)!.light),
          ),
        ],
      ),
    );
  }
}
