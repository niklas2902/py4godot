# distutils: language=c++
#include "binding4.h"
from libc.stdint cimport uint32_t
from libc.stdint cimport int32_t
from libc.stdint cimport uint8_t
from libc.stdint cimport uint64_t
from libc.stdint cimport int64_t
from libc.stdint cimport int8_t
from cpython.ref cimport PyObject
from libcpp cimport bool


ctypedef public void *GDExtensionVariantPtr;
ctypedef public const void *GDExtensionConstVariantPtr;
ctypedef public void * GodotObject;
ctypedef public void *GDExtensionStringNamePtr;
ctypedef public void *GDExtensionStringPtr;
ctypedef public void *GDExtensionObjectPtr;
ctypedef public const void *GDExtensionConstObjectPtr;
ctypedef public void *GDExtensionTypePtr;
ctypedef public void *GDExtensionPtr;
ctypedef void * GDExtensionMethodBindPtr;
ctypedef public int64_t GDExtensionInt;
ctypedef public uint8_t GDExtensionBool;
ctypedef public uint64_t GDObjectInstanceID;
ctypedef public void *GDExtensionClassLibraryPtr;
ctypedef public void *GDExtensionClassInstancePtr;
ctypedef public const void *GDExtensionConstTypePtr;
ctypedef public const void *GDExtensionConstStringNamePtr;
ctypedef public const void *GDExtensionConstStringPtr;
ctypedef public void *GDExtensionScriptInstanceDataPtr;
ctypedef public void *GDExtensionScriptInstancePtr
ctypedef public void *GDExtensionRefPtr;
ctypedef public const void *GDExtensionConstRefPtr;
ctypedef void (*GDExtensionPtrSetter)(GDExtensionTypePtr p_base, GDExtensionConstTypePtr p_value);
ctypedef void (*GDExtensionPtrGetter)(GDExtensionConstTypePtr p_base, GDExtensionTypePtr r_value);
ctypedef void (*GDExtensionPtrIndexedSetter)(GDExtensionTypePtr p_base, GDExtensionInt p_index, GDExtensionConstTypePtr p_value);
ctypedef void (*GDExtensionPtrIndexedGetter)(GDExtensionConstTypePtr p_base, GDExtensionInt p_index, GDExtensionTypePtr r_value);

cdef extern from "binding4.h":
    ctypedef void (*GDExtensionVariantFromTypeConstructorFunc)(GDExtensionVariantPtr, GDExtensionTypePtr);
    ctypedef void (*GDExtensionTypeFromVariantConstructorFunc)(GDExtensionTypePtr, GDExtensionVariantPtr);
    ctypedef void (*GDExtensionClassMethodCall)(void *method_userdata, GDExtensionClassInstancePtr p_instance, const GDExtensionVariantPtr *p_args, const GDExtensionInt p_argument_count, GDExtensionVariantPtr r_return, GDExtensionCallError *r_error);
    ctypedef void (*GDExtensionClassMethodPtrCall)(void *method_userdata, GDExtensionClassInstancePtr p_instance, const GDExtensionTypePtr *p_args, GDExtensionTypePtr r_ret);


    ctypedef GDExtensionVariantType (*GDExtensionClassMethodGetArgumentType)(void *p_method_userdata, int32_t p_argument);
    ctypedef void (*GDExtensionClassMethodGetArgumentInfo)(void *p_method_userdata, int32_t p_argument, GDExtensionPropertyInfo *r_info);
    ctypedef GDExtensionClassMethodArgumentMetadata (*GDExtensionClassMethodGetArgumentMetadata)(void *p_method_userdata, int32_t p_argument);

    ctypedef void (*GDExtensionPtrBuiltInMethod)(GDExtensionTypePtr p_base, const GDExtensionTypePtr *p_args, GDExtensionTypePtr r_return, int p_argument_count);
    ctypedef void (*GDExtensionPtrConstructor)(GDExtensionTypePtr p_base, const GDExtensionTypePtr *p_args);
    ctypedef void (*GDExtensionPtrDestructor)(GDExtensionTypePtr p_base);

    ctypedef void (*GDExtensionPtrOperatorEvaluator)(GDExtensionConstTypePtr p_left, GDExtensionConstTypePtr p_right, GDExtensionTypePtr r_result);


    ctypedef struct GDExtensionPropertyInfo:
        GDExtensionVariantType type;
        GDExtensionStringNamePtr name;
        GDExtensionStringNamePtr class_name;
        uint32_t hint; # Bitfield of `PropertyHint` (defined in `extension_api.json`).
        GDExtensionStringPtr hint_string;
        uint32_t usage; # Bitfield of `PropertyUsageFlags` (defined in `extension_api.json`).


    ctypedef struct GDExtensionMethodInfo:
        GDExtensionStringNamePtr name;
        GDExtensionPropertyInfo return_value;
        uint32_t flags; # From GDExtensionClassMethodFlags
        int32_t id;
        GDExtensionPropertyInfo *arguments;
        uint32_t argument_count;
        GDExtensionVariantPtr default_arguments;
        uint32_t default_argument_count;

    ctypedef struct GDExtensionClassMethodInfo:
        GDExtensionStringNamePtr name;
        void *method_userdata;
        GDExtensionClassMethodCall call_func;
        GDExtensionClassMethodPtrCall ptrcall_func;
        uint32_t method_flags; # Bitfield of `GDExtensionClassMethodFlags`.

        # If `has_return_value` is false, `return_value_info` and `return_value_metadata` are ignored.
        GDExtensionBool has_return_value;
        GDExtensionPropertyInfo *return_value_info;
        GDExtensionClassMethodArgumentMetadata return_value_metadata;

        # Arguments: `arguments_info` and `arguments_metadata` are array of size `argument_count`.
        # Name and hint information for the argument can be omitted in release builds. Class name should always be present if it applies.

        uint32_t argument_count;
        GDExtensionPropertyInfo *arguments_info;
        GDExtensionClassMethodArgumentMetadata *arguments_metadata;

        # Default arguments: `default_arguments` is an array of size `default_argument_count`.
        uint32_t default_argument_count;
        GDExtensionVariantPtr *default_arguments;


    ctypedef GDExtensionBool (*GDExtensionClassSet)(GDExtensionClassInstancePtr p_instance, const GDExtensionStringNamePtr p_name, const GDExtensionVariantPtr p_value);
    ctypedef GDExtensionBool (*GDExtensionClassGet)(GDExtensionClassInstancePtr p_instance, const GDExtensionStringNamePtr p_name, GDExtensionVariantPtr r_ret);
    ctypedef uint64_t (*GDExtensionClassGetRID)(GDExtensionClassInstancePtr p_instance);

    ctypedef const GDExtensionPropertyInfo *(*GDExtensionClassGetPropertyList)(GDExtensionClassInstancePtr p_instance, uint32_t *r_count);
    ctypedef void (*GDExtensionClassFreePropertyList)(GDExtensionClassInstancePtr p_instance, const GDExtensionPropertyInfo *p_list);
    ctypedef GDExtensionBool (*GDExtensionClassPropertyCanRevert)(GDExtensionClassInstancePtr p_instance, const GDExtensionStringNamePtr p_name);
    ctypedef GDExtensionBool (*GDExtensionClassPropertyGetRevert)(GDExtensionClassInstancePtr p_instance, const GDExtensionStringNamePtr p_name, GDExtensionVariantPtr r_ret);
    ctypedef void (*GDExtensionClassNotification)(GDExtensionClassInstancePtr p_instance, int32_t p_what);
    ctypedef void (*GDExtensionClassToString)(GDExtensionClassInstancePtr p_instance, GDExtensionStringPtr p_out);
    ctypedef void (*GDExtensionClassReference)(GDExtensionClassInstancePtr p_instance);
    ctypedef void (*GDExtensionClassUnreference)(GDExtensionClassInstancePtr p_instance);
    ctypedef GDExtensionObjectPtr (*GDExtensionClassCreateInstance)(void *p_userdata);
    ctypedef void (*GDExtensionClassFreeInstance)(void *p_userdata, GDExtensionClassInstancePtr p_instance);
    ctypedef void (*GDExtensionClassObjectInstance)(GDExtensionClassInstancePtr p_instance, GDExtensionObjectPtr p_object_instance);
    ctypedef void (*GDExtensionClassCallVirtual)(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret);
    ctypedef GDExtensionClassCallVirtual (*GDExtensionClassGetVirtual)(void *p_userdata, GDExtensionConstStringNamePtr p_name);




    # VARIANT DATA I/O

    ctypedef enum GDExtensionCallErrorType:
        GDEXTENSION_CALL_OK = 0,
        GDEXTENSION_CALL_ERROR_INVALID_METHOD = 1,
        GDEXTENSION_CALL_ERROR_INVALID_ARGUMENT = 2, # expected is variant type
        GDEXTENSION_CALL_ERROR_TOO_MANY_ARGUMENTS = 3, # expected is number of arguments
        GDEXTENSION_CALL_ERROR_TOO_FEW_ARGUMENTS = 4, # expected is number of arguments
        GDEXTENSION_CALL_ERROR_INSTANCE_IS_NULL = 5,
        GDEXTENSION_CALL_ERROR_METHOD_NOT_CONST = 6, #used for const call


    ctypedef enum GDExtensionVariantOperator:
        # comparison
        GDEXTENSION_VARIANT_OP_EQUAL = 0
        GDEXTENSION_VARIANT_OP_NOT_EQUAL = 1
        GDEXTENSION_VARIANT_OP_LESS = 2
        GDEXTENSION_VARIANT_OP_LESS_EQUAL = 3
        GDEXTENSION_VARIANT_OP_GREATER = 4
        GDEXTENSION_VARIANT_OP_GREATER_EQUAL = 5

        # mathematic
        GDEXTENSION_VARIANT_OP_ADD = 6
        GDEXTENSION_VARIANT_OP_SUBTRACT = 7
        GDEXTENSION_VARIANT_OP_MULTIPLY = 8
        GDEXTENSION_VARIANT_OP_DIVIDE = 9
        GDEXTENSION_VARIANT_OP_NEGATE = 10
        GDEXTENSION_VARIANT_OP_POSITIVE = 11
        GDEXTENSION_VARIANT_OP_MODULE = 12
        GDEXTENSION_VARIANT_OP_POWER = 13

        # bitwise
        GDEXTENSION_VARIANT_OP_SHIFT_LEFT = 14
        GDEXTENSION_VARIANT_OP_SHIFT_RIGHT = 15
        GDEXTENSION_VARIANT_OP_BIT_AND = 16
        GDEXTENSION_VARIANT_OP_BIT_OR = 17
        GDEXTENSION_VARIANT_OP_BIT_XOR = 18
        GDEXTENSION_VARIANT_OP_BIT_NEGATE = 19

        # logic
        GDEXTENSION_VARIANT_OP_AND = 20
        GDEXTENSION_VARIANT_OP_OR = 21
        GDEXTENSION_VARIANT_OP_XOR = 22
        GDEXTENSION_VARIANT_OP_NOT = 23

        # containment
        GDEXTENSION_VARIANT_OP_IN = 24
        GDEXTENSION_VARIANT_OP_MAX = 25



    ctypedef enum GDExtensionVariantType:
        GDEXTENSION_VARIANT_TYPE_NIL,

        #  atomic types
        GDEXTENSION_VARIANT_TYPE_BOOL,
        GDEXTENSION_VARIANT_TYPE_INT,
        GDEXTENSION_VARIANT_TYPE_FLOAT,
        GDEXTENSION_VARIANT_TYPE_STRING,

        # math types
        GDEXTENSION_VARIANT_TYPE_VECTOR2,
        GDEXTENSION_VARIANT_TYPE_VECTOR2I,
        GDEXTENSION_VARIANT_TYPE_RECT2,
        GDEXTENSION_VARIANT_TYPE_RECT2I,
        GDEXTENSION_VARIANT_TYPE_VECTOR3,
        GDEXTENSION_VARIANT_TYPE_VECTOR3I,
        GDEXTENSION_VARIANT_TYPE_TRANSFORM2D,
        GDEXTENSION_VARIANT_TYPE_VECTOR4,
        GDEXTENSION_VARIANT_TYPE_VECTOR4I,
        GDEXTENSION_VARIANT_TYPE_PLANE,
        GDEXTENSION_VARIANT_TYPE_QUATERNION,
        GDEXTENSION_VARIANT_TYPE_AABB,
        GDEXTENSION_VARIANT_TYPE_BASIS,
        GDEXTENSION_VARIANT_TYPE_TRANSFORM3D,
        GDEXTENSION_VARIANT_TYPE_PROJECTION,

        # misc types
        GDEXTENSION_VARIANT_TYPE_COLOR,
        GDEXTENSION_VARIANT_TYPE_STRING_NAME,
        GDEXTENSION_VARIANT_TYPE_NODE_PATH,
        GDEXTENSION_VARIANT_TYPE_RID,
        GDEXTENSION_VARIANT_TYPE_OBJECT,
        GDEXTENSION_VARIANT_TYPE_CALLABLE,
        GDEXTENSION_VARIANT_TYPE_SIGNAL,
        GDEXTENSION_VARIANT_TYPE_DICTIONARY,
        GDEXTENSION_VARIANT_TYPE_ARRAY,

        # typed arrays
        GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY,
        GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY,
        GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY,
        GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY,
        GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY,
        GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY,
        GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY,
        GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY,
        GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY,

        GDEXTENSION_VARIANT_TYPE_VARIANT_MAX

    ctypedef enum GDExtensionClassMethodFlags :
        GDEXTENSION_EXTENSION_METHOD_FLAG_NORMAL = 1,
        GDEXTENSION_EXTENSION_METHOD_FLAG_EDITOR = 2,
        GDEXTENSION_EXTENSION_METHOD_FLAG_CONST = 4,
        GDEXTENSION_EXTENSION_METHOD_FLAG_VIRTUAL = 8,
        GDEXTENSION_EXTENSION_METHOD_FLAG_VARARG = 16,
        GDEXTENSION_EXTENSION_METHOD_FLAG_STATIC = 32,
        GDEXTENSION_EXTENSION_METHOD_FLAGS_DEFAULT = GDEXTENSION_EXTENSION_METHOD_FLAG_NORMAL

    ctypedef enum GDExtensionClassMethodArgumentMetadata:
        GDEXTENSION_EXTENSION_METHOD_ARGUMENT_METADATA_NONE,
        GDEXTENSION_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT8,
        GDEXTENSION_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT16,
        GDEXTENSION_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT32,
        GDEXTENSION_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT64,
        GDEXTENSION_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT8,
        GDEXTENSION_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT16,
        GDEXTENSION_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT32,
        GDEXTENSION_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT64,
        GDEXTENSION_EXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_FLOAT,
        GDEXTENSION_EXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_DOUBLE

    ctypedef struct GDExtensionCallError:
        GDExtensionCallErrorType error;
        int32_t argument;
        int32_t expected;

    ctypedef struct GDExtensionClassCreationInfo:
        GDExtensionClassSet set_func;
        GDExtensionClassGet get_func;
        GDExtensionClassGetPropertyList get_property_list_func;
        GDExtensionClassFreePropertyList free_property_list_func;
        GDExtensionClassPropertyCanRevert property_can_revert_func;
        GDExtensionClassPropertyGetRevert property_get_revert_func;
        GDExtensionClassNotification notification_func;
        GDExtensionClassToString to_string_func;
        GDExtensionClassReference reference_func;
        GDExtensionClassUnreference unreference_func;
        GDExtensionClassCreateInstance create_instance_func; # this one is mandatory
        GDExtensionClassFreeInstance free_instance_func; # this one is mandatory
        GDExtensionClassGetVirtual get_virtual_func;
        GDExtensionClassGetRID get_rid_func;
        void *class_userdata;

    # SCRIPT INSTANCE EXTENSION

    ctypedef GDExtensionBool (*GDExtensionScriptInstanceSet)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionConstVariantPtr p_value);
    ctypedef GDExtensionBool (*GDExtensionScriptInstanceGet)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionVariantPtr r_ret);
    ctypedef const GDExtensionPropertyInfo *(*GDExtensionScriptInstanceGetPropertyList)(GDExtensionScriptInstanceDataPtr p_instance, uint32_t *r_count);
    ctypedef void (*GDExtensionScriptInstanceFreePropertyList)(GDExtensionScriptInstanceDataPtr p_instance, const GDExtensionPropertyInfo *p_list);
    ctypedef GDExtensionVariantType (*GDExtensionScriptInstanceGetPropertyType)(GDExtensionScriptInstanceDataPtr p_instance, const GDExtensionStringNamePtr p_name, GDExtensionBool *r_is_valid);

    ctypedef GDExtensionBool (*GDExtensionScriptInstancePropertyCanRevert)(GDExtensionScriptInstanceDataPtr p_instance, const GDExtensionStringNamePtr p_name);
    ctypedef GDExtensionBool (*GDExtensionScriptInstancePropertyGetRevert)(GDExtensionScriptInstanceDataPtr p_instance, const GDExtensionStringNamePtr p_name, GDExtensionVariantPtr r_ret);

    ctypedef GDExtensionObjectPtr (*GDExtensionScriptInstanceGetOwner)(GDExtensionScriptInstanceDataPtr p_instance);
    ctypedef void (*GDExtensionScriptInstancePropertyStateAdd)(const GDExtensionStringNamePtr p_name, const GDExtensionVariantPtr p_value, void *p_userdata);
    ctypedef void (*GDExtensionScriptInstanceGetPropertyState)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionScriptInstancePropertyStateAdd p_add_func, void *p_userdata);

    ctypedef const GDExtensionMethodInfo *(*GDExtensionScriptInstanceGetMethodList)(GDExtensionScriptInstanceDataPtr p_instance, uint32_t *r_count);
    ctypedef void (*GDExtensionScriptInstanceFreeMethodList)(GDExtensionScriptInstanceDataPtr p_instance, const GDExtensionMethodInfo *p_list);

    ctypedef GDExtensionBool (*GDExtensionScriptInstanceHasMethod)(GDExtensionScriptInstanceDataPtr p_instance, const GDExtensionStringNamePtr p_name);

    ctypedef void (*GDExtensionScriptInstanceCall)(GDExtensionScriptInstanceDataPtr p_self, const GDExtensionStringNamePtr p_method, const GDExtensionVariantPtr *p_args, const GDExtensionInt p_argument_count, GDExtensionVariantPtr r_return, GDExtensionCallError *r_error);
    ctypedef void (*GDExtensionScriptInstanceNotification)(GDExtensionScriptInstanceDataPtr p_instance, int32_t p_what);
    ctypedef const char *(*GDExtensionScriptInstanceToString)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionBool *r_is_valid, GDExtensionStringPtr r_out);

    ctypedef void (*GDExtensionScriptInstanceRefCountIncremented)(GDExtensionScriptInstanceDataPtr p_instance);
    ctypedef GDExtensionBool (*GDExtensionScriptInstanceRefCountDecremented)(GDExtensionScriptInstanceDataPtr p_instance);

    ctypedef GDExtensionObjectPtr (*GDExtensionScriptInstanceGetScript)(GDExtensionScriptInstanceDataPtr p_instance);
    ctypedef GDExtensionBool (*GDExtensionScriptInstanceIsPlaceholder)(GDExtensionScriptInstanceDataPtr p_instance);

    ctypedef void *GDExtensionScriptLanguagePtr;

    ctypedef GDExtensionScriptLanguagePtr (*GDExtensionScriptInstanceGetLanguage)(GDExtensionScriptInstanceDataPtr p_instance);

    ctypedef void (*GDExtensionScriptInstanceFree)(GDExtensionScriptInstanceDataPtr p_instance);

    ctypedef void (*GDExtensionInterfacePrintWarning)(const char *p_description, const char *p_function, const char *p_file, int32_t p_line, GDExtensionBool p_editor_notify);
    ctypedef void (*GDExtensionInterfacePrintError)(const char *p_description, const char *p_function, const char *p_file, int32_t p_line, GDExtensionBool p_editor_notify);

    ctypedef struct GDExtensionScriptInstanceInfo:
        GDExtensionScriptInstanceSet set_func;
        GDExtensionScriptInstanceGet get_func;
        GDExtensionScriptInstanceGetPropertyList get_property_list_func;
        GDExtensionScriptInstanceFreePropertyList free_property_list_func;
        GDExtensionScriptInstanceGetPropertyType get_property_type_func;

        GDExtensionScriptInstancePropertyCanRevert property_can_revert_func;
        GDExtensionScriptInstancePropertyGetRevert property_get_revert_func;

        GDExtensionScriptInstanceGetOwner get_owner_func;
        GDExtensionScriptInstanceGetPropertyState get_property_state_func;

        GDExtensionScriptInstanceGetMethodList get_method_list_func;
        GDExtensionScriptInstanceFreeMethodList free_method_list_func;

        GDExtensionScriptInstanceHasMethod has_method_func;

        GDExtensionScriptInstanceCall call_func;
        GDExtensionScriptInstanceNotification notification_func;

        GDExtensionScriptInstanceToString to_string_func;

        GDExtensionScriptInstanceRefCountIncremented refcount_incremented_func;
        GDExtensionScriptInstanceRefCountDecremented refcount_decremented_func;

        GDExtensionScriptInstanceGetScript get_script_func;

        GDExtensionScriptInstanceIsPlaceholder is_placeholder_func;

        GDExtensionScriptInstanceSet set_fallback_func;
        GDExtensionScriptInstanceGet get_fallback_func;

        GDExtensionScriptInstanceGetLanguage get_language_func;

        GDExtensionScriptInstanceFree free_func;
#TODO: improve this
"""
cdef extern from "c_utils.h":
    void set_gdnative_ptr(GDExtensionTypePtr* a, GDExtensionTypePtr b)
    void set_gdnative_reference(GDExtensionTypePtr& a, GDExtensionTypePtr& b)
    GDExtensionVariantPtr create_variant(GDExtensionInterface * interface_ptr)
    void create_variant_bool(GDExtensionInterface * interface_ptr, GDExtensionVariantPtr variant_ptr, uint8_t val)

    char * gd_string_c_string(GDExtensionInterface* interface_ptr, GDExtensionConstStringPtr string_ptr, int length) with gil
    GDExtensionVariantPtr create_variant2(GDExtensionInterface * interface_ptr)
    void * create_native_ptr(GDExtensionInterface* interface_ptr)
    void create_native_ptr_from_ptr(GDExtensionInterface* interface_ptr, void** from_ptr )
    void exec_method(GDExtensionInterface* interface_ptr, GDExtensionMethodBindPtr method_bind, void * gd_owner, void ** args, void** ret )
    void run_constructor( GDExtensionPtrConstructor constructor, void** gd_owner, void ** args)
"""

cdef extern from "functions.h":
    GDExtensionInterfacePrintError get_print_error()
    GDExtensionInterfacePrintWarning get_print_warning()

cdef extern from "Python.h":
    cdef PyObject* PyUnicode_FromString(const char* s);
    cdef  PyObject* PyObject_Str(PyObject *o);
    PyUnicode_FromStringAndSize(const char *u, Py_ssize_t size)
