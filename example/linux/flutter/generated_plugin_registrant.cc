//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <sqlite3_lib/sqlite3_lib_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) sqlite3_lib_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "Sqlite3LibPlugin");
  sqlite3_lib_plugin_register_with_registrar(sqlite3_lib_registrar);
}
