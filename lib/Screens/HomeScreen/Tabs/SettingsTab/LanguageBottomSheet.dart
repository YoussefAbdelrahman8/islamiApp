import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamiapp/Screens/HomeScreen/Tabs/SettingsTab/SelectedItem.dart';
import 'package:islamiapp/Screens/HomeScreen/Tabs/SettingsTab/UnselectedItem.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem("English"),
          const SizedBox(height: 20,),
          UnselectedItem("العربية")
        ],
      ),
    );
  }
}
