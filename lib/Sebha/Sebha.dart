import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Core/Provider/AppProvider.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  double angleRotate = 0;

  int counter = 0;
  List<String> text = [
    "سبحان الله",
    "الحمد الله",
    "الله اكبر",
  ];
  int currentText = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    var appProvider = Provider.of<AppProvider>(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    margin: EdgeInsets.only(top: size.height * 0.09),
                    child: Transform.rotate(
                      angle: angleRotate,
                      child: Theme(
                        data: ThemeData(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent),
                        child: InkWell(
                          onTap: () {
                            ClickOnImage();
                          },
                          child: Image.asset(
                            appProvider.sebhaBody(),
                            height: size.height * 0.2,
                          ),
                        ),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(left: size.height * 0.09),
                    child: Image.asset(
                      appProvider.sebhaHead(),
                      height: size.height * 0.1,
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text("عدد التسبيحات"),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              height: 81,
              width: 69,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: theme.primaryColor,
              ),
              child: Text(
                "$counter",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: theme.colorScheme.background,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              height: 81,
              width: 137,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: theme.colorScheme.onSecondary,
              ),
              child: Text(
                text[currentText],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: theme.colorScheme.onBackground),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void ClickOnImage() {
    angleRotate += 3;
    counter++;
    if (counter == 30) {
      counter = 0;
      currentText++;
      if (currentText > 2) currentText = 0;
    }

    setState(() {});
  }
}
