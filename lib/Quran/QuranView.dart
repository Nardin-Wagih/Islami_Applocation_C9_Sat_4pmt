import 'package:flutter/material.dart';
import 'package:islami/Quran/QuranDetails.dart';
import 'package:islami/Quran/QuranItem.dart';

class QuranView extends StatelessWidget {
  QuranView({super.key});

  List<String> SuraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image(image: AssetImage("assets/Images/quran_image.png")),
        Divider(
          color: theme.primaryColor,
          thickness: 1.2,
          indent: 10,
          endIndent: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                "رقم السورة",
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            Container(
              width: 1.5,
              color: theme.primaryColor,
              height: 45,
            ),
            Expanded(
                child: Text(
              "اسم السورة",
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge,
            )),
          ],
        ),
        Divider(
          color: theme.primaryColor,
          thickness: 1.2,
          indent: 10,
          endIndent: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, QuranDetails.routeName,
                      arguments: SuraDetails(
                          SuraName: SuraNames[index],
                          SuraNumber: "${index + 1}"));
                },
                child: QuranItem(
                  SuraName: SuraNames[index],
                  SuraNumber: "${index + 1}",
                )),
            itemCount: SuraNames.length,
          ),
        )
      ],
    );
  }
}

class SuraDetails {
  final String SuraName;
  final String SuraNumber;

  SuraDetails({required this.SuraName, required this.SuraNumber});
}
