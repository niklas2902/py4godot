from py4godot_core_holder.core_holder cimport *
from py4godot.utils.print_tools import *
from py4godot.utils.utils cimport *
from py4godot.enums.enums4 cimport *
from py4godot.godot_bindings.binding4_godot4 cimport get_incremented_pointer
from py4godot.classes.ScriptLanguageExtension.ScriptLanguageExtension cimport *
from py4godot.classes.Object.Object cimport *
from py4godot.classes.generated4_core cimport *
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from cython.operator cimport dereference

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
    class_.script_name = c_string_to_string("PyLanguage")
    Py_INCREF(class_)
    return class_

  cdef new(self):
    pass
  cdef _get_name(self):
    return self.script_name

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

cdef String script_name = c_string_to_string("Python")
cdef GDNativeTypePtr ptr =  script_name.godot_owner

cdef GDNativePtrOperatorEvaluator operator_equal_string_name = gdnative_interface.variant_get_ptr_operator_evaluator(
GDNativeVariantOperator.GDNATIVE_VARIANT_OP_EQUAL,
 GDNativeVariantType.GDNATIVE_VARIANT_TYPE_STRING_NAME,
 GDNativeVariantType.GDNATIVE_VARIANT_TYPE_STRING_NAME);

cdef bool string_names_equal(StringName left, StringName right):
    cdef int8_t ret
    operator_equal_string_name(left.godot_owner, right.godot_owner, &ret)
    return ret != 0


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
    creation_info.get_virtual_func = get_virtual_func

    cdef String class_name_string = String.new0()
    _interface.string_new_with_utf8_chars(class_name_string.godot_owner, "PyLanguage")
    cdef StringName class_name = StringName.new2(class_name_string)


    cdef String parent_class_name_string = String.new0()
    _interface.string_new_with_utf8_chars(parent_class_name_string.godot_owner, "ScriptLanguageExtension")
    cdef StringName parent_class_name = StringName.new2(parent_class_name_string)

    gdnative_interface.classdb_register_extension_class(get_library(), class_name.godot_owner, parent_class_name.godot_owner, &creation_info)

cdef void call_func (void *method_userdata, GDExtensionClassInstancePtr p_instance, const GDNativeVariantPtr *p_args, const GDNativeInt p_argument_count, GDNativeVariantPtr r_return, GDNativeCallError *r_error):
    print_warning("-----------------------method called")
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef char* name = <char*>method_userdata
    cdef String py_language_name = pylanguage.get_name()
    r_return = <GDNativeVariantPtr>pylanguage_name.godot_owner
    print_warning("method called")

cdef void* call_virtual_func(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    #print_warning("call_virtual")
    cdef String ret_val = pylanguage._get_name()
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr

cdef void* call_virtual_func__get_name(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _get_name")


    cdef String ret_val = pylanguage._get_name()
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__get_name = c_string_to_string_name("_get_name")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_name_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_name


cdef void* call_virtual_func__init(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _init")


    pylanguage._init()

cdef StringName func_name__init = c_string_to_string_name("_init")
cdef GDNativeExtensionClassCallVirtual call_virtual__init_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__init


cdef void* call_virtual_func__get_type(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _get_type")


    cdef String ret_val = pylanguage._get_type()
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__get_type = c_string_to_string_name("_get_type")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_type_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_type


cdef void* call_virtual_func__get_extension(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _get_extension")


    cdef String ret_val = pylanguage._get_extension()
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__get_extension = c_string_to_string_name("_get_extension")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_extension_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_extension


cdef void* call_virtual_func__execute_file(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _execute_file")
    cdef String args0 = String.new_static(dereference(p_args + 0))


    cdef Error ret_val = pylanguage._execute_file(args0)
    cdef GDNativeTypePtr ret_ptr = &ret_val
    r_ret = ret_ptr
cdef StringName func_name__execute_file = c_string_to_string_name("_execute_file")
cdef GDNativeExtensionClassCallVirtual call_virtual__execute_file_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__execute_file


cdef void* call_virtual_func__finish(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _finish")


    pylanguage._finish()

cdef StringName func_name__finish = c_string_to_string_name("_finish")
cdef GDNativeExtensionClassCallVirtual call_virtual__finish_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__finish


cdef void* call_virtual_func__get_reserved_words(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _get_reserved_words")


    cdef PackedStringArray ret_val = pylanguage._get_reserved_words()
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__get_reserved_words = c_string_to_string_name("_get_reserved_words")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_reserved_words_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_reserved_words


cdef void* call_virtual_func__is_control_flow_keyword(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _is_control_flow_keyword")
    cdef String args0 = String.new_static(dereference(p_args + 0))


    cdef bool ret_val = pylanguage._is_control_flow_keyword(args0)
    cdef uint8_t bool_res = <uint8_t> int(ret_val)
    cdef GDNativeTypePtr ret_ptr = &bool_res
    r_ret = ret_ptr
cdef StringName func_name__is_control_flow_keyword = c_string_to_string_name("_is_control_flow_keyword")
cdef GDNativeExtensionClassCallVirtual call_virtual__is_control_flow_keyword_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__is_control_flow_keyword


cdef void* call_virtual_func__get_comment_delimiters(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _get_comment_delimiters")


    cdef PackedStringArray ret_val = pylanguage._get_comment_delimiters()
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__get_comment_delimiters = c_string_to_string_name("_get_comment_delimiters")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_comment_delimiters_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_comment_delimiters


cdef void* call_virtual_func__get_string_delimiters(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _get_string_delimiters")


    cdef PackedStringArray ret_val = pylanguage._get_string_delimiters()
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__get_string_delimiters = c_string_to_string_name("_get_string_delimiters")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_string_delimiters_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_string_delimiters


cdef void* call_virtual_func__make_template(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _make_template")
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef String args1 = String.new_static(dereference(p_args + 1))
    cdef String args2 = String.new_static(dereference(p_args + 2))


    cdef Script ret_val = pylanguage._make_template(args0,args1,args2)
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__make_template = c_string_to_string_name("_make_template")
cdef GDNativeExtensionClassCallVirtual call_virtual__make_template_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__make_template


cdef void* call_virtual_func__get_built_in_templates(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _get_built_in_templates")
    cdef StringName args0 = StringName.new_static(dereference(p_args + 0))


    cdef Array ret_val = pylanguage._get_built_in_templates(args0)
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__get_built_in_templates = c_string_to_string_name("_get_built_in_templates")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_built_in_templates_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_built_in_templates


cdef void* call_virtual_func__is_using_templates(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _is_using_templates")


    cdef bool ret_val = pylanguage._is_using_templates()
    cdef uint8_t bool_res = <uint8_t> int(ret_val)
    cdef GDNativeTypePtr ret_ptr = &bool_res
    r_ret = ret_ptr
cdef StringName func_name__is_using_templates = c_string_to_string_name("_is_using_templates")
cdef GDNativeExtensionClassCallVirtual call_virtual__is_using_templates_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__is_using_templates


cdef void* call_virtual_func__validate(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _validate")
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef String args1 = String.new_static(dereference(p_args + 1))
    cdef bool args2 = <bool>dereference(p_args + 2)
    cdef bool args3 = <bool>dereference(p_args + 3)
    cdef bool args4 = <bool>dereference(p_args + 4)
    cdef bool args5 = <bool>dereference(p_args + 5)


    cdef Dictionary ret_val = pylanguage._validate(args0,args1,args2,args3,args4,args5)
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__validate = c_string_to_string_name("_validate")
cdef GDNativeExtensionClassCallVirtual call_virtual__validate_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__validate


cdef void* call_virtual_func__validate_path(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _validate_path")
    cdef String args0 = String.new_static(dereference(p_args + 0))


    cdef String ret_val = pylanguage._validate_path(args0)
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__validate_path = c_string_to_string_name("_validate_path")
cdef GDNativeExtensionClassCallVirtual call_virtual__validate_path_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__validate_path


cdef void* call_virtual_func__create_script(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _create_script")


    cdef Object ret_val = pylanguage._create_script()
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__create_script = c_string_to_string_name("_create_script")
cdef GDNativeExtensionClassCallVirtual call_virtual__create_script_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__create_script


cdef void* call_virtual_func__has_named_classes(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _has_named_classes")


    cdef bool ret_val = pylanguage._has_named_classes()
    cdef uint8_t bool_res = <uint8_t> int(ret_val)
    cdef GDNativeTypePtr ret_ptr = &bool_res
    r_ret = ret_ptr
cdef StringName func_name__has_named_classes = c_string_to_string_name("_has_named_classes")
cdef GDNativeExtensionClassCallVirtual call_virtual__has_named_classes_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__has_named_classes


cdef void* call_virtual_func__supports_builtin_mode(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _supports_builtin_mode")


    cdef bool ret_val = pylanguage._supports_builtin_mode()
    cdef uint8_t bool_res = <uint8_t> int(ret_val)
    cdef GDNativeTypePtr ret_ptr = &bool_res
    r_ret = ret_ptr
cdef StringName func_name__supports_builtin_mode = c_string_to_string_name("_supports_builtin_mode")
cdef GDNativeExtensionClassCallVirtual call_virtual__supports_builtin_mode_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__supports_builtin_mode


cdef void* call_virtual_func__supports_documentation(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _supports_documentation")


    cdef bool ret_val = pylanguage._supports_documentation()
    cdef uint8_t bool_res = <uint8_t> int(ret_val)
    cdef GDNativeTypePtr ret_ptr = &bool_res
    r_ret = ret_ptr
cdef StringName func_name__supports_documentation = c_string_to_string_name("_supports_documentation")
cdef GDNativeExtensionClassCallVirtual call_virtual__supports_documentation_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__supports_documentation


cdef void* call_virtual_func__can_inherit_from_file(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _can_inherit_from_file")


    cdef bool ret_val = pylanguage._can_inherit_from_file()
    cdef uint8_t bool_res = <uint8_t> int(ret_val)
    cdef GDNativeTypePtr ret_ptr = &bool_res
    r_ret = ret_ptr
cdef StringName func_name__can_inherit_from_file = c_string_to_string_name("_can_inherit_from_file")
cdef GDNativeExtensionClassCallVirtual call_virtual__can_inherit_from_file_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__can_inherit_from_file


cdef void* call_virtual_func__find_function(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _find_function")
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef String args1 = String.new_static(dereference(p_args + 1))


    cdef int ret_val = pylanguage._find_function(args0,args1)
    cdef GDNativeTypePtr ret_ptr = &ret_val
    r_ret = ret_ptr
cdef StringName func_name__find_function = c_string_to_string_name("_find_function")
cdef GDNativeExtensionClassCallVirtual call_virtual__find_function_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__find_function


cdef void* call_virtual_func__make_function(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _make_function")
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef String args1 = String.new_static(dereference(p_args + 1))
    cdef PackedStringArray args2 = PackedStringArray.new_static(dereference(p_args + 2))


    cdef String ret_val = pylanguage._make_function(args0,args1,args2)
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__make_function = c_string_to_string_name("_make_function")
cdef GDNativeExtensionClassCallVirtual call_virtual__make_function_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__make_function


cdef void* call_virtual_func__open_in_external_editor(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _open_in_external_editor")
    cdef Script args0 = <Script>dereference(p_args + 0)
    cdef int args1 = <int>dereference(p_args + 1)
    cdef int args2 = <int>dereference(p_args + 2)


    cdef Error ret_val = pylanguage._open_in_external_editor(args0,args1,args2)
    cdef GDNativeTypePtr ret_ptr = &ret_val
    r_ret = ret_ptr
cdef StringName func_name__open_in_external_editor = c_string_to_string_name("_open_in_external_editor")
cdef GDNativeExtensionClassCallVirtual call_virtual__open_in_external_editor_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__open_in_external_editor


cdef void* call_virtual_func__overrides_external_editor(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _overrides_external_editor")


    cdef bool ret_val = pylanguage._overrides_external_editor()
    cdef uint8_t bool_res = <uint8_t> int(ret_val)
    cdef GDNativeTypePtr ret_ptr = &bool_res
    r_ret = ret_ptr
cdef StringName func_name__overrides_external_editor = c_string_to_string_name("_overrides_external_editor")
cdef GDNativeExtensionClassCallVirtual call_virtual__overrides_external_editor_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__overrides_external_editor


cdef void* call_virtual_func__complete_code(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _complete_code")
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef String args1 = String.new_static(dereference(p_args + 1))
    cdef Object args2 = <Object>dereference(p_args + 2)


    cdef Dictionary ret_val = pylanguage._complete_code(args0,args1,args2)
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__complete_code = c_string_to_string_name("_complete_code")
cdef GDNativeExtensionClassCallVirtual call_virtual__complete_code_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__complete_code


cdef void* call_virtual_func__lookup_code(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _lookup_code")
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef String args1 = String.new_static(dereference(p_args + 1))
    cdef String args2 = String.new_static(dereference(p_args + 2))
    cdef Object args3 = <Object>dereference(p_args + 3)


    cdef Dictionary ret_val = pylanguage._lookup_code(args0,args1,args2,args3)
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__lookup_code = c_string_to_string_name("_lookup_code")
cdef GDNativeExtensionClassCallVirtual call_virtual__lookup_code_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__lookup_code


cdef void* call_virtual_func__auto_indent_code(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _auto_indent_code")
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef int args1 = <int>dereference(p_args + 1)
    cdef int args2 = <int>dereference(p_args + 2)


    cdef String ret_val = pylanguage._auto_indent_code(args0,args1,args2)
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__auto_indent_code = c_string_to_string_name("_auto_indent_code")
cdef GDNativeExtensionClassCallVirtual call_virtual__auto_indent_code_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__auto_indent_code


cdef void* call_virtual_func__add_global_constant(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _add_global_constant")
    cdef StringName args0 = StringName.new_static(dereference(p_args + 0))
    cdef Variant args1 = <Variant>dereference(p_args + 1)


    pylanguage._add_global_constant(args0,args1)

cdef StringName func_name__add_global_constant = c_string_to_string_name("_add_global_constant")
cdef GDNativeExtensionClassCallVirtual call_virtual__add_global_constant_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__add_global_constant


cdef void* call_virtual_func__add_named_global_constant(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _add_named_global_constant")
    cdef StringName args0 = StringName.new_static(dereference(p_args + 0))
    cdef Variant args1 = <Variant>dereference(p_args + 1)


    pylanguage._add_named_global_constant(args0,args1)

cdef StringName func_name__add_named_global_constant = c_string_to_string_name("_add_named_global_constant")
cdef GDNativeExtensionClassCallVirtual call_virtual__add_named_global_constant_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__add_named_global_constant


cdef void* call_virtual_func__remove_named_global_constant(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _remove_named_global_constant")
    cdef StringName args0 = StringName.new_static(dereference(p_args + 0))


    pylanguage._remove_named_global_constant(args0)

cdef StringName func_name__remove_named_global_constant = c_string_to_string_name("_remove_named_global_constant")
cdef GDNativeExtensionClassCallVirtual call_virtual__remove_named_global_constant_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__remove_named_global_constant


cdef void* call_virtual_func__thread_enter(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _thread_enter")


    pylanguage._thread_enter()

cdef StringName func_name__thread_enter = c_string_to_string_name("_thread_enter")
cdef GDNativeExtensionClassCallVirtual call_virtual__thread_enter_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__thread_enter


cdef void* call_virtual_func__thread_exit(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _thread_exit")


    pylanguage._thread_exit()

cdef StringName func_name__thread_exit = c_string_to_string_name("_thread_exit")
cdef GDNativeExtensionClassCallVirtual call_virtual__thread_exit_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__thread_exit


cdef void* call_virtual_func__debug_get_error(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _debug_get_error")


    cdef String ret_val = pylanguage._debug_get_error()
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__debug_get_error = c_string_to_string_name("_debug_get_error")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_error_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_error


cdef void* call_virtual_func__debug_get_stack_level_count(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _debug_get_stack_level_count")


    cdef int ret_val = pylanguage._debug_get_stack_level_count()
    cdef GDNativeTypePtr ret_ptr = &ret_val
    r_ret = ret_ptr
cdef StringName func_name__debug_get_stack_level_count = c_string_to_string_name("_debug_get_stack_level_count")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_stack_level_count_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_stack_level_count


cdef void* call_virtual_func__debug_get_stack_level_line(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _debug_get_stack_level_line")
    cdef int args0 = <int>dereference(p_args + 0)


    cdef int ret_val = pylanguage._debug_get_stack_level_line(args0)
    cdef GDNativeTypePtr ret_ptr = &ret_val
    r_ret = ret_ptr
cdef StringName func_name__debug_get_stack_level_line = c_string_to_string_name("_debug_get_stack_level_line")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_stack_level_line_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_stack_level_line


cdef void* call_virtual_func__debug_get_stack_level_function(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _debug_get_stack_level_function")
    cdef int args0 = <int>dereference(p_args + 0)


    cdef String ret_val = pylanguage._debug_get_stack_level_function(args0)
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__debug_get_stack_level_function = c_string_to_string_name("_debug_get_stack_level_function")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_stack_level_function_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_stack_level_function


cdef void* call_virtual_func__debug_get_stack_level_locals(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _debug_get_stack_level_locals")
    cdef int args0 = <int>dereference(p_args + 0)
    cdef int args1 = <int>dereference(p_args + 1)
    cdef int args2 = <int>dereference(p_args + 2)


    cdef Dictionary ret_val = pylanguage._debug_get_stack_level_locals(args0,args1,args2)
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__debug_get_stack_level_locals = c_string_to_string_name("_debug_get_stack_level_locals")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_stack_level_locals_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_stack_level_locals


cdef void* call_virtual_func__debug_get_stack_level_members(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _debug_get_stack_level_members")
    cdef int args0 = <int>dereference(p_args + 0)
    cdef int args1 = <int>dereference(p_args + 1)
    cdef int args2 = <int>dereference(p_args + 2)


    cdef Dictionary ret_val = pylanguage._debug_get_stack_level_members(args0,args1,args2)
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__debug_get_stack_level_members = c_string_to_string_name("_debug_get_stack_level_members")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_stack_level_members_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_stack_level_members


cdef void* call_virtual_func__debug_get_stack_level_instance(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _debug_get_stack_level_instance")
    cdef int args0 = <int>dereference(p_args + 0)

    cdef object obj = <object>pylanguage._debug_get_stack_level_instance(args0)
    cdef void* ret_val = <void*>obj
    cdef GDNativeTypePtr ret_ptr = &ret_val
    r_ret = ret_ptr
cdef StringName func_name__debug_get_stack_level_instance = c_string_to_string_name("_debug_get_stack_level_instance")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_stack_level_instance_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_stack_level_instance


cdef void* call_virtual_func__debug_get_globals(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _debug_get_globals")
    cdef int args0 = <int>dereference(p_args + 0)
    cdef int args1 = <int>dereference(p_args + 1)


    cdef Dictionary ret_val = pylanguage._debug_get_globals(args0,args1)
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__debug_get_globals = c_string_to_string_name("_debug_get_globals")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_globals_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_globals


cdef void* call_virtual_func__debug_parse_stack_level_expression(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _debug_parse_stack_level_expression")
    cdef int args0 = <int>dereference(p_args + 0)
    cdef String args1 = String.new_static(dereference(p_args + 1))
    cdef int args2 = <int>dereference(p_args + 2)
    cdef int args3 = <int>dereference(p_args + 3)


    cdef String ret_val = pylanguage._debug_parse_stack_level_expression(args0,args1,args2,args3)
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__debug_parse_stack_level_expression = c_string_to_string_name("_debug_parse_stack_level_expression")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_parse_stack_level_expression_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_parse_stack_level_expression


cdef void* call_virtual_func__debug_get_current_stack_info(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _debug_get_current_stack_info")


    cdef Array ret_val = pylanguage._debug_get_current_stack_info()
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__debug_get_current_stack_info = c_string_to_string_name("_debug_get_current_stack_info")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_current_stack_info_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_current_stack_info


cdef void* call_virtual_func__reload_all_scripts(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _reload_all_scripts")


    pylanguage._reload_all_scripts()

cdef StringName func_name__reload_all_scripts = c_string_to_string_name("_reload_all_scripts")
cdef GDNativeExtensionClassCallVirtual call_virtual__reload_all_scripts_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__reload_all_scripts


cdef void* call_virtual_func__reload_tool_script(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _reload_tool_script")
    cdef Script args0 = <Script>dereference(p_args + 0)
    cdef bool args1 = <bool>dereference(p_args + 1)


    pylanguage._reload_tool_script(args0,args1)

cdef StringName func_name__reload_tool_script = c_string_to_string_name("_reload_tool_script")
cdef GDNativeExtensionClassCallVirtual call_virtual__reload_tool_script_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__reload_tool_script


cdef void* call_virtual_func__get_recognized_extensions(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _get_recognized_extensions")


    cdef PackedStringArray ret_val = pylanguage._get_recognized_extensions()
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__get_recognized_extensions = c_string_to_string_name("_get_recognized_extensions")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_recognized_extensions_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_recognized_extensions


cdef void* call_virtual_func__get_public_functions(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _get_public_functions")


    cdef Array ret_val = pylanguage._get_public_functions()
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__get_public_functions = c_string_to_string_name("_get_public_functions")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_public_functions_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_public_functions


cdef void* call_virtual_func__get_public_constants(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _get_public_constants")


    cdef Dictionary ret_val = pylanguage._get_public_constants()
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__get_public_constants = c_string_to_string_name("_get_public_constants")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_public_constants_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_public_constants


cdef void* call_virtual_func__get_public_annotations(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _get_public_annotations")


    cdef Array ret_val = pylanguage._get_public_annotations()
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__get_public_annotations = c_string_to_string_name("_get_public_annotations")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_public_annotations_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_public_annotations


cdef void* call_virtual_func__profiling_start(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _profiling_start")


    pylanguage._profiling_start()

cdef StringName func_name__profiling_start = c_string_to_string_name("_profiling_start")
cdef GDNativeExtensionClassCallVirtual call_virtual__profiling_start_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__profiling_start


cdef void* call_virtual_func__profiling_stop(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _profiling_stop")


    pylanguage._profiling_stop()

cdef StringName func_name__profiling_stop = c_string_to_string_name("_profiling_stop")
cdef GDNativeExtensionClassCallVirtual call_virtual__profiling_stop_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__profiling_stop


cdef void* call_virtual_func__alloc_instance_binding_data(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _alloc_instance_binding_data")
    cdef Object args0 = <Object>dereference(p_args + 0)

    cdef object obj = <object>pylanguage._alloc_instance_binding_data(args0)
    cdef void* ret_val = <void*>obj
    cdef GDNativeTypePtr ret_ptr = &ret_val
    r_ret = ret_ptr
cdef StringName func_name__alloc_instance_binding_data = c_string_to_string_name("_alloc_instance_binding_data")
cdef GDNativeExtensionClassCallVirtual call_virtual__alloc_instance_binding_data_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__alloc_instance_binding_data


cdef void* call_virtual_func__free_instance_binding_data(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _free_instance_binding_data")
    cdef object args0 = <object>dereference(p_args + 0)


    pylanguage._free_instance_binding_data(args0)

cdef StringName func_name__free_instance_binding_data = c_string_to_string_name("_free_instance_binding_data")
cdef GDNativeExtensionClassCallVirtual call_virtual__free_instance_binding_data_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__free_instance_binding_data


cdef void* call_virtual_func__refcount_incremented_instance_binding(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _refcount_incremented_instance_binding")
    cdef Object args0 = <Object>dereference(p_args + 0)


    pylanguage._refcount_incremented_instance_binding(args0)

cdef StringName func_name__refcount_incremented_instance_binding = c_string_to_string_name("_refcount_incremented_instance_binding")
cdef GDNativeExtensionClassCallVirtual call_virtual__refcount_incremented_instance_binding_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__refcount_incremented_instance_binding


cdef void* call_virtual_func__refcount_decremented_instance_binding(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _refcount_decremented_instance_binding")
    cdef Object args0 = <Object>dereference(p_args + 0)


    cdef bool ret_val = pylanguage._refcount_decremented_instance_binding(args0)
    cdef uint8_t bool_res = <uint8_t> int(ret_val)
    cdef GDNativeTypePtr ret_ptr = &bool_res
    r_ret = ret_ptr
cdef StringName func_name__refcount_decremented_instance_binding = c_string_to_string_name("_refcount_decremented_instance_binding")
cdef GDNativeExtensionClassCallVirtual call_virtual__refcount_decremented_instance_binding_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__refcount_decremented_instance_binding


cdef void* call_virtual_func__frame(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _frame")


    pylanguage._frame()

cdef StringName func_name__frame = c_string_to_string_name("_frame")
cdef GDNativeExtensionClassCallVirtual call_virtual__frame_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__frame


cdef void* call_virtual_func__handles_global_class_type(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _handles_global_class_type")
    cdef String args0 = String.new_static(dereference(p_args + 0))


    cdef bool ret_val = pylanguage._handles_global_class_type(args0)
    cdef uint8_t bool_res = <uint8_t> int(ret_val)
    cdef GDNativeTypePtr ret_ptr = &bool_res
    r_ret = ret_ptr
cdef StringName func_name__handles_global_class_type = c_string_to_string_name("_handles_global_class_type")
cdef GDNativeExtensionClassCallVirtual call_virtual__handles_global_class_type_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__handles_global_class_type


cdef void* call_virtual_func__get_global_class_name(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual _get_global_class_name")
    cdef String args0 = String.new_static(dereference(p_args + 0))


    cdef Dictionary ret_val = pylanguage._get_global_class_name(args0)
    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner
    r_ret = ret_ptr
cdef StringName func_name__get_global_class_name = c_string_to_string_name("_get_global_class_name")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_global_class_name_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_global_class_name

cdef GDNativeExtensionClassCallVirtual call_virtual_func_def = <GDNativeExtensionClassCallVirtual>call_virtual_func
cdef GDNativeExtensionClassCallVirtual get_virtual_func(void *p_userdata, GDNativeConstStringNamePtr p_name) with gil:
    gdnative_interface = get_interface()
    cdef StringName name = StringName()
    name.godot_owner = p_name

    if(string_names_equal(func_name__get_name, name)):
        print_warning("----------------get_name")
        return call_virtual__get_name_def