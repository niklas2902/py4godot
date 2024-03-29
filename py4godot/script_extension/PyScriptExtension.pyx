from py4godot.script_instance.instance_pxd cimport *
from py4godot_core_holder.core_holder cimport *
from py4godot.utils.print_tools import *
from py4godot.utils.utils cimport *
from py4godot.enums.enums4 cimport *
from py4godot.classes.Object.Object cimport *
from py4godot.classes.Engine.Engine cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.pluginscript_api.utils.annotations import *
from py4godot.utils.Wrapper4 cimport *
from py4godot.classes.typed_arrays cimport *
from py4godot.Instance_data.InstanceData cimport *
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from cython.operator cimport dereference
from py4godot.events.EventHolder cimport *

cdef void set_lang(PyLanguage lang):
    global py_language
    py_language = lang
    Py_INCREF(py_language)



cdef Dictionary dict = Dictionary.new0()
cdef StringName dictionary_name = c_string_to_string_name("")
cdef PyLanguage py_language
cdef Variant v2
cdef Variant var

cdef GDExtensionScriptInstanceInfo* instance_ptr
cdef GDExtensionClassCreationInfo creation_info
cdef class PyScriptExtension(ScriptExtension):
  @staticmethod
  #TODO remove *args
  def constructor(*args):
    cdef PyScriptExtension class_ = PyScriptExtension()
    ""
    print_error("-------------construct PyScriptExtension--------------------")
    cdef StringName class_name = c_string_to_string_name("PyScriptExtension")

    class_.set_godot_owner(GDExtensionInterfaceClassdbConstructObject{}(class_name.godot_owner))
    Py_INCREF(class_)
    gdnative_interface.object_set_instance(class_.get_godot_owner(),class_name.godot_owner , <void*>class_)

    ""
    class_._init_values()
    return class_

  cdef void _init_values(self):
    self.source_code = ""
    self.gd_obj = None
    self.gd_class = None
    self.properties = []
    self.methods = []
    self.signals = []
    self.array = None
    Py_INCREF(self.source_code)

  cdef void set_py_source_code(self,str path, str source_code):
    self.source_code = source_code
    print_error("before exec py_source code")
    result = None
    try:
        result = exec_class(self.source_code, path)
        print_error("result:", result)
        if(result != None and (result.gd_class != None or result.gd_tool_class != None)):
            print_error("result not None")
            self.gd_class = result.gd_class if result.gd_class != None else result.gd_tool_class
            print_error("gd_class:", self.gd_class)
            self.gd_obj = <Wrapper4> self.gd_class()
            self.properties = result.properties
            self.methods = result.methods
            self.signals = result.signals
            print_error(self.gd_obj)
    except Exception as e:
        print_error("Creating_class failed:"+str(e))
  cdef str get_py_source_code(self):
    return self.source_code

  cdef void set_language(self, ScriptLanguageExtension language):
    self.language = language


  cdef void _editor_can_reload_from_file(self, GDExtensionTypePtr res):
    pass


  cdef void _can_instantiate(self, GDExtensionTypePtr res):
    cdef Engine engine = Engine.get_instance()
    print_error("is_editor_hint:", engine.is_editor_hint())
    try:
        if not engine.is_editor_hint():
            set_gdnative_ptr(<GDExtensionTypePtr*>res, <GDExtensionTypePtr>1)
        else:
            set_gdnative_ptr(<GDExtensionTypePtr*>res, <GDExtensionTypePtr>0)
    except Exception as e:
        print_error("an Exception happened:", e)

  cdef void _get_base_script(self, GDExtensionTypePtr res):
    pass


  cdef void _inherits_script(self, Script script, GDExtensionTypePtr res):
    pass


  cdef void _get_instance_base_type(self, GDExtensionTypePtr res):
    cdef String gd_string = String.new0()
    _interface.string_new_with_utf8_chars(gd_string.godot_owner, "Node3D")

    cdef StringName gd_string_name = StringName.new_static(res)
    gd_string_name.set_variant_type(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_STRING_NAME)
    cdef GDExtensionPtrConstructor constructor = _interface.variant_get_ptr_constructor(gd_string_name.variant_type, 2)

    cdef GDExtensionTypePtr _args[1]
    _args[0] = gd_string.get_godot_owner()

    constructor(gd_string_name.godot_owner,_args)


  cdef void _instance_create(self, Object for_object, GDExtensionTypePtr res):
    print_error("before get_class")
    for_object.get_class()
    cdef GDExtensionVariantFromTypeConstructorFunc constructor_func
    cdef Variant var
    cdef GDExtensionVariantPtr varptr
    cdef GDExtensionScriptInstancePtr instance_ptr
    cdef GDExtensionScriptInstanceInfo* instance_info
    result = None
    cdef object gd_class
    cdef InstanceData gd_instance = InstanceData()
    print_error("before trying to execute code")

    try:
        gd_instance.set_owner(self.gd_obj)
        gd_instance.set_properties(self.properties)
        gd_instance.set_methods(self.methods)
        get_instance_ptr(gdnative_interface, &(gd_instance.info))

        for property in self.properties:
            print_error(f"create_property:{gd_string_name_to_py_string(property.get_name())}->{property.get_default_value()}")
            setattr(self.gd_obj, gd_string_name_to_py_string(property.get_name()), property.get_default_value())

        self.gd_obj.set_godot_owner(for_object.godot_owner)
        gd_instance.set_script(self)
        #TODO: work further on here
        print_error("before instance_create")
        Py_INCREF(gd_instance)
        Py_INCREF(gd_instance.owner)
        Py_INCREF(self.gd_obj)
        instance_ptr = _interface.script_instance_create(&(gd_instance.info), <PyObject*>gd_instance)
        print_error("after instance_create")
        set_gdnative_ptr(<GDExtensionTypePtr*>res, <GDExtensionTypePtr>instance_ptr)
        get_script_holder().register_script(<int>(&self.gd_obj.godot_owner), self.gd_obj)
        print_error("gd_obj for script:", self.gd_obj)
    except Exception as e:
        print_error("Exception - instance_create failed because of:"+ str(e))
    print_error("_instance_create-end")



  cdef void _placeholder_instance_create(self, Object for_object, GDExtensionTypePtr res):
    print_error("before get_class")
    for_object.get_class()
    cdef GDExtensionVariantFromTypeConstructorFunc constructor_func
    cdef Variant var
    cdef GDExtensionVariantPtr varptr
    cdef GDExtensionScriptInstancePtr instance_ptr
    cdef GDExtensionScriptInstanceInfo* instance_info
    result = None
    cdef object gd_class
    cdef InstanceData gd_instance = InstanceData()
    print_error("before trying to execute code")

    try:
        gd_instance.set_owner(self.gd_obj)
        gd_instance.set_properties(self.properties)
        gd_instance.set_methods(self.methods)
        get_placeholder_instance_ptr(gdnative_interface, &(gd_instance.info))

        for property in self.properties:
            print_error(f"create_property:{gd_string_name_to_py_string(property.get_name())}->{property.get_default_value()}")
            setattr(self.gd_obj, gd_string_name_to_py_string(property.get_name()), property.get_default_value())

        self.gd_obj.set_godot_owner(for_object.godot_owner)
        gd_instance.set_script(self)
        #TODO: work further on here
        print_error("before instance_create")
        Py_INCREF(gd_instance)
        Py_INCREF(gd_instance.owner)
        Py_INCREF(self.gd_obj)
        instance_ptr = _interface.script_instance_create(&(gd_instance.info), <PyObject*>gd_instance)
        print_error("after instance_create")
        set_gdnative_ptr(<GDExtensionTypePtr*>res, <GDExtensionTypePtr>instance_ptr)
    except Exception as e:
        print_error("Exception - instance_create failed because of:"+ str(e))
    print_error("_instance_create-end")


  cdef void _instance_has(self, Object object, GDExtensionTypePtr res):
    pass


  cdef void _has_source_code(self, GDExtensionTypePtr res):
    set_gdnative_ptr(<GDExtensionTypePtr*>res, <GDExtensionTypePtr>1)


  cdef void _get_source_code(self, GDExtensionTypePtr res):
    print_error("self.source_code:", self.source_code)
    cdef bytes bytes_str = self.source_code.encode('utf-8')
    cdef char* c_str = bytes_str
    gdnative_interface.string_new_with_utf8_chars(res, bytes_str)
    #set_gdnative_ptr(&res, <GDExtensionTypePtr>self.source_gode.godot_owner)



  cdef void _set_source_code(self, String code, GDExtensionTypePtr res):
    print_error("set_source_code")
    try:
        self.source_code = gd_string_to_py_string(code)
    except Exception as e:
        print_error("Exception:",e)
    print_error("set_source_code successful")

  cdef void _reload(self, bool keep_state, GDExtensionTypePtr res):
    pass


  cdef void _get_documentation(self, GDExtensionTypePtr res):
    pass


  cdef void _has_method(self, StringName method, GDExtensionTypePtr res):
    print_error("has_method:script_extension")
    pass


  cdef void _get_method_info(self, StringName method, GDExtensionTypePtr res):
    print_error("get_method_info:script_extension")
    pass


  cdef void _is_tool(self, GDExtensionTypePtr res):
    set_gdnative_ptr(<GDExtensionTypePtr*>res, <GDExtensionTypePtr>0)


  cdef void _is_valid(self, GDExtensionTypePtr res):
    set_gdnative_ptr(<GDExtensionTypePtr*>res, <GDExtensionTypePtr>1)


  cdef void _get_language(self, GDExtensionTypePtr res):
    set_gdnative_ptr(<GDExtensionTypePtr*> res, py_language.godot_owner)


  cdef void _has_script_signal(self, StringName signal, GDExtensionTypePtr res):
    pass


  cdef void _get_script_signal_list(self, GDExtensionTypePtr res):
    print_error("get script signal list")
    self.array = DictionaryArray.new_static(res)
    try:
        var = Variant(dict)
        gdnative_interface.array_set_typed(self.array.godot_owner, GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_DICTIONARY,  dictionary_name.godot_owner, var.get_native_ptr());
        for signal in self.signals:
            print_error(signal.get_var_signal_dict())
            self.array.push_back(signal.get_var_signal_dict())
    except Exception as e:
        print_error(f"An Exception happened(get signal list):{e}")


  cdef void _has_property_default_value(self, StringName property, GDExtensionTypePtr res):
    pass


  cdef void _get_property_default_value(self, StringName property, GDExtensionTypePtr res):
    pass


  cdef void _update_exports(self, GDExtensionTypePtr res):
    pass


  cdef void _get_script_method_list(self, GDExtensionTypePtr res):
    print_error("get_script_method_list:extension")
    pass


  cdef void _get_script_property_list(self, GDExtensionTypePtr res):
    pass


  cdef void _get_member_line(self, StringName member, GDExtensionTypePtr res):
    pass


  cdef void _get_constants(self, GDExtensionTypePtr res):
    pass


  cdef void _get_members(self, GDExtensionTypePtr res):
    pass


  cdef void _is_placeholder_fallback_enabled(self, GDExtensionTypePtr res):
    pass


  cdef void _get_rpc_config(self, GDExtensionTypePtr res):
    pass




cdef void* call_virtual_func__editor_can_reload_from_file(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._editor_can_reload_from_file(r_ret)

cdef StringName func_name__editor_can_reload_from_file = c_string_to_string_name("_editor_can_reload_from_file")
cdef GDExtensionClassCallVirtual call_virtual__editor_can_reload_from_file_def = <GDExtensionClassCallVirtual>call_virtual_func__editor_can_reload_from_file


cdef void* call_virtual_func__can_instantiate(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._can_instantiate(r_ret)

cdef StringName func_name__can_instantiate = c_string_to_string_name("_can_instantiate")
cdef GDExtensionClassCallVirtual call_virtual__can_instantiate_def = <GDExtensionClassCallVirtual>call_virtual_func__can_instantiate


cdef void* call_virtual_func__get_base_script(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._get_base_script(r_ret)

cdef StringName func_name__get_base_script = c_string_to_string_name("_get_base_script")
cdef GDExtensionClassCallVirtual call_virtual__get_base_script_def = <GDExtensionClassCallVirtual>call_virtual_func__get_base_script


cdef void* call_virtual_func__inherits_script(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance
    cdef Script args0 = <Script>dereference(p_args + 0)


    pylanguage._inherits_script(args0,r_ret)

cdef StringName func_name__inherits_script = c_string_to_string_name("_inherits_script")
cdef GDExtensionClassCallVirtual call_virtual__inherits_script_def = <GDExtensionClassCallVirtual>call_virtual_func__inherits_script


cdef void* call_virtual_func__get_instance_base_type(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._get_instance_base_type(r_ret)

cdef StringName func_name__get_instance_base_type = c_string_to_string_name("_get_instance_base_type")
cdef GDExtensionClassCallVirtual call_virtual__get_instance_base_type_def = <GDExtensionClassCallVirtual>call_virtual_func__get_instance_base_type


cdef void* call_virtual_func__instance_create(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance
    cdef Object args0 = Object.new_static(gdnative_interface.ref_get_object(p_args[0]))

    cdef object obj = <object>pylanguage._instance_create(args0,r_ret)
    cdef void* ret_val = <void*>obj

cdef StringName func_name__instance_create = c_string_to_string_name("_instance_create")
cdef GDExtensionClassCallVirtual call_virtual__instance_create_def = <GDExtensionClassCallVirtual>call_virtual_func__instance_create


cdef void* call_virtual_func__placeholder_instance_create(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance
    cdef Object args0 = Object.new_static(gdnative_interface.ref_get_object(p_args[0]))

    cdef object obj = <object>pylanguage._placeholder_instance_create(args0,r_ret)
    cdef void* ret_val = <void*>obj

cdef StringName func_name__placeholder_instance_create = c_string_to_string_name("_placeholder_instance_create")
cdef GDExtensionClassCallVirtual call_virtual__placeholder_instance_create_def = <GDExtensionClassCallVirtual>call_virtual_func__placeholder_instance_create


cdef void* call_virtual_func__instance_has(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance
    cdef Object args0 = <Object>dereference(p_args + 0)


    pylanguage._instance_has(args0,r_ret)

cdef StringName func_name__instance_has = c_string_to_string_name("_instance_has")
cdef GDExtensionClassCallVirtual call_virtual__instance_has_def = <GDExtensionClassCallVirtual>call_virtual_func__instance_has


cdef void* call_virtual_func__has_source_code(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._has_source_code(r_ret)

cdef StringName func_name__has_source_code = c_string_to_string_name("_has_source_code")
cdef GDExtensionClassCallVirtual call_virtual__has_source_code_def = <GDExtensionClassCallVirtual>call_virtual_func__has_source_code


cdef void* call_virtual_func__get_source_code(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._get_source_code(r_ret)

cdef StringName func_name__get_source_code = c_string_to_string_name("_get_source_code")
cdef GDExtensionClassCallVirtual call_virtual__get_source_code_def = <GDExtensionClassCallVirtual>call_virtual_func__get_source_code


cdef void* call_virtual_func__set_source_code(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance
    cdef String args0 = String.new_static(dereference(p_args + 0))


    pylanguage._set_source_code(args0,r_ret)

cdef StringName func_name__set_source_code = c_string_to_string_name("_set_source_code")
cdef GDExtensionClassCallVirtual call_virtual__set_source_code_def = <GDExtensionClassCallVirtual>call_virtual_func__set_source_code


cdef void* call_virtual_func__reload(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance
    cdef bool args0 = <bool>dereference(p_args + 0)


    pylanguage._reload(args0,r_ret)

cdef StringName func_name__reload = c_string_to_string_name("_reload")
cdef GDExtensionClassCallVirtual call_virtual__reload_def = <GDExtensionClassCallVirtual>call_virtual_func__reload


cdef void* call_virtual_func__get_documentation(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._get_documentation(r_ret)

cdef StringName func_name__get_documentation = c_string_to_string_name("_get_documentation")
cdef GDExtensionClassCallVirtual call_virtual__get_documentation_def = <GDExtensionClassCallVirtual>call_virtual_func__get_documentation


cdef void* call_virtual_func__has_method(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance
    cdef StringName args0 = StringName.new_static(dereference(p_args + 0))


    pylanguage._has_method(args0,r_ret)

cdef StringName func_name__has_method = c_string_to_string_name("_has_method")
cdef GDExtensionClassCallVirtual call_virtual__has_method_def = <GDExtensionClassCallVirtual>call_virtual_func__has_method


cdef void* call_virtual_func__get_method_info(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance
    cdef StringName args0 = StringName.new_static(dereference(p_args + 0))


    pylanguage._get_method_info(args0,r_ret)

cdef StringName func_name__get_method_info = c_string_to_string_name("_get_method_info")
cdef GDExtensionClassCallVirtual call_virtual__get_method_info_def = <GDExtensionClassCallVirtual>call_virtual_func__get_method_info


cdef void* call_virtual_func__is_tool(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._is_tool(r_ret)

cdef StringName func_name__is_tool = c_string_to_string_name("_is_tool")
cdef GDExtensionClassCallVirtual call_virtual__is_tool_def = <GDExtensionClassCallVirtual>call_virtual_func__is_tool


cdef void* call_virtual_func__is_valid(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._is_valid(r_ret)

cdef StringName func_name__is_valid = c_string_to_string_name("_is_valid")
cdef GDExtensionClassCallVirtual call_virtual__is_valid_def = <GDExtensionClassCallVirtual>call_virtual_func__is_valid


cdef void* call_virtual_func__get_language(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._get_language(r_ret)

cdef StringName func_name__get_language = c_string_to_string_name("_get_language")
cdef GDExtensionClassCallVirtual call_virtual__get_language_def = <GDExtensionClassCallVirtual>call_virtual_func__get_language


cdef void* call_virtual_func__has_script_signal(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance
    cdef StringName args0 = StringName.new_static(dereference(p_args + 0))


    pylanguage._has_script_signal(args0,r_ret)

cdef StringName func_name__has_script_signal = c_string_to_string_name("_has_script_signal")
cdef GDExtensionClassCallVirtual call_virtual__has_script_signal_def = <GDExtensionClassCallVirtual>call_virtual_func__has_script_signal


cdef void* call_virtual_func__get_script_signal_list(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._get_script_signal_list(r_ret)

cdef StringName func_name__get_script_signal_list = c_string_to_string_name("_get_script_signal_list")
cdef GDExtensionClassCallVirtual call_virtual__get_script_signal_list_def = <GDExtensionClassCallVirtual>call_virtual_func__get_script_signal_list


cdef void* call_virtual_func__has_property_default_value(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance
    cdef StringName args0 = StringName.new_static(dereference(p_args + 0))


    pylanguage._has_property_default_value(args0,r_ret)

cdef StringName func_name__has_property_default_value = c_string_to_string_name("_has_property_default_value")
cdef GDExtensionClassCallVirtual call_virtual__has_property_default_value_def = <GDExtensionClassCallVirtual>call_virtual_func__has_property_default_value


cdef void* call_virtual_func__get_property_default_value(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance
    cdef StringName args0 = StringName.new_static(dereference(p_args + 0))


    pylanguage._get_property_default_value(args0,r_ret)

cdef StringName func_name__get_property_default_value = c_string_to_string_name("_get_property_default_value")
cdef GDExtensionClassCallVirtual call_virtual__get_property_default_value_def = <GDExtensionClassCallVirtual>call_virtual_func__get_property_default_value


cdef void* call_virtual_func__update_exports(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._update_exports(r_ret)

cdef StringName func_name__update_exports = c_string_to_string_name("_update_exports")
cdef GDExtensionClassCallVirtual call_virtual__update_exports_def = <GDExtensionClassCallVirtual>call_virtual_func__update_exports


cdef void* call_virtual_func__get_script_method_list(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._get_script_method_list(r_ret)

cdef StringName func_name__get_script_method_list = c_string_to_string_name("_get_script_method_list")
cdef GDExtensionClassCallVirtual call_virtual__get_script_method_list_def = <GDExtensionClassCallVirtual>call_virtual_func__get_script_method_list


cdef void* call_virtual_func__get_script_property_list(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._get_script_property_list(r_ret)

cdef StringName func_name__get_script_property_list = c_string_to_string_name("_get_script_property_list")
cdef GDExtensionClassCallVirtual call_virtual__get_script_property_list_def = <GDExtensionClassCallVirtual>call_virtual_func__get_script_property_list


cdef void* call_virtual_func__get_member_line(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance
    cdef StringName args0 = StringName.new_static(dereference(p_args + 0))


    pylanguage._get_member_line(args0,r_ret)

cdef StringName func_name__get_member_line = c_string_to_string_name("_get_member_line")
cdef GDExtensionClassCallVirtual call_virtual__get_member_line_def = <GDExtensionClassCallVirtual>call_virtual_func__get_member_line


cdef void* call_virtual_func__get_constants(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._get_constants(r_ret)

cdef StringName func_name__get_constants = c_string_to_string_name("_get_constants")
cdef GDExtensionClassCallVirtual call_virtual__get_constants_def = <GDExtensionClassCallVirtual>call_virtual_func__get_constants


cdef void* call_virtual_func__get_members(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._get_members(r_ret)

cdef StringName func_name__get_members = c_string_to_string_name("_get_members")
cdef GDExtensionClassCallVirtual call_virtual__get_members_def = <GDExtensionClassCallVirtual>call_virtual_func__get_members


cdef void* call_virtual_func__is_placeholder_fallback_enabled(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._is_placeholder_fallback_enabled(r_ret)

cdef StringName func_name__is_placeholder_fallback_enabled = c_string_to_string_name("_is_placeholder_fallback_enabled")
cdef GDExtensionClassCallVirtual call_virtual__is_placeholder_fallback_enabled_def = <GDExtensionClassCallVirtual>call_virtual_func__is_placeholder_fallback_enabled


cdef void* call_virtual_func__get_rpc_config(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret) with gil:
    cdef PyScriptExtension pylanguage = <PyScriptExtension> p_instance


    pylanguage._get_rpc_config(r_ret)

cdef StringName func_name__get_rpc_config = c_string_to_string_name("_get_rpc_config")
cdef GDExtensionClassCallVirtual call_virtual__get_rpc_config_def = <GDExtensionClassCallVirtual>call_virtual_func__get_rpc_config


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
    cdef StringName class_name = c_string_to_string_name("ScriptExtension")
    cdef GDExtensionObjectPtr gdnative_object = gdnative_interface.classdb_construct_object(class_name.godot_owner)
    print_error(gdnative_object == NULL)
    return gdnative_object
    #return NULL

cdef void free_instance(void *p_userdata, GDExtensionClassInstancePtr p_instance):
    pass
    #print_error("free_instance")

cdef void register_class_py_script_extension() with gil:
    print_error("register PyScript")
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
    creation_info.class_userdata = <PyObject *>PyScriptExtension
    creation_info.get_virtual_func = get_virtual_func

    cdef String class_name_string = String.new0()
    _interface.string_new_with_utf8_chars(class_name_string.godot_owner, "PyScriptExtension")
    cdef StringName class_name = StringName.new2(class_name_string)


    cdef String parent_class_name_string = String.new0()
    _interface.string_new_with_utf8_chars(parent_class_name_string.godot_owner, "ScriptExtension")
    cdef StringName parent_class_name = StringName.new2(parent_class_name_string)
    _interface.classdb_register_extension_class(get_library(), class_name.godot_owner, parent_class_name.godot_owner, &creation_info)
    print_error("-----------registered PyScriptExtension----------------")

cdef GDExtensionClassCallVirtual get_virtual_func(void *p_userdata, GDExtensionConstStringNamePtr p_name) with gil:
    print_error("------------pyscript-get_virtual_func---------")
    gdnative_interface = get_interface()
    cdef StringName name = StringName()
    name.godot_owner = p_name
    print_error("function being called:", gd_string_name_to_py_string(name))

    if (string_names_equal(func_name__editor_can_reload_from_file, name)):
        return call_virtual__editor_can_reload_from_file_def

    elif (string_names_equal(func_name__can_instantiate, name)):
        return call_virtual__can_instantiate_def

    elif (string_names_equal(func_name__get_base_script, name)):
        return call_virtual__get_base_script_def

    elif (string_names_equal(func_name__inherits_script, name)):
        return call_virtual__inherits_script_def

    elif (string_names_equal(func_name__get_instance_base_type, name)):
        return call_virtual__get_instance_base_type_def

    elif (string_names_equal(func_name__instance_create, name)):
        return call_virtual__instance_create_def

    elif (string_names_equal(func_name__placeholder_instance_create, name)):
        return call_virtual__placeholder_instance_create_def

    elif (string_names_equal(func_name__instance_has, name)):
        return call_virtual__instance_has_def

    elif (string_names_equal(func_name__has_source_code, name)):
        return call_virtual__has_source_code_def

    elif (string_names_equal(func_name__get_source_code, name)):
        return call_virtual__get_source_code_def

    elif (string_names_equal(func_name__set_source_code, name)):
        return call_virtual__set_source_code_def

    elif (string_names_equal(func_name__reload, name)):
        return call_virtual__reload_def

    elif (string_names_equal(func_name__get_documentation, name)):
        return call_virtual__get_documentation_def

    elif (string_names_equal(func_name__has_method, name)):
        return call_virtual__has_method_def

    elif (string_names_equal(func_name__get_method_info, name)):
        return call_virtual__get_method_info_def

    elif (string_names_equal(func_name__is_tool, name)):
        return call_virtual__is_tool_def

    elif (string_names_equal(func_name__is_valid, name)):
        return call_virtual__is_valid_def

    elif (string_names_equal(func_name__get_language, name)):
        return call_virtual__get_language_def

    elif (string_names_equal(func_name__has_script_signal, name)):
        return call_virtual__has_script_signal_def

    elif (string_names_equal(func_name__get_script_signal_list, name)):
        return call_virtual__get_script_signal_list_def

    elif (string_names_equal(func_name__has_property_default_value, name)):
        return call_virtual__has_property_default_value_def

    elif (string_names_equal(func_name__get_property_default_value, name)):
        return call_virtual__get_property_default_value_def

    elif (string_names_equal(func_name__update_exports, name)):
        return call_virtual__update_exports_def

    elif (string_names_equal(func_name__get_script_method_list, name)):
        return call_virtual__get_script_method_list_def

    elif (string_names_equal(func_name__get_script_property_list, name)):
        return call_virtual__get_script_property_list_def

    elif (string_names_equal(func_name__get_member_line, name)):
        return call_virtual__get_member_line_def

    elif (string_names_equal(func_name__get_constants, name)):
        return call_virtual__get_constants_def

    elif (string_names_equal(func_name__get_members, name)):
        return call_virtual__get_members_def

    elif (string_names_equal(func_name__is_placeholder_fallback_enabled, name)):
        return call_virtual__is_placeholder_fallback_enabled_def

    elif (string_names_equal(func_name__get_rpc_config, name)):
        return call_virtual__get_rpc_config_def
