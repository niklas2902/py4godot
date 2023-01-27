from py4godot_core_holder.core_holder cimport *
from py4godot.utils.print_tools import *
from py4godot.utils.utils cimport *
from py4godot.enums.enums4 cimport *
from py4godot.classes.ResourceFormatSaver.ResourceFormatSaver cimport *
from py4godot.classes.FileAccess.FileAccess cimport *
from py4godot.classes.Script.Script cimport *
from py4godot.classes.generated4_core cimport *
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from cython.operator cimport dereference

gdnative_interface = get_interface()
cdef GDExtensionClassCreationInfo creation_info
cdef class PyResourceFormatSaver(ResourceFormatSaver):
  @staticmethod
  def constructor():
    cdef PyResourceFormatSaver class_ = PyResourceFormatSaver()
    ""
    print_warning("-------------construct PyResourceFormatSaver--------------------")
    cdef StringName class_name = c_string_to_string_name("PyResourceFormatSaver")

    class_.set_godot_owner(gdnative_interface.classdb_construct_object(class_name.godot_owner))
    Py_INCREF(class_)
    gdnative_interface.object_set_instance(class_.get_godot_owner(),class_name.godot_owner , <void*>class_)

    ""
    class_._init_values()
    return class_

  cdef void _init_values(self):
    self.extensions = ["py", "pyw", "pyi"]

  cdef void _save(self, Resource resource, String path, int flags, GDExtensionTypePtr res):
    print_warning("PyResourceFormatSaver::save")
    cdef void* script_tag = gdnative_interface.classdb_get_class_tag(c_string_to_string_name("Script").godot_owner)
    #cdef GodotObject _godot_object = gdnative_interface.object_cast_to(&(resource.godot_owner), script_tag)
    #cdef Script script = Script.new_static(_godot_object)
    #Ref<LuaScript> script = p_resource;
#    resource.get_path()

    #if (script.is_null())
    #	return ERR_INVALID_PARAMETER;

    #cdef String source = script.get_source_code();
    cdef String source = c_string_to_string("test")
    cdef Error error;
    cdef FileAccess file = FileAccess.open(path, FileAccess__ModeFlags.FileAccess__WRITE);

    #set_gdnative_ptr(<GDExtensionTypePtr *>res, <GDExtensionTypePtr>(error))
    #if (error != OK)
    #	return error;

    file.store_string(source);
    #if (file->get_error() != OK && file->get_error() != ERR_FILE_EOF) {
    #	return ERR_CANT_CREATE;
    #}
    file.flush()
    gdnative_interface.object_destroy(file.godot_owner)
    set_gdnative_ptr(<GDExtensionTypePtr*> res, <GDExtensionObjectPtr>Error.OK)


  cdef void _recognize(self, Resource resource, GDExtensionTypePtr res):
    set_gdnative_ptr(<GDExtensionTypePtr *>res, <GDExtensionTypePtr>(<bint> (resource.godot_owner != NULL)))

  cdef void _get_recognized_extensions(self, Resource resource, GDExtensionTypePtr res):
    cdef PackedStringArray gdextensions = PackedStringArray.new_static(res)
    for extension in self.extensions:
        gdextensions.push_back(extension)

  cdef void _recognize_path(self, Resource resource, String path, GDExtensionTypePtr res):
    pass

cdef void* call_virtual_func__save(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyResourceFormatSaver pylanguage = <PyResourceFormatSaver> p_instance
    cdef Resource args0 = <Resource>dereference(p_args + 0)
    cdef String args1 = String.new_static(dereference(p_args + 1))
    cdef int args2 = <int>dereference(p_args + 2)


    pylanguage._save(args0,args1,args2,r_ret)

cdef StringName func_name__save = c_string_to_string_name("_save")
cdef GDExtensionClassCallVirtual call_virtual__save_def = <GDExtensionClassCallVirtual>call_virtual_func__save


cdef void* call_virtual_func__recognize(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyResourceFormatSaver pylanguage = <PyResourceFormatSaver> p_instance
    cdef Resource args0 = <Resource>dereference(p_args + 0)


    pylanguage._recognize(args0,r_ret)

cdef StringName func_name__recognize = c_string_to_string_name("_recognize")
cdef GDExtensionClassCallVirtual call_virtual__recognize_def = <GDExtensionClassCallVirtual>call_virtual_func__recognize


cdef void* call_virtual_func__get_recognized_extensions(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyResourceFormatSaver pylanguage = <PyResourceFormatSaver> p_instance
    cdef Resource args0 = <Resource>dereference(p_args + 0)


    pylanguage._get_recognized_extensions(args0,r_ret)

cdef StringName func_name__get_recognized_extensions = c_string_to_string_name("_get_recognized_extensions")
cdef GDExtensionClassCallVirtual call_virtual__get_recognized_extensions_def = <GDExtensionClassCallVirtual>call_virtual_func__get_recognized_extensions


cdef void* call_virtual_func__recognize_path(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyResourceFormatSaver pylanguage = <PyResourceFormatSaver> p_instance
    cdef Resource args0 = <Resource>dereference(p_args + 0)
    cdef String args1 = String.new_static(dereference(p_args + 1))


    pylanguage._recognize_path(args0,args1,r_ret)

cdef StringName func_name__recognize_path = c_string_to_string_name("_recognize_path")
cdef GDExtensionClassCallVirtual call_virtual__recognize_path_def = <GDExtensionClassCallVirtual>call_virtual_func__recognize_path


cdef String script_name = c_string_to_string("Python")
cdef GDExtensionTypePtr ptr =  script_name.godot_owner

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
    print_warning("------------create_script-create_instance---------")
    cdef StringName class_name = c_string_to_string_name("ResourceFormatSaver")
    cdef GDExtensionObjectPtr gdnative_object = gdnative_interface.classdb_construct_object(class_name.godot_owner)
    print_warning(gdnative_object == NULL)
    return gdnative_object
    #return NULL

cdef void free_instance(void *p_userdata, GDExtensionClassInstancePtr p_instance):
    pass
    #print_warning("free_instance")

cdef void register_class_py_format_saver() with gil:
    print_warning("register PyFormatSaver")
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
    creation_info.class_userdata = <PyObject *>PyResourceFormatSaver
    creation_info.get_virtual_func = get_virtual_func

    cdef String class_name_string = String.new0()
    _interface.string_new_with_utf8_chars(class_name_string.godot_owner, "PyResourceFormatSaver")
    cdef StringName class_name = StringName.new2(class_name_string)


    cdef String parent_class_name_string = String.new0()
    _interface.string_new_with_utf8_chars(parent_class_name_string.godot_owner, "ResourceFormatSaver")
    cdef StringName parent_class_name = StringName.new2(parent_class_name_string)
    _interface.classdb_register_extension_class(get_library(), class_name.godot_owner, parent_class_name.godot_owner, &creation_info)
    print_warning("-----------registered PyResourceFormatSaver----------------")

cdef GDExtensionClassCallVirtual get_virtual_func(void *p_userdata, GDExtensionConstStringNamePtr p_name) with gil:
    print_warning("------------pyformatsaver-get_virtual_func---------")
    gdnative_interface = get_interface()
    cdef StringName name = StringName()
    name.godot_owner = p_name

    if (string_names_equal(func_name__save, name)):
        return call_virtual__save_def

    elif (string_names_equal(func_name__recognize, name)):
        return call_virtual__recognize_def

    elif (string_names_equal(func_name__get_recognized_extensions, name)):
        return call_virtual__get_recognized_extensions_def

    elif (string_names_equal(func_name__recognize_path, name)):
        return call_virtual__recognize_path_def