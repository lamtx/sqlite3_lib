import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sqlite3_lib/sqlite3_lib_method_channel.dart';

void main() {
  MethodChannelSqlite3Lib platform = MethodChannelSqlite3Lib();
  const MethodChannel channel = MethodChannel('sqlite3_lib');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
