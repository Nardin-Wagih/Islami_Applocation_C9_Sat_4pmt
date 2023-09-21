import 'package:flutter/material.dart';

class Sebha extends StatelessWidget {
  const Sebha({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Image(image: AssetImage("assets/Images/Component 1 – 1.png")),
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
                "30",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
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
                color: theme.primaryColor,
              ),
              child: Text(
                "سبحان الله",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
