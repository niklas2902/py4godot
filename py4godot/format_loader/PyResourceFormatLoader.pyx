from py4godot_core_holder.core_holder cimport *
from py4godot.utils.print_tools import *
from py4godot.utils.utils cimport *
from py4godot.enums.enums4 cimport *
from py4godot.classes.ResourceFormatLoader.ResourceFormatLoader cimport *
from py4godot.script_extension.PyScriptExtension cimport *
from py4godot.classes.generated4_core cimport *
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from cython.operator cimport dereference

gdnative_interface = get_interface()
cdef GDNativeExtensionClassCreationInfo creation_info
cdef class PyResourceFormatLoader(ResourceFormatLoader):
  @staticmethod
  def constructor():
    cdef PyResourceFormatLoader class_ = PyResourceFormatLoader()

    print_warning("-------------construct PyResourceFormatLoader--------------------")
    cdef StringName class_name = c_string_to_string_name("PyResourceFormatLoader")

    class_.set_godot_owner(gdnative_interface.classdb_construct_object(class_name.godot_owner))
    Py_INCREF(class_)
    gdnative_interface.object_set_instance(class_.get_godot_owner(),class_name.godot_owner , <void*>class_)

    class_._init_values()
    return class_

  cdef void _init_values(self):
    self.extensions = list()
    self.extensions.append(c_string_to_string("py"))
    self.extensions.append(c_string_to_string("pyw"))
    self.extensions.append(c_string_to_string("pyi"))

  cdef void set_language(self, ScriptLanguageExtension language):
    self.language = language
  cdef _get_recognized_extensions(self, GDNativeTypePtr res):
    cdef PackedStringArray gdextensions = PackedStringArray.new_static(res)
    for extension in self.extensions:
        gdextensions.push_back(extension)

  cdef _recognize_path(self, String path, StringName type, GDNativeTypePtr res):
    set_gdnative_ptr(<GDNativeTypePtr*> res, <GDNativeObjectPtr>1)


  cdef _handles_type(self, StringName type, GDNativeTypePtr res):
    set_gdnative_ptr(<GDNativeTypePtr*> res, <GDNativeObjectPtr>0)


  cdef _get_resource_type(self, String path, GDNativeTypePtr res):
    _interface.string_new_with_utf8_chars(res, "Python")


  cdef _get_resource_uid(self, String path, GDNativeTypePtr res):
    pass


  cdef _get_dependencies(self, String path, bool add_types, GDNativeTypePtr res):
    pass


  cdef _rename_dependencies(self, String path, Dictionary renames, GDNativeTypePtr res):
    pass


  cdef _exists(self, String path, GDNativeTypePtr res):
    pass


  cdef _get_classes_used(self, String path, GDNativeTypePtr res):
    pass


  cdef _load(self, String path, String original_path, bool use_sub_threads, int cache_mode, GDNativeTypePtr res):
    print_warning("---------------------load_loader-----------------")
    cdef PyScriptExtension script = PyScriptExtension.constructor()
    script.set_language(language)
    cdef GDNativeVariantFromTypeConstructorFunc constructor_func
    cdef Variant var
    cdef int float_val = 4
    try:
        script.set_path(original_path)
        #script.source_code = c_string_to_string("test_code")
        constructor_func = gdnative_interface.get_variant_from_type_constructor(GDNativeVariantType.GDNATIVE_VARIANT_TYPE_OBJECT)
        print_warning("after_get_constructor")
        constructor_func(res,<GDNativeTypePtr>&script.godot_owner)
        print_warning("after_calling_constructor")
    except Exception as e:
        print_warning(str(e))

cdef GDNativePtrOperatorEvaluator operator_equal_string_name = gdnative_interface.variant_get_ptr_operator_evaluator(
GDNativeVariantOperator.GDNATIVE_VARIANT_OP_EQUAL,
 GDNativeVariantType.GDNATIVE_VARIANT_TYPE_STRING_NAME,
 GDNativeVariantType.GDNATIVE_VARIANT_TYPE_STRING_NAME);

cdef bool string_names_equal(StringName left, StringName right):
    cdef int8_t ret
    operator_equal_string_name(left.godot_owner, right.godot_owner, &ret)
    ""
    return ret != 0


cdef GDNativeObjectPtr create_instance(void* userdata) with gil:
    ""
    #TODO: This makes no sense
    print_warning("------------create_script-create_instance---------")
    cdef StringName class_name = c_string_to_string_name("ResourceFormatLoader")
    cdef GDNativeObjectPtr gdnative_object = gdnative_interface.classdb_construct_object(class_name.godot_owner)
    print_warning(gdnative_object == NULL)
    return gdnative_object
    #return NULL

cdef void free_instance(void *p_userdata, GDExtensionClassInstancePtr p_instance):
    pass
    #print_warning("free_instance")

cdef void register_class_py_format_loader() with gil:
    print_warning("register PyFormatLoader")
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
    creation_info.class_userdata = <PyObject *>PyResourceFormatLoader
    creation_info.get_virtual_func = get_virtual_func

    cdef String class_name_string = String.new0()
    _interface.string_new_with_utf8_chars(class_name_string.godot_owner, "PyResourceFormatLoader")
    cdef StringName class_name = StringName.new2(class_name_string)


    cdef String parent_class_name_string = String.new0()
    _interface.string_new_with_utf8_chars(parent_class_name_string.godot_owner, "ResourceFormatLoader")
    cdef StringName parent_class_name = StringName.new2(parent_class_name_string)
    _interface.classdb_register_extension_class(get_library(), class_name.godot_owner, parent_class_name.godot_owner, &creation_info)
    print_warning("-----------registered PyResourceFormatLoader----------------")

cdef void* call_virtual_func__get_recognized_extensions(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance


    pylanguage._get_recognized_extensions(r_ret)

cdef StringName func_name__get_recognized_extensions = c_string_to_string_name("_get_recognized_extensions")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_recognized_extensions_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_recognized_extensions


cdef void* call_virtual_func__recognize_path(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef StringName args1 = StringName.new_static(dereference(p_args + 1))


    pylanguage._recognize_path(args0,args1,r_ret)

cdef StringName func_name__recognize_path = c_string_to_string_name("_recognize_path")
cdef GDNativeExtensionClassCallVirtual call_virtual__recognize_path_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__recognize_path


cdef void* call_virtual_func__handles_type(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef StringName args0 = StringName.new_static(dereference(p_args + 0))


    pylanguage._handles_type(args0,r_ret)

cdef StringName func_name__handles_type = c_string_to_string_name("_handles_type")
cdef GDNativeExtensionClassCallVirtual call_virtual__handles_type_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__handles_type


cdef void* call_virtual_func__get_resource_type(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))


    pylanguage._get_resource_type(args0,r_ret)

cdef StringName func_name__get_resource_type = c_string_to_string_name("_get_resource_type")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_resource_type_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_resource_type


cdef void* call_virtual_func__get_resource_uid(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))


    pylanguage._get_resource_uid(args0,r_ret)

cdef StringName func_name__get_resource_uid = c_string_to_string_name("_get_resource_uid")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_resource_uid_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_resource_uid


cdef void* call_virtual_func__get_dependencies(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef bool args1 = <bool>dereference(p_args + 1)


    pylanguage._get_dependencies(args0,args1,r_ret)

cdef StringName func_name__get_dependencies = c_string_to_string_name("_get_dependencies")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_dependencies_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_dependencies


cdef void* call_virtual_func__rename_dependencies(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef Dictionary args1 = Dictionary.new_static(dereference(p_args + 1))


    pylanguage._rename_dependencies(args0,args1,r_ret)

cdef StringName func_name__rename_dependencies = c_string_to_string_name("_rename_dependencies")
cdef GDNativeExtensionClassCallVirtual call_virtual__rename_dependencies_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__rename_dependencies


cdef void* call_virtual_func__exists(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))


    pylanguage._exists(args0,r_ret)

cdef StringName func_name__exists = c_string_to_string_name("_exists")
cdef GDNativeExtensionClassCallVirtual call_virtual__exists_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__exists


cdef void* call_virtual_func__get_classes_used(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))


    pylanguage._get_classes_used(args0,r_ret)

cdef StringName func_name__get_classes_used = c_string_to_string_name("_get_classes_used")
cdef GDNativeExtensionClassCallVirtual call_virtual__get_classes_used_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__get_classes_used


cdef void* call_virtual_func__load(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyResourceFormatLoader pylanguage = <PyResourceFormatLoader> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))
    cdef String args1 = String.new_static(dereference(p_args + 1))
    cdef bool args2 = <bool>dereference(p_args + 2)
    cdef int args3 = <int>dereference(p_args + 3)


    pylanguage._load(args0,args1,args2,args3,r_ret)

cdef StringName func_name__load = c_string_to_string_name("_load")
cdef GDNativeExtensionClassCallVirtual call_virtual__load_def = <GDNativeExtensionClassCallVirtual>call_virtual_func__load

cdef GDNativeExtensionClassCallVirtual get_virtual_func(void *p_userdata, GDNativeConstStringNamePtr p_name) with gil:
    print_warning("------------pyscript-get_virtual_func---------")
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