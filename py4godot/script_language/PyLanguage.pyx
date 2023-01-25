from py4godot_core_holder.core_holder cimport *
from py4godot.utils.print_tools import *
from py4godot.utils.utils cimport *
from py4godot.enums.enums4 cimport *
from py4godot.classes.ScriptLanguageExtension.ScriptLanguageExtension cimport *
from py4godot.classes.Object.Object cimport *
cimport py4godot.script_extension.PyScriptExtension as py_extension
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
    ""

    cdef StringName class_name = c_string_to_string_name("PyLanguage")

    class_.set_godot_owner(gdnative_interface.classdb_construct_object(class_name.godot_owner))
    gdnative_interface.object_set_instance(class_.get_godot_owner(),class_name.godot_owner , <void*>class_)

    Py_INCREF(class_)
    class_._init_values()
    return class_

  cdef void _init_values(self):
    self.language_name = "Python"
    self.extension = "py"
    self.keywords = {"False", "await", "else", "import", "pass", "None", "break", "except", "in", "raise", "True", "class", "finally", "is", "return"
,"and", "continue", "for", "lambda", "try", "as", "def", "from", "nonlocal", "while", "assert", "del", "global", "not", "with", "async", "elif", "if", "or", "yield"}

  cdef new(self, GDNativeTypePtr res):
    pass
  cdef _get_name(self, GDNativeTypePtr res):
    gdnative_interface.string_new_with_utf8_chars(res, self.language_name)

  cdef _init(self, GDNativeTypePtr res):
    pass

  cdef _get_type(self, GDNativeTypePtr res):
    pass

  cdef _get_extension(self, GDNativeTypePtr res):
    gdnative_interface.string_new_with_utf8_chars(res, self.extension)

  cdef _execute_file(self, String path, GDNativeTypePtr res):
    pass

  cdef _finish(self, GDNativeTypePtr res):
    pass

  cdef _get_reserved_words(self, GDNativeTypePtr res):
    print_warning("get_reserved_words")
    cdef PackedStringArray array = PackedStringArray.new_static(res)
    try:
        array.push_back(c_string_to_string("del"))
        array.push_back(c_string_to_string("nonlocal"))
        array.push_back(c_string_to_string("yield"))
        array.push_back(c_string_to_string("finally"))
        array.push_back(c_string_to_string("for"))
        array.push_back(c_string_to_string("lambda"))
        array.push_back(c_string_to_string("return"))
        array.push_back(c_string_to_string("try"))
        array.push_back(c_string_to_string("assert"))
        array.push_back(c_string_to_string("True"))
        array.push_back(c_string_to_string("and"))
        array.push_back(c_string_to_string("continue"))
        array.push_back(c_string_to_string("in"))
        array.push_back(c_string_to_string("not"))
        array.push_back(c_string_to_string("from"))
        array.push_back(c_string_to_string("False"))
        array.push_back(c_string_to_string("raise"))
        array.push_back(c_string_to_string("while"))
        array.push_back(c_string_to_string("as"))
        array.push_back(c_string_to_string("else"))
        array.push_back(c_string_to_string("or"))
        array.push_back(c_string_to_string("except"))
        array.push_back(c_string_to_string("with"))
        array.push_back(c_string_to_string("pass"))
        array.push_back(c_string_to_string("import"))
        array.push_back(c_string_to_string("async"))
        array.push_back(c_string_to_string("break"))
        array.push_back(c_string_to_string("elif"))
        array.push_back(c_string_to_string("global"))
        array.push_back(c_string_to_string("None"))
        array.push_back(c_string_to_string("if"))
        array.push_back(c_string_to_string("def"))
        array.push_back(c_string_to_string("class"))
        array.push_back(c_string_to_string("is"))
        array.push_back(c_string_to_string("await"))
    except Exception as e:
      print_warning("Exception:", str(e))
  cdef _is_control_flow_keyword(self, String keyword, GDNativeTypePtr res):
    print_warning("is_control_flow_keyword")
    cdef str py_string = (<bytes>gd_string_c_string(gdnative_interface,keyword.godot_owner, keyword.length())).decode("utf-8")
    cdef bint is_in_keywords = py_string in keywords
    print_warning("is_flow_control_keyword:", py_string,"|", is_in_keywords)
    set_gdnative_ptr(<GDNativeTypePtr*>res, <GDNativeTypePtr>is_in_keywords)

  cdef _get_comment_delimiters(self, GDNativeTypePtr res):
    cdef PackedStringArray array = PackedStringArray.new_static(res)
    array.push_back(c_string_to_string("#"))

  cdef _get_string_delimiters(self, GDNativeTypePtr res):
    cdef PackedStringArray array = PackedStringArray.new_static(res)
    array.push_back(c_string_to_string('"'))
    array.push_back(c_string_to_string("'"))
    array.push_back(c_string_to_string("'''"))
    array.push_back(c_string_to_string('"""'))

  cdef _make_template(self, String template, String class_name, String base_class_name,GDNativeTypePtr res):
    cdef py_extension.PyScriptExtension extension_py = py_extension.PyScriptExtension.constructor()
    Py_INCREF(extension_py)
    set_gdnative_ptr(<GDNativeTypePtr*> res, extension_py.godot_owner)

  cdef _get_built_in_templates(self, StringName object, GDNativeTypePtr res):
    pass

  cdef _is_using_templates(self, GDNativeTypePtr res):
    pass

  cdef _validate(self, String script, String path, bool validate_functions, bool validate_errors, bool validate_warnings, bool validate_safe_lines, GDNativeTypePtr res):
    cdef Dictionary res_dictionary = Dictionary.new_static(res)
    cdef GDNativeVariantPtr varptr
    cdef String key = c_string_to_string("valid")
    Py_INCREF(key)
    cdef GDNativeVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDNativeVariantType.GDNATIVE_VARIANT_TYPE_STRING)
    print_warning("after_get_constructor")
    varptr = create_variant(gdnative_interface)
    constructor_func(varptr,key.godot_owner)

    cdef uint8_t valid = 1
    cdef GDNativeVariantPtr value_var = gdnative_interface.dictionary_operator_index(res_dictionary.godot_owner, varptr)
    #gdnative_interface.variant_new_nil(&value_var);
    cdef GDNativeVariantFromTypeConstructorFunc constructor_func_valid = gdnative_interface.get_variant_from_type_constructor(GDNativeVariantType.GDNATIVE_VARIANT_TYPE_BOOL);

    try:
        print_warning(gdnative_interface.variant_get_type(value_var))
        print_warning("Before creating bool variant")
        constructor_func_valid(value_var, &valid)
        print_warning("After creating bool variant")
        print_warning(gdnative_interface.variant_get_type(value_var))
        #create_variant_bool(gdnative_interface, &value_var, valid)
    except Exception as e:
        print_warning("Error:", str(e))
    print_warning("after_dictionary")
    #set_gdnative_ptr(<GDNativeTypePtr*> res, <GDNativeTypePtr>1)

  cdef _validate_path(self, String path, GDNativeTypePtr res):
    res = <GDNativeTypePtr>1

  cdef _create_script(self, GDNativeTypePtr res):
    print_warning("------------create_script-start---------")
    cdef py_extension.PyScriptExtension extension = py_extension.PyScriptExtension.constructor()
    cdef StringName class_name = c_string_to_string_name("PyScriptExtension")
    try:
        res = extension.godot_owner
        Py_INCREF(extension)
    except Exception as e:
        print_warning(str(e))
    print_warning("------------create_script-end---------")

  cdef _has_named_classes(self, GDNativeTypePtr res):
    res = <GDNativeTypePtr>0

  cdef _supports_builtin_mode(self, GDNativeTypePtr res):
    pass

  cdef _supports_documentation(self, GDNativeTypePtr res):
    pass

  cdef _can_inherit_from_file(self, GDNativeTypePtr res):
    pass

  cdef _find_function(self, String class_name, String function_name, GDNativeTypePtr res):
    pass

  cdef _make_function(self, String class_name, String function_name, PackedStringArray function_args, GDNativeTypePtr res):
    pass

  cdef _open_in_external_editor(self, Script script, int line, int column, GDNativeTypePtr res):
    pass

  cdef _overrides_external_editor(self, GDNativeTypePtr res):
    pass

  cdef _complete_code(self, String code, String path, Object owner, GDNativeTypePtr res):
    print_warning("complete_code")
    pass

  cdef _lookup_code(self, String code, String symbol, String path, Object owner, GDNativeTypePtr res):
    pass

  cdef _auto_indent_code(self, String code, int from_line, int to_line, GDNativeTypePtr res):
    pass

  cdef _add_global_constant(self, StringName name, Variant value, GDNativeTypePtr res):
    pass

  cdef _add_named_global_constant(self, StringName name, Variant value, GDNativeTypePtr res):
    pass

  cdef _remove_named_global_constant(self, StringName name, GDNativeTypePtr res):
    pass

  cdef _thread_enter(self, GDNativeTypePtr res):
    pass

  cdef _thread_exit(self, GDNativeTypePtr res):
    pass

  cdef _debug_get_error(self, GDNativeTypePtr res):
    pass

  cdef _debug_get_stack_level_count(self, GDNativeTypePtr res):
    pass

  cdef _debug_get_stack_level_line(self, int level, GDNativeTypePtr res):
    pass

  cdef _debug_get_stack_level_function(self, int level, GDNativeTypePtr res):
    pass

  cdef _debug_get_stack_level_locals(self, int level, int max_subitems, int max_depth, GDNativeTypePtr res):
    pass

  cdef _debug_get_stack_level_members(self, int level, int max_subitems, int max_depth, GDNativeTypePtr res):
    pass

  cdef _debug_get_globals(self, int max_subitems, int max_depth, GDNativeTypePtr res):
    pass

  cdef _debug_parse_stack_level_expression(self, int level, String expression, int max_subitems, int max_depth, GDNativeTypePtr res):
    pass

  cdef _debug_get_current_stack_info(self, GDNativeTypePtr res):
    pass

  cdef _reload_all_scripts(self, GDNativeTypePtr res):
    pass

  cdef _reload_tool_script(self, Script script, bool soft_reload, GDNativeTypePtr res):
    pass

  cdef _get_recognized_extensions(self, GDNativeTypePtr res):
    cdef PackedStringArray extensions = PackedStringArray.new_static(res)
    extensions.append(c_string_to_string("py"))
    extensions.append(c_string_to_string("pyw"))
    extensions.append(c_string_to_string("pyi"))

  cdef _get_public_functions(self, GDNativeTypePtr res):
    pass

  cdef _get_public_constants(self, GDNativeTypePtr res):
    pass

  cdef _get_public_annotations(self, GDNativeTypePtr res):
    pass

  cdef _profiling_start(self, GDNativeTypePtr res):
    pass

  cdef _profiling_stop(self, GDNativeTypePtr res):
    pass

  cdef _refcount_incremented_instance_binding(self, Object object, GDNativeTypePtr res):
    pass

  cdef _refcount_decremented_instance_binding(self, Object object, GDNativeTypePtr res):
    pass

  cdef _frame(self, GDNativeTypePtr res):
    pass

  cdef _handles_global_class_type(self, String type, GDNativeTypePtr res):
    pass

  cdef _get_global_class_name(self, String path, GDNativeTypePtr res):
    cdef char* class_name = "PythonClass"
    gdnative_interface.string_new_with_utf8_chars(res, class_name)

  cdef _free_instance_binding_data(self, Object o, GDNativeTypePtr res):
    pass
  cdef _alloc_instance_binding_data(self, Object o, GDNativeTypePtr res):
    pass

  cdef _debug_get_stack_level_instance(self,int val, GDNativeTypePtr res):
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
    ""
    return ret != 0


cdef GDNativeObjectPtr create_instance(void* userdata):
    ""
    #TODO: This makes no sense
    cdef StringName class_name = c_string_to_string_name("ScriptLanguageExtension")
    cdef GDNativeObjectPtr gdnative_object = gdnative_interface.classdb_construct_object(class_name.godot_owner)
    return gdnative_object

cdef void free_instance(void *p_userdata, GDExtensionClassInstancePtr p_instance):
    ""

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

    cdef String class_name_string = c_string_to_string("PyLanguage")
    cdef StringName class_name = StringName.new2(class_name_string)


    cdef String parent_class_name_string = c_string_to_string("ScriptLanguageExtension")
    cdef StringName parent_class_name = StringName.new2(parent_class_name_string)

    gdnative_interface.classdb_register_extension_class(get_library(), class_name.godot_owner, parent_class_name.godot_owner, &creation_info)


cdef void* call_virtual_func__get_name(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._get_name(r_ret)

cdef StringName func_name__get_name = c_string_to_string_name("_get_name")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_name_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_name


cdef void* call_virtual_func__init(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._init(r_ret)

cdef StringName func_name__init = c_string_to_string_name("_init")
cdef GDNativeExtensionClassCallVirtual call_virtual__init_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__init


cdef void* call_virtual_func__get_type(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._get_type(r_ret)

cdef StringName func_name__get_type = c_string_to_string_name("_get_type")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_type_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_type


cdef void* call_virtual_func__get_extension(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._get_extension(r_ret)

cdef StringName func_name__get_extension = c_string_to_string_name("_get_extension")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_extension_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_extension


cdef void* call_virtual_func__execute_file(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))


    pylanguage._execute_file(args0,r_ret)

cdef StringName func_name__execute_file = c_string_to_string_name("_execute_file")
cdef GDNativeExtensionClassCallVirtual call_virtual__execute_file_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__execute_file


cdef void* call_virtual_func__finish(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._finish(r_ret)

cdef StringName func_name__finish = c_string_to_string_name("_finish")
cdef GDNativeExtensionClassCallVirtual call_virtual__finish_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__finish


cdef void* call_virtual_func__get_reserved_words(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._get_reserved_words(r_ret)

cdef StringName func_name__get_reserved_words = c_string_to_string_name("_get_reserved_words")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_reserved_words_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_reserved_words


cdef void* call_virtual_func__is_control_flow_keyword(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))


    pylanguage._is_control_flow_keyword(args0,r_ret)

cdef StringName func_name__is_control_flow_keyword = c_string_to_string_name("_is_control_flow_keyword")
cdef GDNativeExtensionClassCallVirtual call_virtual__is_control_flow_keyword_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__is_control_flow_keyword


cdef void* call_virtual_func__get_comment_delimiters(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._get_comment_delimiters(r_ret)

cdef StringName func_name__get_comment_delimiters = c_string_to_string_name("_get_comment_delimiters")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_comment_delimiters_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_comment_delimiters


cdef void* call_virtual_func__get_string_delimiters(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._get_string_delimiters(r_ret)

cdef StringName func_name__get_string_delimiters = c_string_to_string_name("_get_string_delimiters")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_string_delimiters_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_string_delimiters


cdef void* call_virtual_func__make_template(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef String args1 = String.new_static(dereference(p_args + 1))
    cdef String args2 = String.new_static(dereference(p_args + 2))


    pylanguage._make_template(args0,args1,args2,r_ret)

cdef StringName func_name__make_template = c_string_to_string_name("_make_template")
cdef GDNativeExtensionClassCallVirtual call_virtual__make_template_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__make_template


cdef void* call_virtual_func__get_built_in_templates(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef StringName args0 = StringName.new_static(dereference(p_args + 0))


    pylanguage._get_built_in_templates(args0,r_ret)

cdef StringName func_name__get_built_in_templates = c_string_to_string_name("_get_built_in_templates")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_built_in_templates_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_built_in_templates


cdef void* call_virtual_func__is_using_templates(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._is_using_templates(r_ret)

cdef StringName func_name__is_using_templates = c_string_to_string_name("_is_using_templates")
cdef GDNativeExtensionClassCallVirtual call_virtual__is_using_templates_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__is_using_templates


cdef void* call_virtual_func__validate(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef String args1 = String.new_static(dereference(p_args + 1))
    cdef bool args2 = <bool>dereference(p_args + 2)
    cdef bool args3 = <bool>dereference(p_args + 3)
    cdef bool args4 = <bool>dereference(p_args + 4)
    cdef bool args5 = <bool>dereference(p_args + 5)


    pylanguage._validate(args0,args1,args2,args3,args4,args5,r_ret)

cdef StringName func_name__validate = c_string_to_string_name("_validate")
cdef GDNativeExtensionClassCallVirtual call_virtual__validate_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__validate


cdef void* call_virtual_func__validate_path(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))


    pylanguage._validate_path(args0,r_ret)

cdef StringName func_name__validate_path = c_string_to_string_name("_validate_path")
cdef GDNativeExtensionClassCallVirtual call_virtual__validate_path_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__validate_path


cdef void* call_virtual_func__create_script(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._create_script(r_ret)

cdef StringName func_name__create_script = c_string_to_string_name("_create_script")
cdef GDNativeExtensionClassCallVirtual call_virtual__create_script_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__create_script


cdef void* call_virtual_func__has_named_classes(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._has_named_classes(r_ret)

cdef StringName func_name__has_named_classes = c_string_to_string_name("_has_named_classes")
cdef GDNativeExtensionClassCallVirtual call_virtual__has_named_classes_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__has_named_classes


cdef void* call_virtual_func__supports_builtin_mode(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._supports_builtin_mode(r_ret)

cdef StringName func_name__supports_builtin_mode = c_string_to_string_name("_supports_builtin_mode")
cdef GDNativeExtensionClassCallVirtual call_virtual__supports_builtin_mode_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__supports_builtin_mode


cdef void* call_virtual_func__supports_documentation(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._supports_documentation(r_ret)

cdef StringName func_name__supports_documentation = c_string_to_string_name("_supports_documentation")
cdef GDNativeExtensionClassCallVirtual call_virtual__supports_documentation_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__supports_documentation


cdef void* call_virtual_func__can_inherit_from_file(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._can_inherit_from_file(r_ret)

cdef StringName func_name__can_inherit_from_file = c_string_to_string_name("_can_inherit_from_file")
cdef GDNativeExtensionClassCallVirtual call_virtual__can_inherit_from_file_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__can_inherit_from_file


cdef void* call_virtual_func__find_function(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef String args1 = String.new_static(dereference(p_args + 1))


    pylanguage._find_function(args0,args1,r_ret)

cdef StringName func_name__find_function = c_string_to_string_name("_find_function")
cdef GDNativeExtensionClassCallVirtual call_virtual__find_function_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__find_function


cdef void* call_virtual_func__make_function(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef String args1 = String.new_static(dereference(p_args + 1))
    cdef PackedStringArray args2 = PackedStringArray.new_static(dereference(p_args + 2))


    pylanguage._make_function(args0,args1,args2,r_ret)

cdef StringName func_name__make_function = c_string_to_string_name("_make_function")
cdef GDNativeExtensionClassCallVirtual call_virtual__make_function_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__make_function


cdef void* call_virtual_func__open_in_external_editor(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef Script args0 = <Script>dereference(p_args + 0)
    cdef int args1 = <int>dereference(p_args + 1)
    cdef int args2 = <int>dereference(p_args + 2)


    pylanguage._open_in_external_editor(args0,args1,args2,r_ret)

cdef StringName func_name__open_in_external_editor = c_string_to_string_name("_open_in_external_editor")
cdef GDNativeExtensionClassCallVirtual call_virtual__open_in_external_editor_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__open_in_external_editor


cdef void* call_virtual_func__overrides_external_editor(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._overrides_external_editor(r_ret)

cdef StringName func_name__overrides_external_editor = c_string_to_string_name("_overrides_external_editor")
cdef GDNativeExtensionClassCallVirtual call_virtual__overrides_external_editor_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__overrides_external_editor


cdef void* call_virtual_func__complete_code(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef String args1 = String.new_static(dereference(p_args + 1))
    cdef Object args2 = Object.new_static(dereference(p_args + 2))


    pylanguage._complete_code(args0,args1,args2,r_ret)

cdef StringName func_name__complete_code = c_string_to_string_name("_complete_code")
cdef GDNativeExtensionClassCallVirtual call_virtual__complete_code_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__complete_code


cdef void* call_virtual_func__lookup_code(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef String args1 = String.new_static(dereference(p_args + 1))
    cdef String args2 = String.new_static(dereference(p_args + 2))
    cdef Object args3 = Object.new_static(dereference(p_args + 3))


    pylanguage._lookup_code(args0,args1,args2,args3,r_ret)

cdef StringName func_name__lookup_code = c_string_to_string_name("_lookup_code")
cdef GDNativeExtensionClassCallVirtual call_virtual__lookup_code_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__lookup_code


cdef void* call_virtual_func__auto_indent_code(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef int args1 = <int>dereference(p_args + 1)
    cdef int args2 = <int>dereference(p_args + 2)


    pylanguage._auto_indent_code(args0,args1,args2,r_ret)

cdef StringName func_name__auto_indent_code = c_string_to_string_name("_auto_indent_code")
cdef GDNativeExtensionClassCallVirtual call_virtual__auto_indent_code_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__auto_indent_code


cdef void* call_virtual_func__add_global_constant(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef StringName args0 = StringName.new_static(dereference(p_args + 0))
    cdef Variant args1 = Variant.new_static(dereference(p_args + 1))


    pylanguage._add_global_constant(args0,args1,r_ret)

cdef StringName func_name__add_global_constant = c_string_to_string_name("_add_global_constant")
cdef GDNativeExtensionClassCallVirtual call_virtual__add_global_constant_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__add_global_constant


cdef void* call_virtual_func__add_named_global_constant(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef StringName args0 = StringName.new_static(dereference(p_args + 0))
    cdef Variant args1 = Variant.new_static(dereference(p_args + 1))


    pylanguage._add_named_global_constant(args0,args1,r_ret)

cdef StringName func_name__add_named_global_constant = c_string_to_string_name("_add_named_global_constant")
cdef GDNativeExtensionClassCallVirtual call_virtual__add_named_global_constant_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__add_named_global_constant


cdef void* call_virtual_func__remove_named_global_constant(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef StringName args0 = StringName.new_static(dereference(p_args + 0))


    pylanguage._remove_named_global_constant(args0,r_ret)

cdef StringName func_name__remove_named_global_constant = c_string_to_string_name("_remove_named_global_constant")
cdef GDNativeExtensionClassCallVirtual call_virtual__remove_named_global_constant_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__remove_named_global_constant


cdef void* call_virtual_func__thread_enter(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._thread_enter(r_ret)

cdef StringName func_name__thread_enter = c_string_to_string_name("_thread_enter")
cdef GDNativeExtensionClassCallVirtual call_virtual__thread_enter_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__thread_enter


cdef void* call_virtual_func__thread_exit(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._thread_exit(r_ret)

cdef StringName func_name__thread_exit = c_string_to_string_name("_thread_exit")
cdef GDNativeExtensionClassCallVirtual call_virtual__thread_exit_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__thread_exit


cdef void* call_virtual_func__debug_get_error(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._debug_get_error(r_ret)

cdef StringName func_name__debug_get_error = c_string_to_string_name("_debug_get_error")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_error_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_error


cdef void* call_virtual_func__debug_get_stack_level_count(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._debug_get_stack_level_count(r_ret)

cdef StringName func_name__debug_get_stack_level_count = c_string_to_string_name("_debug_get_stack_level_count")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_stack_level_count_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_stack_level_count


cdef void* call_virtual_func__debug_get_stack_level_line(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef int args0 = <int>dereference(p_args + 0)


    pylanguage._debug_get_stack_level_line(args0,r_ret)

cdef StringName func_name__debug_get_stack_level_line = c_string_to_string_name("_debug_get_stack_level_line")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_stack_level_line_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_stack_level_line


cdef void* call_virtual_func__debug_get_stack_level_function(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef int args0 = <int>dereference(p_args + 0)


    pylanguage._debug_get_stack_level_function(args0,r_ret)

cdef StringName func_name__debug_get_stack_level_function = c_string_to_string_name("_debug_get_stack_level_function")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_stack_level_function_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_stack_level_function


cdef void* call_virtual_func__debug_get_stack_level_locals(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef int args0 = <int>dereference(p_args + 0)
    cdef int args1 = <int>dereference(p_args + 1)
    cdef int args2 = <int>dereference(p_args + 2)


    pylanguage._debug_get_stack_level_locals(args0,args1,args2,r_ret)

cdef StringName func_name__debug_get_stack_level_locals = c_string_to_string_name("_debug_get_stack_level_locals")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_stack_level_locals_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_stack_level_locals


cdef void* call_virtual_func__debug_get_stack_level_members(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef int args0 = <int>dereference(p_args + 0)
    cdef int args1 = <int>dereference(p_args + 1)
    cdef int args2 = <int>dereference(p_args + 2)


    pylanguage._debug_get_stack_level_members(args0,args1,args2,r_ret)

cdef StringName func_name__debug_get_stack_level_members = c_string_to_string_name("_debug_get_stack_level_members")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_stack_level_members_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_stack_level_members


cdef void* call_virtual_func__debug_get_stack_level_instance(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef int args0 = <int>dereference(p_args + 0)

    cdef object obj = <object>pylanguage._debug_get_stack_level_instance(args0,r_ret)
    cdef void* ret_val = <void*>obj

cdef StringName func_name__debug_get_stack_level_instance = c_string_to_string_name("_debug_get_stack_level_instance")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_stack_level_instance_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_stack_level_instance


cdef void* call_virtual_func__debug_get_globals(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef int args0 = <int>dereference(p_args + 0)
    cdef int args1 = <int>dereference(p_args + 1)


    pylanguage._debug_get_globals(args0,args1,r_ret)

cdef StringName func_name__debug_get_globals = c_string_to_string_name("_debug_get_globals")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_globals_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_globals


cdef void* call_virtual_func__debug_parse_stack_level_expression(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef int args0 = <int>dereference(p_args + 0)
    cdef String args1 = String.new_static(dereference(p_args + 1))
    cdef int args2 = <int>dereference(p_args + 2)
    cdef int args3 = <int>dereference(p_args + 3)


    pylanguage._debug_parse_stack_level_expression(args0,args1,args2,args3,r_ret)

cdef StringName func_name__debug_parse_stack_level_expression = c_string_to_string_name("_debug_parse_stack_level_expression")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_parse_stack_level_expression_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_parse_stack_level_expression


cdef void* call_virtual_func__debug_get_current_stack_info(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._debug_get_current_stack_info(r_ret)

cdef StringName func_name__debug_get_current_stack_info = c_string_to_string_name("_debug_get_current_stack_info")
cdef GDNativeExtensionClassCallVirtual call_virtual__debug_get_current_stack_info_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__debug_get_current_stack_info


cdef void* call_virtual_func__reload_all_scripts(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._reload_all_scripts(r_ret)

cdef StringName func_name__reload_all_scripts = c_string_to_string_name("_reload_all_scripts")
cdef GDNativeExtensionClassCallVirtual call_virtual__reload_all_scripts_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__reload_all_scripts


cdef void* call_virtual_func__reload_tool_script(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef Script args0 = <Script>dereference(p_args + 0)
    cdef bool args1 = <bool>dereference(p_args + 1)


    pylanguage._reload_tool_script(args0,args1,r_ret)

cdef StringName func_name__reload_tool_script = c_string_to_string_name("_reload_tool_script")
cdef GDNativeExtensionClassCallVirtual call_virtual__reload_tool_script_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__reload_tool_script


cdef void* call_virtual_func__get_recognized_extensions(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._get_recognized_extensions(r_ret)

cdef StringName func_name__get_recognized_extensions = c_string_to_string_name("_get_recognized_extensions")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_recognized_extensions_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_recognized_extensions


cdef void* call_virtual_func__get_public_functions(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._get_public_functions(r_ret)

cdef StringName func_name__get_public_functions = c_string_to_string_name("_get_public_functions")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_public_functions_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_public_functions


cdef void* call_virtual_func__get_public_constants(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._get_public_constants(r_ret)

cdef StringName func_name__get_public_constants = c_string_to_string_name("_get_public_constants")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_public_constants_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_public_constants


cdef void* call_virtual_func__get_public_annotations(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._get_public_annotations(r_ret)

cdef StringName func_name__get_public_annotations = c_string_to_string_name("_get_public_annotations")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_public_annotations_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_public_annotations


cdef void* call_virtual_func__profiling_start(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._profiling_start(r_ret)

cdef StringName func_name__profiling_start = c_string_to_string_name("_profiling_start")
cdef GDNativeExtensionClassCallVirtual call_virtual__profiling_start_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__profiling_start


cdef void* call_virtual_func__profiling_stop(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._profiling_stop(r_ret)

cdef StringName func_name__profiling_stop = c_string_to_string_name("_profiling_stop")
cdef GDNativeExtensionClassCallVirtual call_virtual__profiling_stop_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__profiling_stop


cdef void* call_virtual_func__alloc_instance_binding_data(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef Object args0 = Object.new_static(dereference(p_args + 0))

    cdef object obj = <object>pylanguage._alloc_instance_binding_data(args0,r_ret)
    cdef void* ret_val = <void*>obj

cdef StringName func_name__alloc_instance_binding_data = c_string_to_string_name("_alloc_instance_binding_data")
cdef GDNativeExtensionClassCallVirtual call_virtual__alloc_instance_binding_data_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__alloc_instance_binding_data


cdef void* call_virtual_func__free_instance_binding_data(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef object args0 = <object>dereference(p_args + 0)


    pylanguage._free_instance_binding_data(args0,r_ret)

cdef StringName func_name__free_instance_binding_data = c_string_to_string_name("_free_instance_binding_data")
cdef GDNativeExtensionClassCallVirtual call_virtual__free_instance_binding_data_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__free_instance_binding_data


cdef void* call_virtual_func__refcount_incremented_instance_binding(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef Object args0 = Object.new_static(dereference(p_args + 0))


    pylanguage._refcount_incremented_instance_binding(args0,r_ret)

cdef StringName func_name__refcount_incremented_instance_binding = c_string_to_string_name("_refcount_incremented_instance_binding")
cdef GDNativeExtensionClassCallVirtual call_virtual__refcount_incremented_instance_binding_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__refcount_incremented_instance_binding


cdef void* call_virtual_func__refcount_decremented_instance_binding(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef Object args0 = Object.new_static(dereference(p_args + 0))


    pylanguage._refcount_decremented_instance_binding(args0,r_ret)

cdef StringName func_name__refcount_decremented_instance_binding = c_string_to_string_name("_refcount_decremented_instance_binding")
cdef GDNativeExtensionClassCallVirtual call_virtual__refcount_decremented_instance_binding_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__refcount_decremented_instance_binding


cdef void* call_virtual_func__frame(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance


    pylanguage._frame(r_ret)

cdef StringName func_name__frame = c_string_to_string_name("_frame")
cdef GDNativeExtensionClassCallVirtual call_virtual__frame_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__frame


cdef void* call_virtual_func__handles_global_class_type(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))


    pylanguage._handles_global_class_type(args0,r_ret)

cdef StringName func_name__handles_global_class_type = c_string_to_string_name("_handles_global_class_type")
cdef GDNativeExtensionClassCallVirtual call_virtual__handles_global_class_type_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__handles_global_class_type


cdef void* call_virtual_func__get_global_class_name(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))


    pylanguage._get_global_class_name(args0,r_ret)

cdef StringName func_name__get_global_class_name = c_string_to_string_name("_get_global_class_name")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_global_class_name_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_global_class_name

cdef GDNativeExtensionClassCallVirtual get_virtual_func(void *p_userdata, GDNativeConstStringNamePtr p_name) with gil:
    gdnative_interface = get_interface()
    cdef StringName name = StringName()
    name.godot_owner = p_name

    if (string_names_equal(func_name__get_name, name)):
        ""
        return call_virtual__get_name_def

    elif (string_names_equal(func_name__init, name)):
        ""
        return call_virtual__init_def

    elif (string_names_equal(func_name__get_type, name)):
        ""
        return call_virtual__get_type_def

    elif (string_names_equal(func_name__get_extension, name)):
        ""
        return call_virtual__get_extension_def

    elif (string_names_equal(func_name__execute_file, name)):
        ""
        return call_virtual__execute_file_def

    elif (string_names_equal(func_name__finish, name)):
        ""
        return call_virtual__finish_def

    elif (string_names_equal(func_name__get_reserved_words, name)):
        ""
        return call_virtual__get_reserved_words_def

    elif (string_names_equal(func_name__is_control_flow_keyword, name)):
        ""
        return call_virtual__is_control_flow_keyword_def

    elif (string_names_equal(func_name__get_comment_delimiters, name)):
        ""
        return call_virtual__get_comment_delimiters_def

    elif (string_names_equal(func_name__get_string_delimiters, name)):
        ""
        return call_virtual__get_string_delimiters_def

    elif (string_names_equal(func_name__make_template, name)):
        ""
        return call_virtual__make_template_def

    elif (string_names_equal(func_name__get_built_in_templates, name)):
        ""
        return call_virtual__get_built_in_templates_def

    elif (string_names_equal(func_name__is_using_templates, name)):
        ""
        return call_virtual__is_using_templates_def

    elif (string_names_equal(func_name__validate, name)):
        ""
        return call_virtual__validate_def

    elif (string_names_equal(func_name__validate_path, name)):
        ""
        return call_virtual__validate_path_def

    elif (string_names_equal(func_name__create_script, name)):
        ""
        return call_virtual__create_script_def

    elif (string_names_equal(func_name__has_named_classes, name)):
        ""
        return call_virtual__has_named_classes_def

    elif (string_names_equal(func_name__supports_builtin_mode, name)):
        ""
        return call_virtual__supports_builtin_mode_def

    elif (string_names_equal(func_name__supports_documentation, name)):
        ""
        return call_virtual__supports_documentation_def

    elif (string_names_equal(func_name__can_inherit_from_file, name)):
        ""
        return call_virtual__can_inherit_from_file_def

    elif (string_names_equal(func_name__find_function, name)):
        ""
        return call_virtual__find_function_def

    elif (string_names_equal(func_name__make_function, name)):
        ""
        return call_virtual__make_function_def

    elif (string_names_equal(func_name__open_in_external_editor, name)):
        ""
        return call_virtual__open_in_external_editor_def

    elif (string_names_equal(func_name__overrides_external_editor, name)):
        ""
        return call_virtual__overrides_external_editor_def

    elif (string_names_equal(func_name__complete_code, name)):
        ""
        return call_virtual__complete_code_def

    elif (string_names_equal(func_name__lookup_code, name)):
        ""
        return call_virtual__lookup_code_def

    elif (string_names_equal(func_name__auto_indent_code, name)):
        ""
        return call_virtual__auto_indent_code_def

    elif (string_names_equal(func_name__add_global_constant, name)):
        ""
        return call_virtual__add_global_constant_def

    elif (string_names_equal(func_name__add_named_global_constant, name)):
        ""
        return call_virtual__add_named_global_constant_def

    elif (string_names_equal(func_name__remove_named_global_constant, name)):
        ""
        return call_virtual__remove_named_global_constant_def

    elif (string_names_equal(func_name__thread_enter, name)):
        ""
        return call_virtual__thread_enter_def

    elif (string_names_equal(func_name__thread_exit, name)):
        ""
        return call_virtual__thread_exit_def

    elif (string_names_equal(func_name__debug_get_error, name)):
        ""
        return call_virtual__debug_get_error_def

    elif (string_names_equal(func_name__debug_get_stack_level_count, name)):
        ""
        return call_virtual__debug_get_stack_level_count_def

    elif (string_names_equal(func_name__debug_get_stack_level_line, name)):
        ""
        return call_virtual__debug_get_stack_level_line_def

    elif (string_names_equal(func_name__debug_get_stack_level_function, name)):
        ""
        return call_virtual__debug_get_stack_level_function_def

    elif (string_names_equal(func_name__debug_get_stack_level_locals, name)):
        ""
        return call_virtual__debug_get_stack_level_locals_def

    elif (string_names_equal(func_name__debug_get_stack_level_members, name)):
        ""
        return call_virtual__debug_get_stack_level_members_def

    elif (string_names_equal(func_name__debug_get_stack_level_instance, name)):
        ""
        return call_virtual__debug_get_stack_level_instance_def

    elif (string_names_equal(func_name__debug_get_globals, name)):
        ""
        return call_virtual__debug_get_globals_def

    elif (string_names_equal(func_name__debug_parse_stack_level_expression, name)):
        ""
        return call_virtual__debug_parse_stack_level_expression_def

    elif (string_names_equal(func_name__debug_get_current_stack_info, name)):
        ""
        return call_virtual__debug_get_current_stack_info_def

    elif (string_names_equal(func_name__reload_all_scripts, name)):
        ""
        return call_virtual__reload_all_scripts_def

    elif (string_names_equal(func_name__reload_tool_script, name)):
        ""
        return call_virtual__reload_tool_script_def

    elif (string_names_equal(func_name__get_recognized_extensions, name)):
        ""
        return call_virtual__get_recognized_extensions_def

    elif (string_names_equal(func_name__get_public_functions, name)):
        ""
        return call_virtual__get_public_functions_def

    elif (string_names_equal(func_name__get_public_constants, name)):
        ""
        return call_virtual__get_public_constants_def

    elif (string_names_equal(func_name__get_public_annotations, name)):
        ""
        return call_virtual__get_public_annotations_def

    elif (string_names_equal(func_name__profiling_start, name)):
        ""
        return call_virtual__profiling_start_def

    elif (string_names_equal(func_name__profiling_stop, name)):
        ""
        return call_virtual__profiling_stop_def

    elif (string_names_equal(func_name__alloc_instance_binding_data, name)):
        ""
        return call_virtual__alloc_instance_binding_data_def

    elif (string_names_equal(func_name__free_instance_binding_data, name)):
        ""
        return call_virtual__free_instance_binding_data_def

    elif (string_names_equal(func_name__refcount_incremented_instance_binding, name)):
        ""
        return call_virtual__refcount_incremented_instance_binding_def

    elif (string_names_equal(func_name__refcount_decremented_instance_binding, name)):
        ""
        return call_virtual__refcount_decremented_instance_binding_def

    elif (string_names_equal(func_name__frame, name)):
        ""
        return call_virtual__frame_def

    elif (string_names_equal(func_name__handles_global_class_type, name)):
        ""
        return call_virtual__handles_global_class_type_def

    elif (string_names_equal(func_name__get_global_class_name, name)):
        ""
        return call_virtual__get_global_class_name_def
