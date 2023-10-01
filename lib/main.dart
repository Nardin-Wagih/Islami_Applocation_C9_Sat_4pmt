import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Core/Provider/AppProvider.dart';
import 'package:islami/Core/Theme/Applicationtheme.dart';
import 'package:islami/Quran/QuranDetails.dart';
import 'package:islami/SplashScreen.dart';
import 'package:provider/provider.dart';

import 'Ahadeth/AhadethDetails.dart';
import 'HomeScreen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    return MaterialApp(
      title: 'Islami Application',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(appProvider.CurrentLanguage),
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SplashScreen.routeName: (_) => SplashScreen(),
        QuranDetails.routeName: (_) => QuranDetails(),
        AhadethDetails.routeName: (_) => AhadethDetails(),
      },
      initialRoute: SplashScreen.routeName,
      theme: ApplicationTheme.LightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      themeMode: appProvider.CurrentTheme,
    );
  }
}

