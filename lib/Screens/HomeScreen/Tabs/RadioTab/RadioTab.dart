import 'package:flutter/material.dart';
import 'package:islamiapp/Screens/HomeScreen/Tabs/RadioTab/PlayRow.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;


    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
              "assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png"),
          SizedBox(
            height: 0.05 * height,
          ),
           Text(
            AppLocalizations.of(context)!.quraanKareemRadio,//error here
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 0.04 * height,
          ),
          const PlayRow(),
        ],
      ),
    );
  }
}
