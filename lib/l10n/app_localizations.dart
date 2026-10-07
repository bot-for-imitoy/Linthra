import 'package:flutter/widgets.dart';

import '../data/locales/en.dart';
import '../data/locales/zh_CN.dart';

/// Localized UI strings loaded from the locale data tables.
class LinthraLocalizations {
  LinthraLocalizations(Locale locale)
      : locale = locale,
        _strings = <Map<String, String>>[
          if (locale.languageCode == 'zh') simplifiedChineseStrings,
          englishStrings,
        ];

  final Locale locale;
  final List<Map<String, String>> _strings;

  String? get(String key) {
    for (final Map<String, String> strings in _strings) {
      final String? value = strings[key];
      if (value != null) return value;
    }
    return null;
  }
}

class LinthraLocalizationsDelegate extends LocalizationsDelegate<LinthraLocalizations> {
  const LinthraLocalizationsDelegate();
  @override bool isSupported(Locale locale) => <String>{'en', 'zh'}.contains(locale.languageCode);
  @override Future<LinthraLocalizations> load(Locale locale) async => LinthraLocalizations(locale);
  @override bool shouldReload(covariant LinthraLocalizationsDelegate old) => false;
}

extension LinthraLocalizationContext on BuildContext {
  LinthraLocalizations get l10n => Localizations.of<LinthraLocalizations>(this, LinthraLocalizations) ?? LinthraLocalizations(const Locale('en'));
}
