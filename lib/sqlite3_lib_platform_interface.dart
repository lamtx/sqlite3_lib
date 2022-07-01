import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'sqlite3_lib_method_channel.dart';

abstract class Sqlite3LibPlatform extends PlatformInterface {
  /// Constructs a Sqlite3LibPlatform.
  Sqlite3LibPlatform() : super(token: _token);

  static final Object _token = Object();

  static Sqlite3LibPlatform _instance = MethodChannelSqlite3Lib();

  /// The default instance of [Sqlite3LibPlatform] to use.
  ///
  /// Defaults to [MethodChannelSqlite3Lib].
  static Sqlite3LibPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [Sqlite3LibPlatform] when
  /// they register themselves.
  static set instance(Sqlite3LibPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
