import 'package:flutter_test/flutter_test.dart';
import 'package:linthra/l10n/app_localizations.dart';

void main() {
  test('supports English and Simplified Chinese', () {
    const en = LinthraLocalizations(Locale('en'));
    const zh = LinthraLocalizations(Locale('zh', 'CN'));
    expect(en.settings, 'Settings');
    expect(zh.settings, '设置');
    expect(zh.connections, '连接');
    expect(zh.appearance, '外观');
  });
}
