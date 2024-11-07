import 'package:flutter/material.dart';
import 'package:islamiapp/Providers/SettingsProvider.dart';
import 'package:islamiapp/Screens/HomeScreen/Tabs/SettingsTab/SelectedItem.dart';
import 'package:islamiapp/Screens/HomeScreen/Tabs/SettingsTab/UnselectedItem.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(settingsProvider.locale == const Locale("en")
              ? AppLocalizations.of(context)!.english
              : AppLocalizations.of(context)!.arabic),
          const SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeLocal(
                    settingsProvider.locale == const Locale("en")
                        ? const Locale("ar")
                        : const Locale("en"));
                Navigator.of(context).pop();
              },
              child: UnselectedItem(
                  settingsProvider.locale != const Locale("en")
                      ? AppLocalizations.of(context)!.english
                      : AppLocalizations.of(context)!.arabic))
        ],
      ),
    );
  }
}
