#include "binding4.h"

ctypedef void *GDNativeVariantPtr;
ctypedef void *GDNativeStringNamePtr;
ctypedef void *GDNativeStringPtr;
ctypedef void *GDNativeObjectPtr;
ctypedef void *GDNativeTypePtr;
ctypedef void *GDNativeExtensionPtr;
ctypedef void *GDNativeMethodBindPtr;
ctypedef int64_t GDNativeInt;
ctypedef uint8_t GDNativeBool;
ctypedef uint64_t GDObjectInstanceID;


# VARIANT DATA I/O

ctypedef enum GDNativeCallErrorType:
	GDNATIVE_CALL_OK = 0,
	GDNATIVE_CALL_ERROR_INVALID_METHOD = 1,
	GDNATIVE_CALL_ERROR_INVALID_ARGUMENT = 2, # expected is variant type
	GDNATIVE_CALL_ERROR_TOO_MANY_ARGUMENTS = 3, # expected is number of arguments
	GDNATIVE_CALL_ERROR_TOO_FEW_ARGUMENTS = 4, # expected is number of arguments
	GDNATIVE_CALL_ERROR_INSTANCE_IS_NULL = 5,
	GDNATIVE_CALL_ERROR_METHOD_NOT_CONST = 6, #used for const call

ctypedef struct:
	GDNativeCallErrorType error;
	int32_t argument;
	int32_t expected;

ctypedef struct GDNativeInterface:
    cdef void *object_method_bind_call (const GDNativeMethodBindPtr p_method_bind, GDNativeObjectPtr p_instance, const GDNativeVariantPtr *p_args, GDNativeInt p_arg_count, GDNativeVariantPtr r_ret, GDNativeCallError *r_error);
	cdef void *object_method_bind_ptrcall (const GDNativeMethodBindPtr p_method_bind, GDNativeObjectPtr p_instance, const GDNativeTypePtr *p_args, GDNativeTypePtr r_ret);
    GDNativeObjectPtr (*classdb_construct_object)(const char *p_classname); /* The passed class must be a built-in godot class, or an already-registered extension class. In both case, object_set_instance should be called to fully initialize the object. */
	GDNativeMethodBindPtr (*classdb_get_method_bind)(const char *p_classname, const char *p_methodname, GDNativeInt p_hash);

	cdef void *(*classdb_get_class_tag)(const char *p_classname);

	# CLASSDB EXTENSION

	cdef void (*classdb_register_extension_class)(const GDNativeExtensionClassLibraryPtr p_library, const char *p_class_name, const char *p_parent_class_name, const GDNativeExtensionClassCreationInfo *p_extension_funcs);
	cdef void (*classdb_register_extension_class_method)(const GDNativeExtensionClassLibraryPtr p_library, const char *p_class_name, const GDNativeExtensionClassMethodInfo *p_method_info);
	cdef void (*classdb_register_extension_class_integer_constant)(const GDNativeExtensionClassLibraryPtr p_library, const char *p_class_name, const char *p_enum_name, const char *p_constant_name, GDNativeInt p_constant_value, GDNativeBool p_is_bitfield);
	cdef void (*classdb_register_extension_class_property)(const GDNativeExtensionClassLibraryPtr p_library, const char *p_class_name, const GDNativePropertyInfo *p_info, const char *p_setter, const char *p_getter);
	cdef void (*classdb_register_extension_class_property_group)(const GDNativeExtensionClassLibraryPtr p_library, const char *p_class_name, const char *p_group_name, const char *p_prefix);
	cdef void (*classdb_register_extension_class_property_subgroup)(const GDNativeExtensionClassLibraryPtr p_library, const char *p_class_name, const char *p_subgroup_name, const char *p_prefix);
	cdef void (*classdb_register_extension_class_signal)(const GDNativeExtensionClassLibraryPtr p_library, const char *p_class_name, const char *p_signal_name, const GDNativePropertyInfo *p_argument_info, GDNativeInt p_argument_count);
	cdef void (*classdb_unregister_extension_class)(const GDNativeExtensionClassLibraryPtr p_library, const char *p_class_name); /* Unregistering a parent class before a class that inherits it will result in failure. Inheritors must be unregistered first. */


# SCRIPT INSTANCE EXTENSION

ctypedef void *GDNativeExtensionScriptInstanceDataPtr; // Pointer to custom ScriptInstance native implementation

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

ctypedef void *GDNativeScriptInstancePtr; // Pointer to ScriptInstance.

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