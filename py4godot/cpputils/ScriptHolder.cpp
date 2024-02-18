#include "py4godot/cpputils/ScriptHolder.h"

godot::ScriptDatabase* godot::ScriptDatabase::_instance = nullptr;

godot::ScriptDatabase* godot::ScriptDatabase::instance()
{
  if(_instance == nullptr){
    _instance = new ScriptDatabase();
    _instance->object_address_to_script = new std::unordered_map<int, PyObject*>();
  }
  return _instance;
}


PyObject* godot::get_py_script(long long id){
    auto script = ScriptDatabase::instance()->get_script(id);
    if (script != nullptr){
        return script;
    }
    return Py_None;
}