import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Ahadeth/AhadethView.dart';
import 'package:islami/Core/Provider/AppProvider.dart';
import 'package:islami/Quran/QuranView.dart';
import 'package:islami/Radio/Radio.dart';
import 'package:islami/Sebha/Sebha.dart';
import 'package:islami/Settings/Settings.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(appProvider.background()),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.islami,
          ),
        ),
        body: Tabs[SelectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          // type: BottomNavigationBarType.fixed,
          // selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(
            fontSize: 20,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 20,
          ),
          currentIndex: SelectedIndex,
          onTap: (value) => setState(() {
            SelectedIndex = value;
          }),
          // unselectedItemColor: Colors.white,
          // backgroundColor: Theme.of(context).primaryColor,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/Icons/radio.png"), size: 28),
                label: AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/Icons/sebha_icon.png"),
                    size: 28),
                label: AppLocalizations.of(context)!.tasbeh),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage("assets/Icons/quran-quran-svgrepo-com.png"),
                    size: 28),
                label: AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/Icons/quran.png"), size: 28),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings, size: 28),
                label: AppLocalizations.of(context)!.settings),
          ],
        ),
      ),
    );
  }

  List<Widget> Tabs = [
    Radioview(),
    Sebha(),
    AhadethView(),
    QuranView(),
    Settings(),
  ];
}
