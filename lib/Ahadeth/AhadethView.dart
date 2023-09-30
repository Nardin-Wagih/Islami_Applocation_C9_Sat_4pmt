import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'AhadethDetails.dart';

class AhadethView extends StatefulWidget {
  AhadethView({super.key});

  @override
  State<AhadethView> createState() => _AhadethViewState();
}

class _AhadethViewState extends State<AhadethView> {
  List<hadethDetails> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) readFile();
    var theme = Theme.of(context);
    return Column(
      children: [
        Image(image: AssetImage("assets/Images/ahadeth_image.png")),
        Divider(
          color: theme.primaryColor,
          thickness: 1.2,
          height: 10,
        ),
        Text(
          "الاحاديث",
          style: theme.textTheme.bodyLarge,
        ),
        Divider(
          color: theme.primaryColor,
          thickness: 1.2,
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AhadethDetails.routeName,
                      arguments: hadethDetails(
                          title: allHadeth[index].title,
                          content: allHadeth[index].content));
                },
                child: Text(
                  allHadeth[index].title,
                  textAlign: TextAlign.center,
                )),
            itemCount: allHadeth.length,
          ),
        ),
      ],
    );
  }

  readFile() async {
    String text = await rootBundle.loadString("assets/AhadethFile/ahadeth.txt");
    List<String> allAhadeth = text.split("#");

    for (int i = 0; i < allAhadeth.length; i++) {
      String singleHadeth = allAhadeth[i].trim(); // remove all spaces
      int indexOfFirstline = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, indexOfFirstline);
      String content = singleHadeth.substring(indexOfFirstline + 1);

      hadethDetails hadethContent =
          hadethDetails(title: title, content: content);
      allHadeth.add(hadethContent);

      setState(() {});

    }
  }
}

class hadethDetails {
  final String title;
  final String content;

  hadethDetails({required this.title, required this.content});
}
