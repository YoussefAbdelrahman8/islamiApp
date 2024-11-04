import 'package:flutter/material.dart';
import 'package:islamiapp/DataClasses/Sura.dart';
import 'package:islamiapp/Screens/HomeScreen/Tabs/QuraanTab/QuraanRowWidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuraanTab extends StatelessWidget {
  List<Sura> quranSuras = [
    Sura(suraName: "Al-Fatihah", verseNumber: "7"),
    Sura(suraName: "Al-Baqarah", verseNumber: "286"),
    Sura(suraName: "Aal-E-Imran", verseNumber: "200"),
    Sura(suraName: "An-Nisa'", verseNumber: "176"),
    Sura(suraName: "Al-Ma'idah", verseNumber: "120"),
    Sura(suraName: "Al-An'am", verseNumber: "165"),
    Sura(suraName: "Al-A'raf", verseNumber: "206"),
    Sura(suraName: "Al-Anfal", verseNumber: "75"),
    Sura(suraName: "At-Tawbah", verseNumber: "129"),
    Sura(suraName: "Yunus", verseNumber: "109"),
    Sura(suraName: "Hud", verseNumber: "123"),
    Sura(suraName: "Yusuf", verseNumber: "111"),
    Sura(suraName: "Ar-Ra'd", verseNumber: "43"),
    Sura(suraName: "Ibrahim", verseNumber: "52"),
    Sura(suraName: "Al-Hijr", verseNumber: "99"),
    Sura(suraName: "An-Nahl", verseNumber: "128"),
    Sura(suraName: "Al-Isra", verseNumber: "111"),
    Sura(suraName: "Al-Kahf", verseNumber: "110"),
    Sura(suraName: "Maryam", verseNumber: "98"),
    Sura(suraName: "Ta-Ha", verseNumber: "135"),
    Sura(suraName: "Al-Anbiya", verseNumber: "112"),
    Sura(suraName: "Al-Hajj", verseNumber: "78"),
    Sura(suraName: "Al-Mu'minun", verseNumber: "118"),
    Sura(suraName: "An-Nur", verseNumber: "64"),
    Sura(suraName: "Al-Furqan", verseNumber: "77"),
    Sura(suraName: "Ash-Shu'ara", verseNumber: "227"),
    Sura(suraName: "An-Naml", verseNumber: "93"),
    Sura(suraName: "Al-Qasas", verseNumber: "88"),
    Sura(suraName: "Al-Ankabut", verseNumber: "69"),
    Sura(suraName: "Ar-Rum", verseNumber: "60"),
    Sura(suraName: "Luqman", verseNumber: "34"),
    Sura(suraName: "As-Sajda", verseNumber: "30"),
    Sura(suraName: "Al-Ahzab", verseNumber: "73"),
    Sura(suraName: "Saba'", verseNumber: "54"),
    Sura(suraName: "Fatir", verseNumber: "45"),
    Sura(suraName: "Ya-Sin", verseNumber: "83"),
    Sura(suraName: "As-Saffat", verseNumber: "182"),
    Sura(suraName: "Sad", verseNumber: "88"),
    Sura(suraName: "Az-Zumar", verseNumber: "75"),
    Sura(suraName: "Ghafir", verseNumber: "85"),
    Sura(suraName: "Fussilat", verseNumber: "54"),
    Sura(suraName: "Ash-Shura", verseNumber: "53"),
    Sura(suraName: "Az-Zukhruf", verseNumber: "89"),
    Sura(suraName: "Ad-Dukhan", verseNumber: "59"),
    Sura(suraName: "Al-Jathiya", verseNumber: "37"),
    Sura(suraName: "Al-Ahqaf", verseNumber: "35"),
    Sura(suraName: "Muhammad", verseNumber: "38"),
    Sura(suraName: "Al-Fath", verseNumber: "29"),
    Sura(suraName: "Al-Hujurat", verseNumber: "18"),
    Sura(suraName: "Qaf", verseNumber: "45"),
    Sura(suraName: "Adh-Dhariyat", verseNumber: "60"),
    Sura(suraName: "At-Tur", verseNumber: "49"),
    Sura(suraName: "An-Najm", verseNumber: "62"),
    Sura(suraName: "Al-Qamar", verseNumber: "55"),
    Sura(suraName: "Ar-Rahman", verseNumber: "78"),
    Sura(suraName: "Al-Waqi'a", verseNumber: "96"),
    Sura(suraName: "Al-Hadid", verseNumber: "29"),
    Sura(suraName: "Al-Mujadila", verseNumber: "22"),
    Sura(suraName: "Al-Hashr", verseNumber: "24"),
    Sura(suraName: "Al-Mumtahina", verseNumber: "13"),
    Sura(suraName: "As-Saff", verseNumber: "14"),
    Sura(suraName: "Al-Jumu'a", verseNumber: "11"),
    Sura(suraName: "Al-Munafiqun", verseNumber: "11"),
    Sura(suraName: "At-Taghabun", verseNumber: "18"),
    Sura(suraName: "At-Talaq", verseNumber: "12"),
    Sura(suraName: "At-Tahrim", verseNumber: "12"),
    Sura(suraName: "Al-Mulk", verseNumber: "30"),
    Sura(suraName: "Al-Qalam", verseNumber: "52"),
    Sura(suraName: "Al-Haqqah", verseNumber: "52"),
    Sura(suraName: "Al-Ma'arij", verseNumber: "44"),
    Sura(suraName: "Nuh", verseNumber: "28"),
    Sura(suraName: "Al-Jinn", verseNumber: "28"),
    Sura(suraName: "Al-Muzzammil", verseNumber: "20"),
    Sura(suraName: "Al-Muddathir", verseNumber: "56"),
    Sura(suraName: "Al-Qiyama", verseNumber: "40"),
    Sura(suraName: "Al-Insan", verseNumber: "31"),
    Sura(suraName: "Al-Mursalat", verseNumber: "50"),
    Sura(suraName: "An-Naba'", verseNumber: "40"),
    Sura(suraName: "An-Nazi'at", verseNumber: "46"),
    Sura(suraName: "Abasa", verseNumber: "42"),
    Sura(suraName: "At-Takwir", verseNumber: "29"),
    Sura(suraName: "Al-Infitar", verseNumber: "19"),
    Sura(suraName: "Al-Mutaffifin", verseNumber: "36"),
    Sura(suraName: "Al-Inshiqaq", verseNumber: "25"),
    Sura(suraName: "Al-Buruj", verseNumber: "22"),
    Sura(suraName: "At-Tariq", verseNumber: "17"),
    Sura(suraName: "Al-A'la", verseNumber: "19"),
    Sura(suraName: "Al-Ghashiya", verseNumber: "26"),
    Sura(suraName: "Al-Fajr", verseNumber: "30"),
    Sura(suraName: "Al-Balad", verseNumber: "20"),
    Sura(suraName: "Ash-Shams", verseNumber: "15"),
    Sura(suraName: "Al-Lail", verseNumber: "21"),
    Sura(suraName: "Ad-Duha", verseNumber: "11"),
    Sura(suraName: "Ash-Sharh", verseNumber: "8"),
    Sura(suraName: "At-Tin", verseNumber: "8"),
    Sura(suraName: "Al-Alaq", verseNumber: "19"),
    Sura(suraName: "Al-Qadr", verseNumber: "5"),
    Sura(suraName: "Al-Bayyina", verseNumber: "8"),
    Sura(suraName: "Az-Zalzala", verseNumber: "8"),
    Sura(suraName: "Al-Adiyat", verseNumber: "11"),
    Sura(suraName: "Al-Qari'a", verseNumber: "11"),
    Sura(suraName: "At-Takathur", verseNumber: "8"),
    Sura(suraName: "Al-Asr", verseNumber: "3"),
    Sura(suraName: "Al-Humaza", verseNumber: "9"),
    Sura(suraName: "Al-Fil", verseNumber: "5"),
    Sura(suraName: "Quraish", verseNumber: "4"),
    Sura(suraName: "Al-Ma'un", verseNumber: "7"),
    Sura(suraName: "Al-Kawthar", verseNumber: "3"),
    Sura(suraName: "Al-Kafirun", verseNumber: "6"),
    Sura(suraName: "An-Nasr", verseNumber: "3"),
    Sura(suraName: "Al-Masad", verseNumber: "5"),
    Sura(suraName: "Al-Ikhlas", verseNumber: "4"),
    Sura(suraName: "Al-Falaq", verseNumber: "5"),
    Sura(suraName: "An-Nas", verseNumber: "6"),
  ];

  QuraanTab({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Expanded(child: Image.asset("assets/images/quran_header_icn.png")),
        const Divider(
          height: 0,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                textAlign: TextAlign.center,
                AppLocalizations.of(context)!.suraName,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Container(
              height: 0.05 * height,
              width: 3,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            Expanded(
              child: Text(
                textAlign: TextAlign.center,
                AppLocalizations.of(context)!.verseNum,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
        const Divider(
          height: 0,
        ),
        Expanded(
          flex: 2,
          child: ListView.builder(
              itemBuilder: (context, index) {
                quranSuras[index].suraIndex = index;
                return QuraanRowWidget(sura: quranSuras[index]);
              },
              itemCount: quranSuras.length),
        )
      ],
    );
  }
}
