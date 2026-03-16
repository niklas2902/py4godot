#pragma once
#include "py4godot/cppclasses/Object/Object.h"
#include "Python.h"
#include <cassert>
#include <unordered_map>
namespace godot{
    class ScriptDatabase{

        std::unordered_map<int, PyObject*>* object_address_to_script;
        ScriptDatabase(){}

        public:
            static ScriptDatabase* _instance;
            ScriptDatabase(ScriptDatabase &other) = delete;
            /**
             * Singletons should not be assignable.
             */
            void operator=(const ScriptDatabase &) = delete;

           static ScriptDatabase* instance();
            void register_script(int id, PyObject* script){
                (*object_address_to_script)[id] = script;
            }

            void unregister_script(int id){
                (*object_address_to_script).erase(id);
            }

            PyObject* get_script(int id){
                auto mymap = *object_address_to_script;
                if (object_address_to_script->find(id) != object_address_to_script->end()){
                    return (*object_address_to_script)[id];
                }
                return nullptr;
            }

    };
    LIBRARY_API PyObject* get_py_script(long long id);
}