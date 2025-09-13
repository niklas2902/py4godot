#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/godot_bindings/macros.h"
#include "Python.h"
namespace godot{
    class LIBRARY_API Wrapper{

        public:
            bool shouldBeDeleted = false;
            GDExtensionObjectPtr godot_owner = nullptr;
            bool is_put_in_tree = true;
            bool py_get_is_put_in_tree(){
                return is_put_in_tree;
            }
            void py_get_is_put_in_tree(bool value){
                is_put_in_tree = value;
            }
            Wrapper(){
                shouldBeDeleted = false;
            }
        void set_godot_owner(GDExtensionObjectPtr owner) {
            godot_owner = owner;
        }

        GDExtensionObjectPtr get_godot_owner() {
            return godot_owner;
        }

        void copy_owner(Wrapper* ptr){
            this->godot_owner = ptr->godot_owner;
        }

        virtual void switch_call(int method_hash, PyObject* args_tuple){
        }


        virtual PyObject* switch_call_return(int method_hash, PyObject* args_tuple){
        }
    };
}