import 'package:flutter/widgets.dart';

import '../data/locales/en.dart';
import '../data/locales/zh_CN.dart';

/// Localized UI strings loaded from the locale data tables.
class LinthraLocalizations {
  LinthraLocalizations(Locale locale)
      : locale = locale,
        _strings = locale.languageCode == 'zh'
            ? simplifiedChineseStrings
            : englishStrings;

  final Locale locale;
  final Map<String, String> _strings;

  String _get(String key) => _strings[key] ?? englishStrings[key] ?? key;
  String get settings => _get('settings');
  String get connections => _get('connections');
  String get connectionsSubtitle => _get('connectionsSubtitle');
  String get musicPlayback => _get('musicPlayback');
  String get musicPlaybackSubtitle => _get('musicPlaybackSubtitle');
  String get cacheData => _get('cacheData');
  String get cacheDataSubtitle => _get('cacheDataSubtitle');
  String get offlineDownloads => _get('offlineDownloads');
  String get offlineDownloadsSubtitle => _get('offlineDownloadsSubtitle');
  String get appearance => _get('appearance');
  String get appearanceSubtitle => _get('appearanceSubtitle');
  String get welcomeTour => _get('welcomeTour');
  String get welcomeTourSubtitle => _get('welcomeTourSubtitle');
  String get diagnosticsSupport => _get('diagnosticsSupport');
  String get diagnosticsSupportSubtitle => _get('diagnosticsSupportSubtitle');
  String get about => _get('about');
  String get aboutSubtitle => _get('aboutSubtitle');
  String get appIconBranding => _get('appIconBranding');
  String get makeLinthraYours => _get('makeLinthraYours');
  String get appearanceDescription => _get('appearanceDescription');
  String get language => _get('language');
  String get systemLanguage => _get('systemLanguage');
  String get simplifiedChinese => _get('simplifiedChinese');
  String get english => _get('english');
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
