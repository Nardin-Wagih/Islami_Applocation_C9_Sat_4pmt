import 'package:flutter/material.dart';
import 'package:islami/Core/Provider/AppProvider.dart';
import 'package:provider/provider.dart';

import 'SelectedOption.dart';
import 'UnSelectedoption.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

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
              appProvider.changeLanuage("en");
              Navigator.pop(context);
            },
            child: appProvider.CurrentLanguage == "en"
                ? SelectedOptionWidget(SelectedOption: "English")
                : UnSelectedOptionWidget(UnSelectedOption: "English"),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
              onTap: () {
                appProvider.changeLanuage("ar");
                Navigator.pop(context);
              },
              child: appProvider.CurrentLanguage == "ar"
                  ? SelectedOptionWidget(SelectedOption: "عربي")
                  : UnSelectedOptionWidget(UnSelectedOption: "عربي")),
        ],
      ),
    );
  }
}
