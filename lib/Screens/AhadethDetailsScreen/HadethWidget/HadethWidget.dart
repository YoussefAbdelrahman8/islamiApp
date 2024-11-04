import 'package:flutter/material.dart';
import 'package:islamiapp/DataClasses/Hadeth.dart';
import 'package:islamiapp/Screens/AhadethDetailsScreen/HadethWidget/HadethTextStyle.dart';
import 'package:islamiapp/Screens/AhadethDetailsScreen/HadethWidget/HadethTitleStyle.dart';

class HadethWidget extends StatelessWidget {
  const HadethWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)?.settings.arguments as Hadeth;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        height: 0.9 * height,
        width: 0.95 * width,
        child: Card(
          elevation: 5,
          child: Column(
            children: [
              HadethTitleStyle(
                hadethName: hadeth.hadethName,
              ),
              Expanded(
                child: SingleChildScrollView(
                    child: HadethTextStyle(
                  content: hadeth.hadethContent,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
