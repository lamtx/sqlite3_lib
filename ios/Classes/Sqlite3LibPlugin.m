#import "Sqlite3LibPlugin.h"
#if __has_include(<sqlite3_lib/sqlite3_lib-Swift.h>)
#import <sqlite3_lib/sqlite3_lib-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "sqlite3_lib-Swift.h"
#endif

@implementation Sqlite3LibPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSqlite3LibPlugin registerWithRegistrar:registrar];
}
@end
