import 'package:flutter/material.dart';
import 'package:islami/Ahadeth/AhadethView.dart';
import 'package:islami/Quran/QuranView.dart';
import 'package:islami/Radio/Radio.dart';
import 'package:islami/Sebha/Sebha.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/Images/background.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "اسلامي",
          ),
        ),
        body: Tabs[SelectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
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
          unselectedItemColor: Colors.white,
          backgroundColor: Theme.of(context).primaryColor,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/Icons/radio.png"), size: 28),
                label: "راديو"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/Icons/sebha_icon.png"),
                    size: 28),
                label: "سبحه"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage("assets/Icons/quran-quran-svgrepo-com.png"),
                    size: 28),
                label: "الاحاديث"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/Icons/quran.png"), size: 28),
                label: "قران"),
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
  ];
}

