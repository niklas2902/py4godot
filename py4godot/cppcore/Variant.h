#pragma once 
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cppclasses/class_defs.h"
#include "Python.h"
namespace godot{
    class LIBRARY_API Variant {
    public:
        GDExtensionVariantPtr native_ptr;


        static void init_variant();

        Variant();
        Variant(String& val);
        Variant(StringName& val);
        Variant(Dictionary& val);
        Variant(int val);

        void init_type(String& val);
        void init_type(Dictionary& val);
        void init_type(int val);
        void init_type(Array& val);

        #pragma region generated
        PyObject* create_vector3();
        PyObject* create_string();
        PyObject* create_rect2i();
        PyObject* create_callable();
        PyObject* create_nodepath();
        PyObject* create_int();
        PyObject* create_packedvector3array();
        PyObject* create_dictionary();
        PyObject* create_projection();
        PyObject* create_rid();
        PyObject* create_vector2i();
        PyObject* create_transform2d();
        PyObject* create_aabb();
        PyObject* create_float();
        PyObject* create_vector3i();
        PyObject* create_packedint64array();
        PyObject* create_packedint32array();
        PyObject* create_packedfloat32array();
        PyObject* create_packedbytearray();
        PyObject* create_vector4();
        PyObject* create_rect2();
        PyObject* create_vector2();
        PyObject* create_transform3d();
        PyObject* create_packedcolorarray();
        PyObject* create_signal();
        PyObject* create_packedvector2array();
        PyObject* create_plane();
        PyObject* create_packedfloat64array();
        PyObject* create_bool();
        PyObject* create_basis();
        PyObject* create_color();
        PyObject* create_vector4i();
        PyObject* create_array();
        PyObject* create_quaternion();
        PyObject* create_packedstringarray();
        PyObject* create_stringname();
        #pragma endregion


        PyObject* get_converted_value();

        void init_from_py_object(PyObject* object, const char* type);

        static Variant new_static(GDExtensionTypePtr ptr) {
            Variant var{};
            var.native_ptr = ptr;
            return var;
        }

        GDExtensionTypePtr get_native_ptr() {
            return native_ptr;
        }
    };
}