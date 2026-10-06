import 'package:flutter/widgets.dart';

/// Small localization seam for the app shell. English remains the fallback;
/// Simplified Chinese is selected automatically when the device locale is zh.
class LinthraLocalizations {
  const LinthraLocalizations(this.locale);

  final Locale locale;
  bool get isChinese => locale.languageCode == 'zh';

  String get settings => isChinese ? '设置' : 'Settings';
  String get connections => isChinese ? '连接' : 'Connections';
  String get connectionsSubtitle => isChinese ? 'Jellyfin、Plex、Navidrome/Subsonic、本地文件、有声书架' : 'Jellyfin, Plex, Navidrome/Subsonic, local files, Audiobookshelf';
  String get musicPlayback => isChinese ? '音乐与播放' : 'Music & playback';
  String get musicPlaybackSubtitle => isChinese ? '默认来源和播放行为' : 'Default source and playback behaviour';
  String get cacheData => isChinese ? '缓存与数据' : 'Cache & data';
  String get cacheDataSubtitle => isChinese ? '智能预缓存和缓存大小' : 'Smart pre-cache and cache size';
  String get offlineDownloads => isChinese ? '离线与下载' : 'Offline & downloads';
  String get offlineDownloadsSubtitle => isChinese ? '移动数据和离线下载' : 'Mobile data and offline downloads';
  String get appearance => isChinese ? '外观' : 'Appearance';
  String get appearanceSubtitle => isChinese ? '应用图标和应用内品牌' : 'App icon and in-app branding';
  String get welcomeTour => isChinese ? '欢迎向导' : 'Welcome tour';
  String get welcomeTourSubtitle => isChinese ? '重新查看 Linthra 介绍和音乐来源指南' : 'Replay the Linthra introduction and music-source guide';
  String get diagnosticsSupport => isChinese ? '诊断与支持' : 'Diagnostics & support';
  String get diagnosticsSupportSubtitle => isChinese ? '报告问题、复制诊断信息' : 'Report a bug, copy diagnostics';
  String get about => isChinese ? '关于' : 'About';
  String get aboutSubtitle => isChinese ? '版本、支持和项目链接' : 'Version, support, and project links';
  String get appIconBranding => isChinese ? '应用图标与品牌' : 'App icon & branding';
  String get makeLinthraYours => isChinese ? '打造你的 Linthra' : 'Make Linthra yours';
  String get appearanceDescription => isChinese ? '选择 Linthra 标志在应用内以及 Android 主屏幕上的样式。经典、霓虹、金色和黑白主题对所有人免费。' : 'Choose how the Linthra mark looks across the app and, on Android, on your home screen. Classic, Neon, Gold, and Black & White are free for everyone.';
  String get language => isChinese ? '语言' : 'Language';
  String get systemLanguage => isChinese ? '跟随系统' : 'System';
  String get simplifiedChinese => isChinese ? '简体中文' : 'Simplified Chinese';
  String get english => isChinese ? 'English' : 'English';
}

class LinthraLocalizationsDelegate extends LocalizationsDelegate<LinthraLocalizations> {
  const LinthraLocalizationsDelegate();
  @override bool isSupported(Locale locale) => <String>{'en', 'zh'}.contains(locale.languageCode);
  @override Future<LinthraLocalizations> load(Locale locale) async => LinthraLocalizations(locale);
  @override bool shouldReload(covariant LinthraLocalizationsDelegate old) => false;
}

extension LinthraLocalizationContext on BuildContext {
  LinthraLocalizations get l10n => Localizations.of<LinthraLocalizations>(this, LinthraLocalizations) ?? const LinthraLocalizations(Locale('en'));
}
