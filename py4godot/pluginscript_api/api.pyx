from cython.operator cimport dereference
from libc.stddef cimport wchar_t
from py4godot.pluginscript_api.description_classes.MethodDescription import *
from py4godot.pluginscript_api.description_classes.PropertyDescription import *
#from core.dictionary.Dictionary cimport set_api_core_dict
from py4godot.core.array.Array cimport Array
from py4godot.core.string_name.StringName cimport StringName
from py4godot.core.string.String cimport String
from py4godot.utils.Wrapper cimport Wrapper
from cpython cimport Py_INCREF, Py_DECREF, PyObject
cimport py4godot.core.variant.Variant as CVariant
from cpython.mem cimport PyMem_Malloc, PyMem_Realloc, PyMem_Free
from py4godot.godot_bindings.binding cimport *
from py4godot.godot_bindings.binding_external cimport *
from py4godot.enums.enums cimport *
import traceback

from py4godot.pluginscript_api.utils.annotations import *

"""This file contains all the functions, that are needed to crate a pluginscript"""
cdef godot_dictionary dictionary
cdef api set_api_core_pluginscript(const godot_gdnative_core_api_struct* core):
    global api_core
    api_core = core
    api_core.godot_dictionary_new(&dictionary)
cdef api godot_pluginscript_language_data * init_pluginscript() with gil:
    """empty placeholder function, as this is necessary to implement"""

cdef api void finish_pluginscript(godot_pluginscript_instance_data *p_data) with gil:
    """currently empty function which is necessary to implement. It could later be used to delete resources"""

cdef api  void add_global_constant_pluginscript(godot_pluginscript_language_data *p_data,
const godot_string *p_variable, const godot_variant *p_value) with gil:
    """empty placeholder function, as this is necessary to implement"""

###############################################pluginscript_desc#######################################################
cdef api  godot_pluginscript_script_manifest init_pluginscript_desc (godot_pluginscript_language_data *p_data,
 const godot_string *p_path, const godot_string *p_source, godot_error *r_error) with gil:
    """Function for creating the manifest. The manifest describes things like the properties oder methods for the class,
    that should be created. If the file does not contain a class or is for example a __init__ file, we just create a empty manifest"""
    cdef Wrapper gd_classs
    cdef godot_pluginscript_script_manifest manifest;

    if("python/install" in str(String.new_static(dereference(p_path)))):
        create_empty_manifest(&manifest)
        return manifest
    result = None
    try:
        result = exec_class(str(String.new_static(dereference(p_source))))
    except Exception as e:
        traceback.print_exc()
    if(result != None and result.gd_class != None):
        #creating a valid manifest
        gd_obj = result.gd_class
        api_core.godot_string_name_new_data(&manifest.name, "python_manifest");
        manifest.is_tool = False;
        api_core.godot_string_name_new_data(&manifest.base, "");
        api_core.godot_dictionary_new(&manifest.member_lines);

        gd_classs = <Wrapper> gd_obj

        properties_array = Array()
        methods_array = Array()
        signals_array = Array()
        for p in result.properties:
            properties_array.append(Variant(p.to_dict()))
        for m in result.methods:
            print("register_method:",m.name)
            methods_array.append(Variant(m.to_dict()))
        for signal in result.signals:
            signals_array.append(Variant(signal.to_dict()))

        manifest.properties = properties_array._native
        manifest.methods = methods_array._native
        manifest.signals = signals_array._native

        (<Wrapper>gd_classs).PROPERTIES = [p.name for p in result.properties]
        Py_INCREF(gd_classs)
        manifest.data = <PyObject*>gd_classs #The data contains the class, we want later instantiate in method init_pluginscript_instance

    else:
        create_empty_manifest(&manifest)
    return manifest;

cdef api  void finish_pluginscript_desc (godot_pluginscript_script_data *p_data) with gil:
    """empty placeholder function, as this is necessary to implement"""
    cdef Wrapper wrapper
    if(p_data != NULL):
        wrapper = <Wrapper?> p_data
        Py_DECREF(wrapper)



###############################################pluginscript_instance#######################################################
cdef api godot_pluginscript_instance_data * init_pluginscript_instance(godot_pluginscript_script_data *p_data,
 godot_object *p_owner) with gil:
    """Here we are instanciating the class and setting a godot owner for it, so that it can be managed by godot"""

    cdef Wrapper instance
    instance = (<object>p_data)()#instanciating the the class given by manifest.data
    instance.set_godot_owner(p_owner)
    for prop in instance.PROPERTIES:
        setattr(instance,prop,None)
    Py_INCREF(instance)
    return <PyObject*> instance

cdef api void finish_pluginscript_instance(godot_pluginscript_instance_data *p_data) with gil:
    """This method is for dereferencing the instance, when godot says it can be deleted """
    cdef Wrapper instance
    instance = (<Wrapper ?>p_data)
    Py_DECREF(instance)

cdef api bool set_prop_pluginscript_instance(godot_pluginscript_instance_data *p_data,
 const godot_string *p_name, const godot_variant *p_value) with gil:
    """Trying to set the proprerty for the class given by godot"""
    cdef Wrapper instance = (<Wrapper ?>p_data)

    value = CVariant.Variant.new_static(dereference(p_value)).get_converted_value()
    instance.set_property(str(String.new_static(dereference(p_name))), value)
    return True;

cdef api bool get_prop_pluginscript_instance(godot_pluginscript_instance_data *p_data,
const godot_string *p_name, godot_variant *r_ret) with gil:
        #Todo: implement this
        return False;

cdef api godot_variant call_method_pluginscript_instance(godot_pluginscript_instance_data *p_data,const godot_string_name *p_method,
const godot_variant **p_args,int p_argcount, godot_variant_call_error *r_error) with gil:
        """function for calling methods defined in the manifest from an external source"""
        method_name = str(StringName.new_static(p_method))
        print("call method", method_name)

        cdef Wrapper instance = (<Wrapper>p_data)
        if(hasattr(instance,method_name)): #checking if function exists
            args = []
            for i in range(0, p_argcount): #for loop for creating a list of arguments given to us by godot
                variant=CVariant.Variant.new_static(dereference(p_args[i]))
                args.append(variant.get_converted_value())
            ret = getattr(instance,method_name)(*args) #calling the method with the given arguments
            return CVariant.Variant()._native #Todo: return value
        return CVariant.Variant()._native


cdef api godot_string pluginscript_get_template_source_code(godot_pluginscript_language_data *p_data,
 const godot_string *p_class_name, const godot_string *p_base_class_name) with gil:
    """generate a template string for the godot class, when creating ones"""
    return String(f"""
from py4godot import *

@gdclass
class {str(String.new_static(dereference(p_class_name)))}({str(String.new_static(dereference(p_base_class_name)))}):

    @gdproperty(int, 5, hint=PropertyHint.GODOT_PROPERTY_HINT_RANGE.value, hint_string="1,100,5,slider")
    def vel(self):
        return 1
    @vel.setter
    def vel(self, value):
        print("set_value", value)

    def __init__(self):
        super().__init__()
        self.velocity = 0

    @gdmethod
    def _init(self):
        print("_init")

    @gdmethod
    def _process(self, delta):
        print(delta)

""")._native

cdef void create_empty_manifest(godot_pluginscript_script_manifest* manifest):
    api_core.godot_string_name_new_data(&manifest.name, "python_manifest");
    manifest.is_tool = False;
    api_core.godot_string_name_new_data(&manifest.base, "");
    api_core.godot_dictionary_new(&manifest.member_lines);
    api_core.godot_array_new(&manifest.signals);
    methods_array = Array()
    properties_array = Array()

    manifest.properties = properties_array._native
    manifest.methods = methods_array._native
    manifest.data = NULL



cdef api void notification_pluginscript_instance(godot_pluginscript_instance_data *p_data,
int p_notification) with gil:
    #Todo:Notification
    pass