import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class Translations {
  Map localizationValues;
  Future load(Locale locale) async {
    String jsonContent =
        await rootBundle.loadString('lang/${locale.languageCode}.json');
    localizationValues = jsonDecode(jsonContent);
  }

  static Translations of(BuildContext context){
    return Localizations.of<Translations>(context, Translations);
  }

  String text(String key) {
    if (localizationValues['key'] == '') {
      return "Error: $key Language is Not Found";
    } else
      return localizationValues[key];
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<Translations> {
  @override
  bool isSupported(Locale locale) {
    return ['en', 'fa'].contains(locale.languageCode);
  }

  @override
  Future<Translations> load(Locale locale) async {
    Translations translations = new Translations();
    await translations.load(locale);
    return translations;
  }

  @override
  bool shouldReload(LocalizationsDelegate old) => false;
}
