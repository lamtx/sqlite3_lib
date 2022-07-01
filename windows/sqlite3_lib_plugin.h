#ifndef FLUTTER_PLUGIN_SQLITE3_LIB_PLUGIN_H_
#define FLUTTER_PLUGIN_SQLITE3_LIB_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace sqlite3_lib {

class Sqlite3LibPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  Sqlite3LibPlugin();

  virtual ~Sqlite3LibPlugin();

  // Disallow copy and assign.
  Sqlite3LibPlugin(const Sqlite3LibPlugin&) = delete;
  Sqlite3LibPlugin& operator=(const Sqlite3LibPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace sqlite3_lib

#endif  // FLUTTER_PLUGIN_SQLITE3_LIB_PLUGIN_H_
