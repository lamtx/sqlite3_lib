import 'package:flutter_test/flutter_test.dart';
import 'package:sqlite3_lib/sqlite3_lib.dart';
import 'package:sqlite3_lib/sqlite3_lib_platform_interface.dart';
import 'package:sqlite3_lib/sqlite3_lib_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSqlite3LibPlatform
    with MockPlatformInterfaceMixin
    implements Sqlite3LibPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final Sqlite3LibPlatform initialPlatform = Sqlite3LibPlatform.instance;

  test('$MethodChannelSqlite3Lib is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSqlite3Lib>());
  });

  test('getPlatformVersion', () async {
    Sqlite3Lib sqlite3LibPlugin = Sqlite3Lib();
    MockSqlite3LibPlatform fakePlatform = MockSqlite3LibPlatform();
    Sqlite3LibPlatform.instance = fakePlatform;

    expect(await sqlite3LibPlugin.getPlatformVersion(), '42');
  });
}
