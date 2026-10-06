import 'package:flutter_test/flutter_test.dart';
import 'package:linthra/l10n/app_localizations.dart';

void main() {
  test('supports English and Simplified Chinese', () {
    final en = LinthraLocalizations(const Locale('en'));
    final zh = LinthraLocalizations(const Locale('zh', 'CN'));
    expect(en.settings, 'Settings');
    expect(zh.settings, '设置');
    expect(zh.connections, '连接');
    expect(zh.appearance, '外观');
  });
}
