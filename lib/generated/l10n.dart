// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Islami`
  String get islami {
    return Intl.message(
      'Islami',
      name: 'islami',
      desc: '',
      args: [],
    );
  }

  /// `Quraan Kareem Radio`
  String get quraanKareemRadio {
    return Intl.message(
      'Quraan Kareem Radio',
      name: 'quraanKareemRadio',
      desc: '',
      args: [],
    );
  }

  /// `Radio`
  String get radio {
    return Intl.message(
      'Radio',
      name: 'radio',
      desc: '',
      args: [],
    );
  }

  /// `Tasbeh`
  String get tasbeh {
    return Intl.message(
      'Tasbeh',
      name: 'tasbeh',
      desc: '',
      args: [],
    );
  }

  /// `Ahadeth`
  String get ahadeth {
    return Intl.message(
      'Ahadeth',
      name: 'ahadeth',
      desc: '',
      args: [],
    );
  }

  /// `Quraan`
  String get quraan {
    return Intl.message(
      'Quraan',
      name: 'quraan',
      desc: '',
      args: [],
    );
  }

  /// `Sura Name`
  String get suraName {
    return Intl.message(
      'Sura Name',
      name: 'suraName',
      desc: '',
      args: [],
    );
  }

  /// `Verse Number`
  String get verseNum {
    return Intl.message(
      'Verse Number',
      name: 'verseNum',
      desc: '',
      args: [],
    );
  }

  /// `Tasbeh Count`
  String get tasbehCount {
    return Intl.message(
      'Tasbeh Count',
      name: 'tasbehCount',
      desc: '',
      args: [],
    );
  }

  /// `Subhan Allah`
  String get sub {
    return Intl.message(
      'Subhan Allah',
      name: 'sub',
      desc: '',
      args: [],
    );
  }

  /// `Al-Hamdulle`
  String get hamd {
    return Intl.message(
      'Al-Hamdulle',
      name: 'hamd',
      desc: '',
      args: [],
    );
  }

  /// `Allah Akbar`
  String get tkber {
    return Intl.message(
      'Allah Akbar',
      name: 'tkber',
      desc: '',
      args: [],
    );
  }

  /// `Astghforullah`
  String get ghafr {
    return Intl.message(
      'Astghforullah',
      name: 'ghafr',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
