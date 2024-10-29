import 'package:flutter/material.dart';
import 'package:islamiapp/DataClasses/Sura.dart';
import 'package:islamiapp/Screens/QuraanDetailScreen/QuraanDetailsScreen.dart';

class QuraanRowWidget extends StatelessWidget {
  Sura sura;

  QuraanRowWidget({required this.sura, super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(QuraanDetailsScreen.routeName, arguments: sura);
      },
      child: Row(
        children: [
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              sura.suraName,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            height: 0.05 * height,
            width: 3,
            color: Theme.of(context).colorScheme.primary,
          ),
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              sura.verseNumber,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
