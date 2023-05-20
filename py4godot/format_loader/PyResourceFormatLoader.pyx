from py4godot_core_holder.core_holder cimport *
from py4godot.utils.print_tools import *
from py4godot.utils.utils cimport *
from py4godot.enums.enums4 cimport *
from py4godot.classes.ResourceFormatLoader.ResourceFormatLoader cimport *
from py4godot.script_extension.PyScriptExtension cimport *
from py4godot.classes.generated4_core cimport *
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from cython.operator cimport dereference
from py4godot.classes.FileAccess.FileAccess cimport *

gdnative_interface = get_interface()
cdef GDExtensionClassCreationInfo creation_info
cdef class PyResourceFormatLoader(ResourceFormatLoader):
  @staticmethod
  def constructor():
    cdef PyResourceFormatLoader class_ = PyResourceFormatLoader()

    print_error("-------------construct PyResourceFormatLoader--------------------")
    cdef StringName class_name = c_string_to_string_name("PyResourceFormatLoader")

    class_.set_godot_owner(gdnative_interface.classdb_construct_object(class_name.godot_owner))
    Py_INCREF(class_)
    gdnative_interface.object_set_instance(class_.get_godot_owner(),class_name.godot_owner , <void*>class_)

    class_._init_values()
    return class_

  cdef void _init_values(self):
    self.extensions = list()
    self.py = c_string_to_string("py")
    Py_INCREF(py)
    cdef String pyw = c_string_to_string("pyw")
    Py_INCREF("pyw")
    cdef String pyi = c_string_to_string("pyi")
    Py_INCREF(pyi)
    self.extensions.append(py)
    self.extensions.append(pyw)
    self.extensions.append(pyi)

  cdef void set_language(self, ScriptLanguageExtension language):
    print_error("set_lang")
    self.language = language
    print_error("set_lang successful")
  cdef _get_recognized_extensions(self, GDExtensionTypePtr res) with gil:
    print_error("get_recognized_extensions_called")
    cdef PackedStringArray gdextensions = PackedStringArray.new_static(res)
    gdextensions.push_back(self.py)

  cdef _recognize_path(self, String path, StringName type, GDExtensionTypePtr res):
    set_gdnative_ptr(<GDExtensionTypePtr*> res, <GDExtensionObjectPtr>1)


  cdef _handles_type(self, StringName type, GDExtensionTypePtr res):
    set_gdnative_ptr(<GDExtensionTypePtr*> res, <GDExtensionObjectPtr>1)


  cdef _get_resource_type(self, String path, GDExtensionTypePtr res):
    _interface.string_new_with_utf8_chars(res, "PyScriptExtension")


  cdef _get_resource_uid(self, String path, GDExtensionTypePtr res):
    pass


  cdef _get_dependencies(self, String path, bool add_types, GDExtensionTypePtr res):
    pass


  cdef _rename_dependencies(self, String path, Dictionary renames, GDExtensionTypePtr res):
    pass


  cdef _exists(self, String path, GDExtensionTypePtr res):
    pass


  cdef _get_classes_used(self, String path, GDExtensionTypePtr res):
    pass


  cdef _load(self, String path, String original_path, bool use_sub_threads, int cache_mode, GDExtensionTypePtr res):
    print_error("---------------------load_loader-----------------")
    cdef PyScriptExtension script = PyScriptExtension.constructor()
    cdef GDExtensionVariantFromTypeConstructorFunc constructor_func
    cdef Variant var
    cdef int float_val = 4
    cdef FileAccess file
    cdef String source_code
    cdef str py_string
    cdef String test = c_string_to_string("test_code")
    try:
        file = FileAccess.open(original_path, FileAccess__ModeFlags.FileAccess__READ);
        if(not file.godot_owner):
            return
        source_code = file.get_as_text(False)
        gdnative_interface.object_destroy(file.godot_owner)

        print_error("start_try"+str(self.language))
        script.set_language(<ScriptLanguage>self.language)
        print_error("length:", source_code.length())
        script.set_path(original_path)
        #TODO: Use real string length
        py_string = gd_string_to_py_string(source_code)
        print_error("--------source_code:", py_string)
        script.set_py_source_code(py_string)

        #script.source_code = c_string_to_string("test_code")
        constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_OBJECT)
        print_error("after_get_constructor")
        constructor_func(res,<GDExtensionTypePtr>&script.godot_owner)
        print_error("after_calling_constructor")
    except Exception as e:
        print_error(str(e))
    print_error("_________________end_load___________________")

cdef GDExtensionPtrOperatorEvaluator operator_equal_string_name = gdnative_interface.variant_get_ptr_operator_evaluator(
GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_EQUAL,
 GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_STRING_NAME,
 GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_STRING_NAME);

cdef bool string_names_equal(StringName left, StringName right):
    cdef int8_t ret
    operator_equal_string_name(left.godot_owner, right.godot_owner, &ret)
    ""
    return ret != 0


cdef GDExtensionObjectPtr create_instance(void* userdata) with gil:
    ""
    #TODO: This makes no sense
    print_error("------------create_script-create_instance---------")
    cdef StringName class_name = c_string_to_string_name("ResourceFormatLoader")
    cdef GDExtensionObjectPtr gdnative_object = gdnative_interface.classdb_construct_object(class_name.godot_owner)
    print_error(gdnative_object == NULL)
    return gdnative_object
    #return NULL

cdef void free_instance(void *p_userdata, GDExtensionClassInstancePtr p_instance):
    pass
    #print_error("free_instance")

cdef void register_class_py_format_loader() with gil:
    print_error("register PyFormatLoader")
    """
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
    """

    creation_info.create_instance_func = create_instance
    creation_info.free_instance_func = free_instance
    creation_info.class_userdata = <PyObject *>PyResourceFormatLoader
    creation_info.get_virtual_func = get_virtual_func

    cdef String class_name_string = String.new0()
    _interface.string_new_with_utf8_chars(class_name_string.godot_owner, "PyResourceFormatLoader")
    cdef StringName class_name = StringName.new2(class_name_string)


    cdef String parent_class_name_string = String.new0()
    _interface.string_new_with_utf8_chars(parent_class_name_string.godot_owner, "ResourceFormatLoader")
    cdef StringName parent_class_name = StringName.new2(parent_class_name_string)
    _interface.classdb_register_extension_class(get_library(), class_name.godot_owner, parent_class_name.godot_owner, &creation_info)
    print_error("-----------registered PyResourceFormatLoader----------------")

cdef void* call_virtual_func__get_recognized_extensions(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance


    pylanguage._get_recognized_extensions(r_ret)

cdef StringName func_name__get_recognized_extensions = c_string_to_string_name("_get_recognized_extensions")
cdef GDExtensionClassCallVirtual call_virtual__get_recognized_extensions_def = <GDExtensionClassCallVirtual>call_virtual_func__get_recognized_extensions


cdef void* call_virtual_func__recognize_path(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef StringName args1 = StringName.new_static(dereference(p_args + 1))


    pylanguage._recognize_path(args0,args1,r_ret)

cdef StringName func_name__recognize_path = c_string_to_string_name("_recognize_path")
cdef GDExtensionClassCallVirtual call_virtual__recognize_path_def = <GDExtensionClassCallVirtual>call_virtual_func__recognize_path


cdef void* call_virtual_func__handles_type(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef StringName args0 = StringName.new_static(dereference(p_args + 0))


    pylanguage._handles_type(args0,r_ret)

cdef StringName func_name__handles_type = c_string_to_string_name("_handles_type")
cdef GDExtensionClassCallVirtual call_virtual__handles_type_def = <GDExtensionClassCallVirtual>call_virtual_func__handles_type


cdef void* call_virtual_func__get_resource_type(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))


    pylanguage._get_resource_type(args0,r_ret)

cdef StringName func_name__get_resource_type = c_string_to_string_name("_get_resource_type")
cdef GDExtensionClassCallVirtual call_virtual__get_resource_type_def = <GDExtensionClassCallVirtual>call_virtual_func__get_resource_type


cdef void* call_virtual_func__get_resource_uid(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))


    pylanguage._get_resource_uid(args0,r_ret)

cdef StringName func_name__get_resource_uid = c_string_to_string_name("_get_resource_uid")
cdef GDExtensionClassCallVirtual call_virtual__get_resource_uid_def = <GDExtensionClassCallVirtual>call_virtual_func__get_resource_uid


cdef void* call_virtual_func__get_dependencies(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef bool args1 = <bool>dereference(p_args + 1)


    pylanguage._get_dependencies(args0,args1,r_ret)

cdef StringName func_name__get_dependencies = c_string_to_string_name("_get_dependencies")
cdef GDExtensionClassCallVirtual call_virtual__get_dependencies_def = <GDExtensionClassCallVirtual>call_virtual_func__get_dependencies


cdef void* call_virtual_func__rename_dependencies(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef Dictionary args1 = Dictionary.new_static(dereference(p_args + 1))


    pylanguage._rename_dependencies(args0,args1,r_ret)

cdef StringName func_name__rename_dependencies = c_string_to_string_name("_rename_dependencies")
cdef GDExtensionClassCallVirtual call_virtual__rename_dependencies_def = <GDExtensionClassCallVirtual>call_virtual_func__rename_dependencies


cdef void* call_virtual_func__exists(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))


    pylanguage._exists(args0,r_ret)

cdef StringName func_name__exists = c_string_to_string_name("_exists")
cdef GDExtensionClassCallVirtual call_virtual__exists_def = <GDExtensionClassCallVirtual>call_virtual_func__exists


cdef void* call_virtual_func__get_classes_used(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))


    pylanguage._get_classes_used(args0,r_ret)

cdef StringName func_name__get_classes_used = c_string_to_string_name("_get_classes_used")
cdef GDExtensionClassCallVirtual call_virtual__get_classes_used_def = <GDExtensionClassCallVirtual>call_virtual_func__get_classes_used


cdef void* call_virtual_func__load(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef String args1 = String.new_static(dereference(p_args + 1))
    cdef bool args2 = <bool>dereference(p_args + 2)
    cdef int args3 = <int>dereference(p_args + 3)


    pylanguage._load(args0,args1,args2,args3,r_ret)

cdef StringName func_name__load = c_string_to_string_name("_load")
cdef GDExtensionClassCallVirtual call_virtual__load_def = <GDExtensionClassCallVirtual>call_virtual_func__load

cdef GDExtensionClassCallVirtual get_virtual_func(void *p_userdata, GDExtensionConstStringNamePtr p_name) with gil:
    print_error("------------pyscript-get_virtual_func---------")
    gdnative_interface = get_interface()
    cdef StringName name = StringName()
    name.godot_owner = p_name

    if (string_names_equal(func_name__get_recognized_extensions, name)):
        return call_virtual__get_recognized_extensions_def

    elif (string_names_equal(func_name__recognize_path, name)):
        return call_virtual__recognize_path_def

    elif (string_names_equal(func_name__handles_type, name)):
        return call_virtual__handles_type_def

    elif (string_names_equal(func_name__get_resource_type, name)):
        return call_virtual__get_resource_type_def

    elif (string_names_equal(func_name__get_resource_uid, name)):
        return call_virtual__get_resource_uid_def

    elif (string_names_equal(func_name__get_dependencies, name)):
        return call_virtual__get_dependencies_def

    elif (string_names_equal(func_name__rename_dependencies, name)):
        return call_virtual__rename_dependencies_def

    elif (string_names_equal(func_name__exists, name)):
        return call_virtual__exists_def

    elif (string_names_equal(func_name__get_classes_used, name)):
        return call_virtual__get_classes_used_def

    elif (string_names_equal(func_name__load, name)):
        return call_virtual__load_def