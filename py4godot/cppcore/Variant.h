#pragma once 
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cppclasses/class_defs.h"
#include "Python.h"
namespace godot{
    class LIBRARY_API Variant {
    public:
        GDExtensionVariantPtr native_ptr;
        GDExtensionVariantPtr _inner_ptr;


        static void init_variant();
        static Variant construct();
        void construct_inner();
        void switch_native_and_inner();

        Variant();
        Variant(int* val); // for inner construction
        Variant(String& val);
        Variant(StringName& val);
        Variant(Dictionary& val);
        Variant(Object& val);
        Variant(int val);

        void init_type(String& val);
        void init_type(StringName& val);
        void init_type(Dictionary& val);
        void init_type(int val);
        void init_type(Array& val);
        void init_godot_owner(void* owner, GDExtensionVariantType type);

        #pragma region generated
        PyObject* create_vector3();
        PyObject* create_string();
        PyObject* create_py_string();
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
        PyObject* create_object();

        PyObject* create_vector3_native_ptr();
        PyObject* create_string_native_ptr();
        PyObject* create_py_string_native_ptr();
        PyObject* create_rect2i_native_ptr();
        PyObject* create_callable_native_ptr();
        PyObject* create_nodepath_native_ptr();
        PyObject* create_int_native_ptr();
        PyObject* create_packedvector3array_native_ptr();
        PyObject* create_dictionary_native_ptr();
        PyObject* create_projection_native_ptr();
        PyObject* create_rid_native_ptr();
        PyObject* create_vector2i_native_ptr();
        PyObject* create_transform2d_native_ptr();
        PyObject* create_aabb_native_ptr();
        PyObject* create_float_native_ptr();
        PyObject* create_vector3i_native_ptr();
        PyObject* create_packedint64array_native_ptr();
        PyObject* create_packedint32array_native_ptr();
        PyObject* create_packedfloat32array_native_ptr();
        PyObject* create_packedbytearray_native_ptr();
        PyObject* create_vector4_native_ptr();
        PyObject* create_rect2_native_ptr();
        PyObject* create_vector2_native_ptr();
        PyObject* create_transform3d_native_ptr();
        PyObject* create_packedcolorarray_native_ptr();
        PyObject* create_signal_native_ptr();
        PyObject* create_packedvector2array_native_ptr();
        PyObject* create_plane_native_ptr();
        PyObject* create_packedfloat64array_native_ptr();
        PyObject* create_bool_native_ptr();
        PyObject* create_basis_native_ptr();
        PyObject* create_color_native_ptr();
        PyObject* create_vector4i_native_ptr();
        PyObject* create_array_native_ptr();
        PyObject* create_quaternion_native_ptr();
        PyObject* create_packedstringarray_native_ptr();
        PyObject* create_stringname_native_ptr();


        void construct_py_string(PyObject* object);
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
        void construct_Object(PyObject* object);


        void construct_py_string_native_ptr(PyObject* object);
        void construct_Rect2i_native_ptr(PyObject* object);
        void construct_Callable_native_ptr(PyObject* object);
        void construct_NodePath_native_ptr(PyObject* object);
        void construct_int_native_ptr(PyObject* object);
        void construct_String_native_ptr(PyObject* object);
        void construct_PackedVector3Array_native_ptr(PyObject* object);
        void construct_Vector3_native_ptr(PyObject* object);
        void construct_Dictionary_native_ptr(PyObject* object);
        void construct_Projection_native_ptr(PyObject* object);
        void construct_RID_native_ptr(PyObject* object);
        void construct_Vector2i_native_ptr(PyObject* object);
        void construct_Transform2D_native_ptr(PyObject* object);
        void construct_AABB_native_ptr(PyObject* object);
        void construct_float_native_ptr(PyObject* object);
        void construct_Vector3i_native_ptr(PyObject* object);
        void construct_PackedInt64Array_native_ptr(PyObject* object);
        void construct_Nil_native_ptr(PyObject* object);
        void construct_PackedInt32Array_native_ptr(PyObject* object);
        void construct_PackedFloat32Array_native_ptr(PyObject* object);
        void construct_PackedByteArray_native_ptr(PyObject* object);
        void construct_Vector4_native_ptr(PyObject* object);
        void construct_Rect2_native_ptr(PyObject* object);
        void construct_Vector2_native_ptr(PyObject* object);
        void construct_Transform3D_native_ptr(PyObject* object);
        void construct_PackedColorArray_native_ptr(PyObject* object);
        void construct_Signal_native_ptr(PyObject* object);
        void construct_PackedVector2Array_native_ptr(PyObject* object);
        void construct_Plane_native_ptr(PyObject* object);
        void construct_PackedFloat64Array_native_ptr(PyObject* object);
        void construct_bool_native_ptr(PyObject* object);
        void construct_Basis_native_ptr(PyObject* object);
        void construct_Color_native_ptr(PyObject* object);
        void construct_Vector4i_native_ptr(PyObject* object);
        void construct_Array_native_ptr(PyObject* object);
        void construct_Quaternion_native_ptr(PyObject* object);
        void construct_PackedStringArray_native_ptr(PyObject* object);
        void construct_StringName_native_ptr(PyObject* object);
        void construct_Object_native_ptr(PyObject* object);
        #pragma endregion


        PyObject* get_converted_value(bool should_return_pystring = false);
        PyObject* get_converted_value_native_ptr(bool should_return_pystring = false);

        void init_from_py_object(PyObject* object, const char* type);
        void init_from_py_object_native_ptr(PyObject* object, const char* type_name);
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