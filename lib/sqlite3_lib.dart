
import 'sqlite3_lib_platform_interface.dart';

class Sqlite3Lib {
  Future<String?> getPlatformVersion() {
    return Sqlite3LibPlatform.instance.getPlatformVersion();
  }
}
