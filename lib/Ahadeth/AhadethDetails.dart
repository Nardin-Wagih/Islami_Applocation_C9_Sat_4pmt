import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../Core/Provider/AppProvider.dart';
import 'AhadethView.dart';

class AhadethDetails extends StatefulWidget {
  static const String routeName = "HadethDetails";

  const AhadethDetails({super.key});

  @override
  State<AhadethDetails> createState() => _AhadethDetailsState();
}

class _AhadethDetailsState extends State<AhadethDetails> {
  String Content = "";
  int verseNumber = 0;
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as hadethDetails;
    var appProvider = Provider.of<AppProvider>(context);
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(appProvider.background()),
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
            color: theme.colorScheme.onBackground.withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                arg.title,
                style: theme.textTheme.headlineLarge,
              ),
              Divider(
                thickness: 1.2,
                color: theme.colorScheme.onSecondary,
                indent: 40,
                endIndent: 40,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    arg.content,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(height: 1.8),
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
}
