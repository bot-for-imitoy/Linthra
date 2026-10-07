import 'package:flutter_test/flutter_test.dart';
import 'package:linthra/l10n/app_localizations.dart';

void main() {
  test('supports English and Simplified Chinese', () {
    final en = LinthraLocalizations(const Locale('en'));
    final zh = LinthraLocalizations(const Locale('zh', 'CN'));
    expect(en.get('settings'), 'Settings');
    expect(zh.get('settings'), '设置');
    expect(zh.get('connections'), '连接');
    expect(zh.get('appearance'), '外观');
    expect(zh.get('missing'), isNull);
  });
}
