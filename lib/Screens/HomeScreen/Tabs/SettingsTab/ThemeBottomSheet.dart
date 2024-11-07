import 'package:flutter/material.dart';
import 'package:islamiapp/Providers/SettingsProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'SelectedItem.dart';
import 'UnselectedItem.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(settingsProvider.themeMode == ThemeMode.light
              ? AppLocalizations.of(context)!.light
              : AppLocalizations.of(context)!.dark),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              settingsProvider.changeThemeMode(
                  settingsProvider.themeMode == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light);
              Navigator.of(context).pop();
            },
            child: UnselectedItem(settingsProvider.themeMode != ThemeMode.light
                ? AppLocalizations.of(context)!.light
                : AppLocalizations.of(context)!.dark),
          )
        ],
      ),
    );
  }
}
