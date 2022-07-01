#include "include/sqlite3_lib/sqlite3_lib_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "sqlite3_lib_plugin.h"

void Sqlite3LibPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  sqlite3_lib::Sqlite3LibPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
