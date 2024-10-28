import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/AhadethDetailsScreen/AhadethDetailsScreen.dart';
import 'package:islamiapp/DataClasses/Hadeth.dart';

class AhadethTab extends StatefulWidget {
  const AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<Hadeth> AhadethList = [];

  @override
  Widget build(BuildContext context) {
    AhadethList.isEmpty ? loadAhadethContent() : print("Loadded");
    return Column(
      children: [
        Expanded(child: Image.asset("assets/images/hadith_header-1.png")),
        const Divider(
          height: 0,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Ahadeth",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
          ),
        ),
        const Divider(
          height: 0,
        ),
        Expanded(
          flex: 2,
          child: AhadethList.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemBuilder: (context, index) => InkWell(
                    onTap: () => Navigator.of(context).pushNamed(
                        AhadethDetailsScreen.routeName,
                        arguments: AhadethList[index]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        AhadethList[index].hadethName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  itemCount: 20,
                ),
        ),
      ],
    );
  }

  loadAhadethContent() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> Ahadeth = content.split("#");
    for (int i = 0; i < Ahadeth.length; i++) {
      List<String> hadethLines = Ahadeth[i].trim().split("\n");
      String hadethName = hadethLines[0];
      hadethLines.removeAt(0);
      Hadeth hadeth = Hadeth(hadethName: hadethName);
      hadeth.hadethContent = hadethLines.join(" ");
      AhadethList.add(hadeth);
    }
    setState(() {});
  }
}
