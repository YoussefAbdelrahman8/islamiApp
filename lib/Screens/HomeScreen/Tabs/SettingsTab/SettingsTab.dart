import 'package:flutter/material.dart';
import 'package:islamiapp/Screens/HomeScreen/Tabs/SettingsTab/LanguageBottomSheet.dart';
import 'package:islamiapp/Screens/HomeScreen/Tabs/SettingsTab/ThemeBottomSheet.dart';



class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("Language",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
          const SizedBox(height: 10,),
          InkWell(
            onTap: () {
              showModalBottomSheet(context: context, builder: (context) =>const LanguageBottomSheet(),);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color:Theme.of(context).colorScheme.tertiary,
                  width: 2
                )
              ),
              child: const Text("English",style: TextStyle(
                  fontSize: 20
              )),
            ),
          ),
          const SizedBox(height: 20,),
          const Text("Theme",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),),
          const SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showModalBottomSheet(context: context, builder: (context)=>const ThemeBottomSheet());
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 20
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.tertiary,
                      width: 2
                  )
              ),
              child: const Text("Light",style: TextStyle(
                  fontSize: 20
              )),
            ),
          )
        ],
      ),
    );
  }
}
