#include "binding4.h"
from libc.stdint cimport uint32_t
from libc.stdint cimport int32_t
from libc.stdint cimport uint8_t
from libc.stdint cimport uint64_t
from libc.stdint cimport int64_t
ctypedef bint bool
ctypedef void *GDNativeVariantPtr;
ctypedef void * GodotObject;
ctypedef void *GDNativeStringNamePtr;
ctypedef void *GDNativeStringPtr;
ctypedef void *GDNativeObjectPtr;
ctypedef void *GDNativeTypePtr;
ctypedef void *GDNativeExtensionPtr;
ctypedef void *GDNativeMethodBindPtr;
ctypedef int64_t GDNativeInt;
ctypedef uint8_t GDNativeBool;
ctypedef uint64_t GDObjectInstanceID;
ctypedef public void *GDNativeExtensionClassLibraryPtr;
ctypedef void *GDExtensionClassInstancePtr;

cdef extern from "binding4.h":
    ctypedef void (*GDNativeExtensionClassMethodCall)(void *method_userdata, GDExtensionClassInstancePtr p_instance, const GDNativeVariantPtr *p_args, const GDNativeInt p_argument_count, GDNativeVariantPtr r_return, GDNativeCallError *r_error);
    ctypedef void (*GDNativeExtensionClassMethodPtrCall)(void *method_userdata, GDExtensionClassInstancePtr p_instance, const GDNativeTypePtr *p_args, GDNativeTypePtr r_ret);


    ctypedef GDNativeVariantType (*GDNativeExtensionClassMethodGetArgumentType)(void *p_method_userdata, int32_t p_argument);
    ctypedef void (*GDNativeExtensionClassMethodGetArgumentInfo)(void *p_method_userdata, int32_t p_argument, GDNativePropertyInfo *r_info);
    ctypedef GDNativeExtensionClassMethodArgumentMetadata (*GDNativeExtensionClassMethodGetArgumentMetadata)(void *p_method_userdata, int32_t p_argument);

    ctypedef void (*GDNativePtrBuiltInMethod)(GDNativeTypePtr p_base, const GDNativeTypePtr *p_args, GDNativeTypePtr r_return, int p_argument_count);
    ctypedef void (*GDNativePtrConstructor)(GDNativeTypePtr p_base, const GDNativeTypePtr *p_args);
    ctypedef void (*GDNativePtrDestructor)(GDNativeTypePtr p_base);
    ctypedef void (*GDNativePtrSetter)(GDNativeTypePtr p_base, const GDNativeTypePtr p_value);
    ctypedef void (*GDNativePtrGetter)(const GDNativeTypePtr p_base, GDNativeTypePtr r_value);

    ctypedef struct GDNativePropertyInfo:
        uint32_t type;
        const char *name;
        const char *class_name;
        uint32_t hint;
        const char *hint_string;
        uint32_t usage;


    ctypedef struct GDNativeMethodInfo:
        const char *name;
        GDNativePropertyInfo return_value;
        uint32_t flags; # From GDNativeExtensionClassMethodFlags
        int32_t id;
        GDNativePropertyInfo *arguments;
        uint32_t argument_count;
        GDNativeVariantPtr default_arguments;
        uint32_t default_argument_count;

    ctypedef struct GDNativeExtensionClassMethodInfo:
        const char *name;
        void *method_userdata;
        GDNativeExtensionClassMethodCall call_func;
        GDNativeExtensionClassMethodPtrCall ptrcall_func;
        uint32_t method_flags; # GDNativeExtensionClassMethodFlags
        uint32_t argument_count;
        GDNativeBool has_return_value;
        GDNativeExtensionClassMethodGetArgumentType get_argument_type_func;
        GDNativeExtensionClassMethodGetArgumentInfo get_argument_info_func; # name and hint information for the argument can be omitted in release builds. Class name should always be present if it applies.
        GDNativeExtensionClassMethodGetArgumentMetadata get_argument_metadata_func;
        uint32_t default_argument_count;
        GDNativeVariantPtr *default_arguments;


    ctypedef GDNativeBool (*GDNativeExtensionClassSet)(GDExtensionClassInstancePtr p_instance, const GDNativeStringNamePtr p_name, const GDNativeVariantPtr p_value);
    ctypedef GDNativeBool (*GDNativeExtensionClassGet)(GDExtensionClassInstancePtr p_instance, const GDNativeStringNamePtr p_name, GDNativeVariantPtr r_ret);
    ctypedef uint64_t (*GDNativeExtensionClassGetRID)(GDExtensionClassInstancePtr p_instance);

    ctypedef const GDNativePropertyInfo *(*GDNativeExtensionClassGetPropertyList)(GDExtensionClassInstancePtr p_instance, uint32_t *r_count);
    ctypedef void (*GDNativeExtensionClassFreePropertyList)(GDExtensionClassInstancePtr p_instance, const GDNativePropertyInfo *p_list);
    ctypedef GDNativeBool (*GDNativeExtensionClassPropertyCanRevert)(GDExtensionClassInstancePtr p_instance, const GDNativeStringNamePtr p_name);
    ctypedef GDNativeBool (*GDNativeExtensionClassPropertyGetRevert)(GDExtensionClassInstancePtr p_instance, const GDNativeStringNamePtr p_name, GDNativeVariantPtr r_ret);
    ctypedef void (*GDNativeExtensionClassNotification)(GDExtensionClassInstancePtr p_instance, int32_t p_what);
    ctypedef void (*GDNativeExtensionClassToString)(GDExtensionClassInstancePtr p_instance, GDNativeStringPtr p_out);
    ctypedef void (*GDNativeExtensionClassReference)(GDExtensionClassInstancePtr p_instance);
    ctypedef void (*GDNativeExtensionClassUnreference)(GDExtensionClassInstancePtr p_instance);
    ctypedef void (*GDNativeExtensionClassCallVirtual)(GDExtensionClassInstancePtr p_instance, const GDNativeTypePtr *p_args, GDNativeTypePtr r_ret);
    ctypedef GDNativeObjectPtr (*GDNativeExtensionClassCreateInstance)(void *p_userdata);
    ctypedef void (*GDNativeExtensionClassFreeInstance)(void *p_userdata, GDExtensionClassInstancePtr p_instance);
    ctypedef void (*GDNativeExtensionClassObjectInstance)(GDExtensionClassInstancePtr p_instance, GDNativeObjectPtr p_object_instance);
    ctypedef GDNativeExtensionClassCallVirtual (*GDNativeExtensionClassGetVirtual)(void *p_userdata, const char *p_name);


    # VARIANT DATA I/O

    ctypedef enum GDNativeCallErrorType:
        GDNATIVE_CALL_OK = 0,
        GDNATIVE_CALL_ERROR_INVALID_METHOD = 1,
        GDNATIVE_CALL_ERROR_INVALID_ARGUMENT = 2, # expected is variant type
        GDNATIVE_CALL_ERROR_TOO_MANY_ARGUMENTS = 3, # expected is number of arguments
        GDNATIVE_CALL_ERROR_TOO_FEW_ARGUMENTS = 4, # expected is number of arguments
        GDNATIVE_CALL_ERROR_INSTANCE_IS_NULL = 5,
        GDNATIVE_CALL_ERROR_METHOD_NOT_CONST = 6, #used for const call


    ctypedef enum GDNativeVariantType:
        GDNATIVE_VARIANT_TYPE_NIL,

        #  atomic types
        GDNATIVE_VARIANT_TYPE_BOOL,
        GDNATIVE_VARIANT_TYPE_INT,
        GDNATIVE_VARIANT_TYPE_FLOAT,
        GDNATIVE_VARIANT_TYPE_STRING,

        # math types
        GDNATIVE_VARIANT_TYPE_VECTOR2,
        GDNATIVE_VARIANT_TYPE_VECTOR2I,
        GDNATIVE_VARIANT_TYPE_RECT2,
        GDNATIVE_VARIANT_TYPE_RECT2I,
        GDNATIVE_VARIANT_TYPE_VECTOR3,
        GDNATIVE_VARIANT_TYPE_VECTOR3I,
        GDNATIVE_VARIANT_TYPE_TRANSFORM2D,
        GDNATIVE_VARIANT_TYPE_VECTOR4,
        GDNATIVE_VARIANT_TYPE_VECTOR4I,
        GDNATIVE_VARIANT_TYPE_PLANE,
        GDNATIVE_VARIANT_TYPE_QUATERNION,
        GDNATIVE_VARIANT_TYPE_AABB,
        GDNATIVE_VARIANT_TYPE_BASIS,
        GDNATIVE_VARIANT_TYPE_TRANSFORM3D,
        GDNATIVE_VARIANT_TYPE_PROJECTION,

        # misc types
        GDNATIVE_VARIANT_TYPE_COLOR,
        GDNATIVE_VARIANT_TYPE_STRING_NAME,
        GDNATIVE_VARIANT_TYPE_NODE_PATH,
        GDNATIVE_VARIANT_TYPE_RID,
        GDNATIVE_VARIANT_TYPE_OBJECT,
        GDNATIVE_VARIANT_TYPE_CALLABLE,
        GDNATIVE_VARIANT_TYPE_SIGNAL,
        GDNATIVE_VARIANT_TYPE_DICTIONARY,
        GDNATIVE_VARIANT_TYPE_ARRAY,

        # typed arrays
        GDNATIVE_VARIANT_TYPE_PACKED_BYTE_ARRAY,
        GDNATIVE_VARIANT_TYPE_PACKED_INT32_ARRAY,
        GDNATIVE_VARIANT_TYPE_PACKED_INT64_ARRAY,
        GDNATIVE_VARIANT_TYPE_PACKED_FLOAT32_ARRAY,
        GDNATIVE_VARIANT_TYPE_PACKED_FLOAT64_ARRAY,
        GDNATIVE_VARIANT_TYPE_PACKED_STRING_ARRAY,
        GDNATIVE_VARIANT_TYPE_PACKED_VECTOR2_ARRAY,
        GDNATIVE_VARIANT_TYPE_PACKED_VECTOR3_ARRAY,
        GDNATIVE_VARIANT_TYPE_PACKED_COLOR_ARRAY,

        GDNATIVE_VARIANT_TYPE_VARIANT_MAX

    ctypedef enum GDNativeExtensionClassMethodArgumentMetadata:
        GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_NONE,
        GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT8,
        GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT16,
        GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT32,
        GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT64,
        GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT8,
        GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT16,
        GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT32,
        GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT64,
        GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_FLOAT,
        GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_DOUBLE

    ctypedef struct GDNativeCallError:
        GDNativeCallErrorType error;
        int32_t argument;
        int32_t expected;

    ctypedef struct GDNativeExtensionClassCreationInfo:
        GDNativeExtensionClassSet set_func;
        GDNativeExtensionClassGet get_func;
        GDNativeExtensionClassGetPropertyList get_property_list_func;
        GDNativeExtensionClassFreePropertyList free_property_list_func;
        GDNativeExtensionClassPropertyCanRevert property_can_revert_func;
        GDNativeExtensionClassPropertyGetRevert property_get_revert_func;
        GDNativeExtensionClassNotification notification_func;
        GDNativeExtensionClassToString to_string_func;
        GDNativeExtensionClassReference reference_func;
        GDNativeExtensionClassUnreference unreference_func;
        GDNativeExtensionClassCreateInstance create_instance_func; # this one is mandatory
        GDNativeExtensionClassFreeInstance free_instance_func; # this one is mandatory
        GDNativeExtensionClassGetVirtual get_virtual_func;
        GDNativeExtensionClassGetRID get_rid_func;
        void *class_userdata;

    ctypedef struct GDNativeInterface:
        void *object_method_bind_call (const GDNativeMethodBindPtr p_method_bind, GDNativeObjectPtr p_instance, const GDNativeVariantPtr *p_args, GDNativeInt p_arg_count, GDNativeVariantPtr r_ret, GDNativeCallError *r_error);
        void *object_method_bind_ptrcall (const GDNativeMethodBindPtr p_method_bind, GDNativeObjectPtr p_instance, const GDNativeTypePtr *p_args, GDNativeTypePtr r_ret);
        GDNativeObjectPtr (*classdb_construct_object)(const GDNativeStringNamePtr p_classname); #The passed class must be a built-in godot class, or an already-registered extension class. In both case, object_set_instance should be called to fully initialize the object.
        GDNativeMethodBindPtr (*classdb_get_method_bind)(const GDNativeStringNamePtr p_classname, const GDNativeStringNamePtr p_methodname, GDNativeInt p_hash);
        void (*object_set_instance)(GDNativeObjectPtr p_o, const GDNativeStringNamePtr p_classname, GDExtensionClassInstancePtr p_instance); #p_classname should be a registered extension class and should extend the p_o object's class.
        void *(*classdb_get_class_tag)(const char *p_classname);

        # CLASSDB EXTENSION

        void (*classdb_register_extension_class)(const GDNativeExtensionClassLibraryPtr p_library, const GDNativeStringNamePtr p_class_name, const GDNativeStringNamePtr p_parent_class_name, const GDNativeExtensionClassCreationInfo *p_extension_funcs);
        void (*classdb_register_extension_class_method)(const GDNativeExtensionClassLibraryPtr p_library, const GDNativeStringNamePtr p_class_name, const GDNativeExtensionClassMethodInfo *p_method_info);
        void (*classdb_register_extension_class_integer_constant)(const GDNativeExtensionClassLibraryPtr p_library, const GDNativeStringNamePtr p_class_name, const GDNativeStringNamePtr p_enum_name, const GDNativeStringNamePtr p_constant_name, GDNativeInt p_constant_value, GDNativeBool p_is_bitfield);
        void (*classdb_register_extension_class_property)(const GDNativeExtensionClassLibraryPtr p_library, const GDNativeStringNamePtr p_class_name, const GDNativePropertyInfo *p_info, const GDNativeStringNamePtr p_setter, const GDNativeStringNamePtr p_getter);
        void (*classdb_register_extension_class_property_group)(const GDNativeExtensionClassLibraryPtr p_library, const GDNativeStringNamePtr p_class_name, const GDNativeStringPtr p_group_name, const GDNativeStringPtr p_prefix);
        void (*classdb_register_extension_class_property_subgroup)(const GDNativeExtensionClassLibraryPtr p_library, const GDNativeStringNamePtr p_class_name, const GDNativeStringPtr p_subgroup_name, const GDNativeStringPtr p_prefix);
        void (*classdb_register_extension_class_signal)(const GDNativeExtensionClassLibraryPtr p_library, const GDNativeStringNamePtr p_class_name, const GDNativeStringNamePtr p_signal_name, const GDNativePropertyInfo *p_argument_info, GDNativeInt p_argument_count);
        void (*classdb_unregister_extension_class)(const GDNativeExtensionClassLibraryPtr p_library, const GDNativeStringNamePtr p_class_name); # Unregistering a parent class before a class that inherits it will result in failure. Inheritors must be unregistered first.

        #utils
        void (*print_error)(const char *p_description, const char *p_function, const char *p_file, int32_t p_line);
        void (*print_warning)(const char *p_description, const char *p_function, const char *p_file, int32_t p_line);
        void (*print_script_error)(const char *p_description, const char *p_function, const char *p_file, int32_t p_line);
        GDNativeObjectPtr (*global_get_singleton)(const GDNativeStringNamePtr p_name);
        GDNativePtrBuiltInMethod (*variant_get_ptr_builtin_method)(GDNativeVariantType p_type, const GDNativeStringNamePtr p_method, GDNativeInt p_hash);
        GDNativePtrConstructor (*variant_get_ptr_constructor)(GDNativeVariantType p_type, int32_t p_constructor);
        GDNativePtrDestructor (*variant_get_ptr_destructor)(GDNativeVariantType p_type);

        void (*string_new_with_latin1_chars)(GDNativeStringPtr r_dest, const char *p_contents);
        void (*string_new_with_utf8_chars)(GDNativeStringPtr r_dest, const char *p_contents);
        #void (*string_new_with_utf16_chars)(GDNativeStringPtr r_dest, const char16_t *p_contents);
        #void (*string_new_with_utf32_chars)(GDNativeStringPtr r_dest, const char32_t *p_contents);
        #void (*string_new_with_wide_chars)(GDNativeStringPtr r_dest, const wchar_t *p_contents);
        void (*string_new_with_latin1_chars_and_len)(GDNativeStringPtr r_dest, const char *p_contents, const GDNativeInt p_size);
        void (*string_new_with_utf8_chars_and_len)(GDNativeStringPtr r_dest, const char *p_contents, const GDNativeInt p_size);
        #void (*string_new_with_utf16_chars_and_len)(GDNativeStringPtr r_dest, const char16_t *p_contents, const GDNativeInt p_size);
        #void (*string_new_with_utf32_chars_and_len)(GDNativeStringPtr r_dest, const char32_t *p_contents, const GDNativeInt p_size);
        #void (*string_new_with_wide_chars_and_len)(GDNativeStringPtr r_dest, const wchar_t *p_contents, const GDNativeInt p_size);

    # SCRIPT INSTANCE EXTENSION

    ctypedef void *GDNativeExtensionScriptInstanceDataPtr; # Pointer to custom ScriptInstance native implementation

    ctypedef GDNativeBool (*GDNativeExtensionScriptInstanceSet)(GDNativeExtensionScriptInstanceDataPtr p_instance, const GDNativeStringNamePtr p_name, const GDNativeVariantPtr p_value);
    ctypedef GDNativeBool (*GDNativeExtensionScriptInstanceGet)(GDNativeExtensionScriptInstanceDataPtr p_instance, const GDNativeStringNamePtr p_name, GDNativeVariantPtr r_ret);
    ctypedef const GDNativePropertyInfo *(*GDNativeExtensionScriptInstanceGetPropertyList)(GDNativeExtensionScriptInstanceDataPtr p_instance, uint32_t *r_count);
    ctypedef void (*GDNativeExtensionScriptInstanceFreePropertyList)(GDNativeExtensionScriptInstanceDataPtr p_instance, const GDNativePropertyInfo *p_list);
    ctypedef GDNativeVariantType (*GDNativeExtensionScriptInstanceGetPropertyType)(GDNativeExtensionScriptInstanceDataPtr p_instance, const GDNativeStringNamePtr p_name, GDNativeBool *r_is_valid);

    ctypedef GDNativeBool (*GDNativeExtensionScriptInstancePropertyCanRevert)(GDNativeExtensionScriptInstanceDataPtr p_instance, const GDNativeStringNamePtr p_name);
    ctypedef GDNativeBool (*GDNativeExtensionScriptInstancePropertyGetRevert)(GDNativeExtensionScriptInstanceDataPtr p_instance, const GDNativeStringNamePtr p_name, GDNativeVariantPtr r_ret);

    ctypedef GDNativeObjectPtr (*GDNativeExtensionScriptInstanceGetOwner)(GDNativeExtensionScriptInstanceDataPtr p_instance);
    ctypedef void (*GDNativeExtensionScriptInstancePropertyStateAdd)(const GDNativeStringNamePtr p_name, const GDNativeVariantPtr p_value, void *p_userdata);
    ctypedef void (*GDNativeExtensionScriptInstanceGetPropertyState)(GDNativeExtensionScriptInstanceDataPtr p_instance, GDNativeExtensionScriptInstancePropertyStateAdd p_add_func, void *p_userdata);

    ctypedef const GDNativeMethodInfo *(*GDNativeExtensionScriptInstanceGetMethodList)(GDNativeExtensionScriptInstanceDataPtr p_instance, uint32_t *r_count);
    ctypedef void (*GDNativeExtensionScriptInstanceFreeMethodList)(GDNativeExtensionScriptInstanceDataPtr p_instance, const GDNativeMethodInfo *p_list);

    ctypedef GDNativeBool (*GDNativeExtensionScriptInstanceHasMethod)(GDNativeExtensionScriptInstanceDataPtr p_instance, const GDNativeStringNamePtr p_name);

    ctypedef void (*GDNativeExtensionScriptInstanceCall)(GDNativeExtensionScriptInstanceDataPtr p_self, const GDNativeStringNamePtr p_method, const GDNativeVariantPtr *p_args, const GDNativeInt p_argument_count, GDNativeVariantPtr r_return, GDNativeCallError *r_error);
    ctypedef void (*GDNativeExtensionScriptInstanceNotification)(GDNativeExtensionScriptInstanceDataPtr p_instance, int32_t p_what);
    ctypedef const char *(*GDNativeExtensionScriptInstanceToString)(GDNativeExtensionScriptInstanceDataPtr p_instance, GDNativeBool *r_is_valid);

    ctypedef void (*GDNativeExtensionScriptInstanceRefCountIncremented)(GDNativeExtensionScriptInstanceDataPtr p_instance);
    ctypedef GDNativeBool (*GDNativeExtensionScriptInstanceRefCountDecremented)(GDNativeExtensionScriptInstanceDataPtr p_instance);

    ctypedef GDNativeObjectPtr (*GDNativeExtensionScriptInstanceGetScript)(GDNativeExtensionScriptInstanceDataPtr p_instance);
    ctypedef GDNativeBool (*GDNativeExtensionScriptInstanceIsPlaceholder)(GDNativeExtensionScriptInstanceDataPtr p_instance);

    ctypedef void *GDNativeExtensionScriptLanguagePtr;

    ctypedef GDNativeExtensionScriptLanguagePtr (*GDNativeExtensionScriptInstanceGetLanguage)(GDNativeExtensionScriptInstanceDataPtr p_instance);

    ctypedef void (*GDNativeExtensionScriptInstanceFree)(GDNativeExtensionScriptInstanceDataPtr p_instance);

    ctypedef void *GDNativeScriptInstancePtr; # Pointer to ScriptInstance.

    ctypedef struct GDNativeExtensionScriptInstanceInfo:
        GDNativeExtensionScriptInstanceSet set_func;
        GDNativeExtensionScriptInstanceGet get_func;
        GDNativeExtensionScriptInstanceGetPropertyList get_property_list_func;
        GDNativeExtensionScriptInstanceFreePropertyList free_property_list_func;
        GDNativeExtensionScriptInstanceGetPropertyType get_property_type_func;

        GDNativeExtensionScriptInstancePropertyCanRevert property_can_revert_func;
        GDNativeExtensionScriptInstancePropertyGetRevert property_get_revert_func;

        GDNativeExtensionScriptInstanceGetOwner get_owner_func;
        GDNativeExtensionScriptInstanceGetPropertyState get_property_state_func;

        GDNativeExtensionScriptInstanceGetMethodList get_method_list_func;
        GDNativeExtensionScriptInstanceFreeMethodList free_method_list_func;

        GDNativeExtensionScriptInstanceHasMethod has_method_func;

        GDNativeExtensionScriptInstanceCall call_func;
        GDNativeExtensionScriptInstanceNotification notification_func;

        GDNativeExtensionScriptInstanceToString to_string_func;

        GDNativeExtensionScriptInstanceRefCountIncremented refcount_incremented_func;
        GDNativeExtensionScriptInstanceRefCountDecremented refcount_decremented_func;

        GDNativeExtensionScriptInstanceGetScript get_script_func;

        GDNativeExtensionScriptInstanceIsPlaceholder is_placeholder_func;

        GDNativeExtensionScriptInstanceSet set_fallback_func;
        GDNativeExtensionScriptInstanceGet get_fallback_func;

        GDNativeExtensionScriptInstanceGetLanguage get_language_func;

        GDNativeExtensionScriptInstanceFree free_func;


#TODO: improve this
cdef GDNativeInterface* gdnative_interface