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

        void construct_Rect2i(PyObject* object);
        void construct_Callable(PyObject* object);
        void construct_NodePath(PyObject* object);
        void construct_int(PyObject* object);
        void construct_String(PyObject* object);
        void construct_PackedVector3Array(PyObject* object);
        void construct_Vector3(PyObject* object);
        void construct_Dictionary(PyObject* object);
        void construct_Projection(PyObject* object);
        void construct_RID(PyObject* object);
        void construct_Vector2i(PyObject* object);
        void construct_Transform2D(PyObject* object);
        void construct_AABB(PyObject* object);
        void construct_float(PyObject* object);
        void construct_Vector3i(PyObject* object);
        void construct_PackedInt64Array(PyObject* object);
        void construct_Nil(PyObject* object);
        void construct_PackedInt32Array(PyObject* object);
        void construct_PackedFloat32Array(PyObject* object);
        void construct_PackedByteArray(PyObject* object);
        void construct_Vector4(PyObject* object);
        void construct_Rect2(PyObject* object);
        void construct_Vector2(PyObject* object);
        void construct_Transform3D(PyObject* object);
        void construct_PackedColorArray(PyObject* object);
        void construct_Signal(PyObject* object);
        void construct_PackedVector2Array(PyObject* object);
        void construct_Plane(PyObject* object);
        void construct_PackedFloat64Array(PyObject* object);
        void construct_bool(PyObject* object);
        void construct_Basis(PyObject* object);
        void construct_Color(PyObject* object);
        void construct_Vector4i(PyObject* object);
        void construct_Array(PyObject* object);
        void construct_Quaternion(PyObject* object);
        void construct_PackedStringArray(PyObject* object);
        void construct_StringName(PyObject* object);
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