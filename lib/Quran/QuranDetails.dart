import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Quran/QuranView.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = "QuranDetails";

  const QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  String Content = "";
  int verseNumber = 0;
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (Content.isEmpty) {
      readFiles(arg.SuraNumber);
    }

    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/Images/background.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islami),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          margin: EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 120),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
            color: Color(0xffF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة ${arg.SuraName} ",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.play_circle,
                    size: 32,
                  ),
                ],
              ),
              Divider(
                thickness: 1.2,
                color: theme.primaryColor,
                indent: 40,
                endIndent: 40,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    Content,
                    style: theme.textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                  itemCount: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  readFiles(String index) async {
    String Text = await rootBundle.loadString("assets/Files/$index.txt");
    Content = Text;

    setState(() {
      allVerses = Content.split("\n");
    });
  }
}
