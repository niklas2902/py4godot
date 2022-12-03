from py4godot_core_holder.core_holder cimport *
from py4godot.utils.print_tools import *
from py4godot.utils.utils cimport *
from py4godot.classes.ScriptLanguageExtension.ScriptLanguageExtension cimport *
from cpython cimport Py_INCREF, Py_DECREF, PyObject

gdnative_interface = get_interface()
cdef GDNativeExtensionClassCreationInfo creation_info
cdef class PyLanguage(ScriptLanguageExtension):
  @staticmethod
  def constructor():
    cdef PyLanguage class_ = PyLanguage()
    print_warning("----------------calling _constructor")

    cdef StringName class_name = c_string_to_string_name("PyLanguage")

    class_.set_godot_owner(gdnative_interface.classdb_construct_object(class_name.godot_owner))
    gdnative_interface.object_set_instance(class_.get_godot_owner(),class_name.godot_owner , <void*>class_)

    print_warning("----------------end of calling _constructor")
    return class_

  cdef new(self):
    pass
  cdef _get_name(self):
    pass

  cdef _init(self):
    pass

  cdef _get_type(self):
    pass

  cdef _get_extension(self):
    pass

  cdef _execute_file(self, String path):
    pass

  cdef _finish(self):
    pass

  cdef _get_reserved_words(self):
    pass

  cdef _is_control_flow_keyword(self, String keyword):
    pass

  cdef _get_comment_delimiters(self):
    pass

  cdef _get_string_delimiters(self):
    pass

  cdef _make_template(self, String template, String class_name, String base_class_name):
    pass

  cdef _get_built_in_templates(self, StringName object):
    pass

  cdef _is_using_templates(self):
    pass

  cdef _validate(self, String script, String path, bool validate_functions, bool validate_errors, bool validate_warnings, bool validate_safe_lines):
    pass

  cdef _validate_path(self, String path):
    pass

  cdef _create_script(self):
    pass

  cdef _has_named_classes(self):
    pass

  cdef _supports_builtin_mode(self):
    pass

  cdef _supports_documentation(self):
    pass

  cdef _can_inherit_from_file(self):
    pass

  cdef _find_function(self, String class_name, String function_name):
    pass

  cdef _make_function(self, String class_name, String function_name, PackedStringArray function_args):
    pass

  cdef _open_in_external_editor(self, Script script, int line, int column):
    pass

  cdef _overrides_external_editor(self):
    pass

  cdef _complete_code(self, String code, String path, Object owner):
    pass

  cdef _lookup_code(self, String code, String symbol, String path, Object owner):
    pass

  cdef _auto_indent_code(self, String code, int from_line, int to_line):
    pass

  cdef _add_global_constant(self, StringName name, Variant value):
    pass

  cdef _add_named_global_constant(self, StringName name, Variant value):
    pass

  cdef _remove_named_global_constant(self, StringName name):
    pass

  cdef _thread_enter(self):
    pass

  cdef _thread_exit(self):
    pass

  cdef _debug_get_error(self):
    pass

  cdef _debug_get_stack_level_count(self):
    pass

  cdef _debug_get_stack_level_line(self, int level):
    pass

  cdef _debug_get_stack_level_function(self, int level):
    pass

  cdef _debug_get_stack_level_locals(self, int level, int max_subitems, int max_depth):
    pass

  cdef _debug_get_stack_level_members(self, int level, int max_subitems, int max_depth):
    pass

  cdef _debug_get_globals(self, int max_subitems, int max_depth):
    pass

  cdef _debug_parse_stack_level_expression(self, int level, String expression, int max_subitems, int max_depth):
    pass

  cdef _debug_get_current_stack_info(self):
    pass

  cdef _reload_all_scripts(self):
    pass

  cdef _reload_tool_script(self, Script script, bool soft_reload):
    pass

  cdef _get_recognized_extensions(self):
    pass

  cdef _get_public_functions(self):
    pass

  cdef _get_public_constants(self):
    pass

  cdef _get_public_annotations(self):
    pass

  cdef _profiling_start(self):
    pass

  cdef _profiling_stop(self):
    pass

  cdef _refcount_incremented_instance_binding(self, Object object):
    pass

  cdef _refcount_decremented_instance_binding(self, Object object):
    pass

  cdef _frame(self):
    pass

  cdef _handles_global_class_type(self, String type):
    pass

  cdef _get_global_class_name(self, String path):
    pass

cdef GDNativeObjectPtr create_instance(void* userdata):
    print_warning("create_instance")
    #TODO: This makes no sense
    cdef StringName class_name = c_string_to_string_name("ScriptLanguageExtension")
    cdef GDNativeObjectPtr gdnative_object = gdnative_interface.classdb_construct_object(class_name.godot_owner)
    return gdnative_object

cdef void free_instance(void *p_userdata, GDExtensionClassInstancePtr p_instance):
    print_warning("free_instance")

cdef register_class():
    """
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
    """
    creation_info.create_instance_func = create_instance
    creation_info.free_instance_func = free_instance
    creation_info.class_userdata = <PyObject *>PyLanguage

    cdef String class_name_string = String.new0()
    _interface.string_new_with_utf8_chars(class_name_string.godot_owner, "PyLanguage")
    cdef StringName class_name = StringName.new2(class_name_string)


    cdef String parent_class_name_string = String.new0()
    _interface.string_new_with_utf8_chars(parent_class_name_string.godot_owner, "ScriptLanguageExtension")
    cdef StringName parent_class_name = StringName.new2(parent_class_name_string)

    gdnative_interface.classdb_register_extension_class(get_library(), class_name.godot_owner, parent_class_name.godot_owner, &creation_info)

cdef void call_func (void *method_userdata, GDExtensionClassInstancePtr p_instance, const GDNativeVariantPtr *p_args, const GDNativeInt p_argument_count, GDNativeVariantPtr r_return, GDNativeCallError *r_error):
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    pass

cdef GDNativeVariantType get_argument_type(void *p_method_userdata, int32_t p_argument):
    return GDNativeVariantType.GDNATIVE_VARIANT_TYPE_STRING

cdef void get_argument_info(void *p_method_userdata, int32_t p_argument, GDNativePropertyInfo *r_info):
    pass
cdef GDNativeExtensionClassMethodArgumentMetadata get_argument_metadata(void *p_method_userdata, int32_t p_argument):
    return GDNativeExtensionClassMethodArgumentMetadata.GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_NONE


cdef register_methods():
    """
    ctypedef struct GDNativePropertyInfo:
        GDNativeVariantType type;
        GDNativeStringNamePtr name;
        GDNativeStringNamePtr class_name;
        uint32_t hint; # Bitfield of `PropertyHint` (defined in `extension_api.json`).
        GDNativeStringPtr hint_string;
        uint32_t usage; # Bitfield of `PropertyUsageFlags` (defined in `extension_api.json`).
    """
    """
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
    """
    #        void (*classdb_register_extension_class_method)(const GDNativeExtensionClassLibraryPtr p_library, const GDNativeStringNamePtr p_class_name, const GDNativeExtensionClassMethodInfo *p_method_info);

    cdef GDNativeExtensionClassMethodInfo method_info

    cdef StringName method_name = c_string_to_string_name("_get_name")
    method_info.name = method_name.godot_owner
    method_info.method_flags = 0
    method_info.argument_count = 0
    method_info.has_return_value = 1
    method_info.default_argument_count = 0
    method_info.default_arguments = NULL
    method_info.call_func = call_func
    #method_info.get_argument_type_func = get_argument_type
    #method_info.get_argument_info_func = get_argument_info # name and hint information for the argument can be omitted in release builds. Class name should always be present if it applies.
    #method_infoget_argument_metadata_func = get_argument_metadata

    cdef GDNativePropertyInfo property_info
    property_info.type = GDNativeVariantType.GDNATIVE_VARIANT_TYPE_STRING
    cdef StringName property_name = c_string_to_string_name("return")
    cdef StringName property_class_name = c_string_to_string_name("PyLanguage")
    property_info.name =  property_name.godot_owner
    property_info.class_name = property_class_name.godot_owner
    property_info.hint = 0

    cdef String string = String.new0()
    property_info.hint_string = string.godot_owner
    property_info.usage = 0

    method_info.return_value_info = &property_info

    cdef StringName class_name = c_string_to_string_name("PyLanguage")
    gdnative_interface.classdb_register_extension_class_method(get_library(), class_name.godot_owner, &method_info)
