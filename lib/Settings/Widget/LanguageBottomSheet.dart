import 'package:flutter/material.dart';

import 'SelectedOption.dart';
import 'UnSelectedoption.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectedOptionWidget(
            SelectedOption: "English",
          ),
          SizedBox(
            height: 30,
          ),
          UnSelectedOptionWidget(
            UnSelectedOption: "عربي",
          ),
        ],
      ),
    );
  }
}
