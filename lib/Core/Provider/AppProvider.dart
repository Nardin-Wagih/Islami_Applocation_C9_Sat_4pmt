import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  String CurrentLanguage = "en";
  ThemeMode CurrentTheme = ThemeMode.light;

  changeTheme(ThemeMode newTheme) {
    if (CurrentTheme == newTheme)
      return;
    else
      CurrentTheme = newTheme;

    notifyListeners();
  }

  bool isDark() {
    return CurrentTheme == ThemeMode.dark;
  }

  String background() {
    return isDark() ? "assets/Images/bg.png" : "assets/Images/background.png";
  }

  changeLanuage(String newLanguage) {
    if (CurrentLanguage == newLanguage)
      return;
    else
      CurrentLanguage = newLanguage;

    notifyListeners();
  }

  String splashScreen() {
    return isDark()
        ? "assets/Images/splash – 1splash_dark.png"
        : "assets/Images/splash.png";
  }

  String sebhaHead() {
    return isDark()
        ? "assets/Images/dark_head_of_seb7a.png"
        : "assets/Images/head_of_seb7a.png";
  }

  String sebhaBody() {
    return isDark()
        ? "assets/Images/dark_body_of_seb7a.png"
        : "assets/Images/body_of_seb7a.png";
  }

  String radio() {
    return isDark()
        ? "assets/Images/RadioDark.png"
        : "assets/Images/Group 5.png";
  }
}
