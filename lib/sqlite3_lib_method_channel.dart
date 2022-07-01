import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'sqlite3_lib_platform_interface.dart';

/// An implementation of [Sqlite3LibPlatform] that uses method channels.
class MethodChannelSqlite3Lib extends Sqlite3LibPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sqlite3_lib');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
