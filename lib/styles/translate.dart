import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Translations {
  Translations(this.locale);

  final Locale locale;

  static Translations of(BuildContext context){
    return Localizations.of<Translations>(context, Translations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Qatar World Cup',
    },
    'bn': {
      'title': '',
    },
  };

  String text(String key){
    return _localizedValues[locale.languageCode][key] ?? '** ${key} not found';
  }
}

class TranslationsDelegate extends LocalizationsDelegate<Translations> {
  const TranslationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'bn'].contains(locale.languageCode);

  @override
  Future<Translations> load(Locale locale) {
    return new SynchronousFuture<Translations>(new Translations(locale));
  }

  @override
  bool shouldReload(TranslationsDelegate old) => false;
}