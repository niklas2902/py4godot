#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cppclasses/ResourceFormatSaver/ResourceFormatSaver.h"
#include <unordered_set>

void register_class_saver();
namespace godot{

    class PyResourceFormatSaver:public ResourceFormatSaver{
      public:
          static PyResourceFormatSaver* constructor();
          void _init_values(); // self-defined
          void _save( Resource& resource, String& path, int flags, GDExtensionTypePtr res);
          void _set_uid( String& path, int uid, GDExtensionTypePtr res);
          void _recognize( Resource& resource, GDExtensionTypePtr res);
          void _get_recognized_extensions( Resource& resource, GDExtensionTypePtr res);
          void _recognize_path( Resource& resource, String& path, GDExtensionTypePtr res);
    };
}