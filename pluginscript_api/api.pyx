from cython.operator cimport dereference
from libc.stddef cimport wchar_t
from pluginscript_api.description_classes.MethodDescription import *
from pluginscript_api.description_classes.PropertyDescription import *
#from core.dictionary.Dictionary cimport set_api_core_dict
from core.array.Array cimport Array
from core.string_name.StringName cimport StringName
from core.string.String cimport String
from libc.stdio cimport printf
from utils.Wrapper cimport Wrapper
from cpython cimport Py_INCREF, Py_DECREF, PyObject
cimport core.variant.Variant as CVariant
from cpython.mem cimport PyMem_Malloc, PyMem_Realloc, PyMem_Free
from godot_api.binding cimport *
from godot_api.binding_external cimport *

from pluginscript_api.utils.annotations import methods, classes, properties, reset

"""This class contains all the functions, thath are needed to crate a pluginscript"""


cdef godot_dictionary dictionary
cdef api set_api_core_pluginscript(const godot_gdnative_core_api_struct* core):
    global api_core
    api_core = core
    api_core.godot_dictionary_new(&dictionary)
    print("\n#############################set_api_core############################################################")
cdef api godot_pluginscript_language_data * init_pluginscript() with gil:
    print("\n######################################################init_python_pluginscript####################################\n");

cdef api void finish_pluginscript(godot_pluginscript_instance_data *p_data) with gil:
    print("finish_python_test\n");

cdef api  void add_global_constant_pluginscript(godot_pluginscript_language_data *p_data,
const godot_string *p_variable, const godot_variant *p_value) with gil:
    print("\n######################################################add_global_constant#############################\n");

###############################################pluginscript_desc#######################################################
cdef api  godot_pluginscript_script_manifest init_pluginscript_desc (godot_pluginscript_language_data *p_data,
 const godot_string *p_path, const godot_string *p_source, godot_error *r_error) with gil:
    cdef PyObject* class_obj
    cdef godot_pluginscript_script_manifest manifest;
    cdef PyObject* obj
    #print("\n############################################create_manifest##############################################\n");


    reset()
    exec(get_python_string_from_w_string(p_source))

    if(len(classes) > 0):
        gd_obj = classes[0]
        api_core.godot_string_name_new_data(&manifest.name, "python_manifest");
        manifest.is_tool = False;
        api_core.godot_string_name_new_data(&manifest.base, "");
        api_core.godot_dictionary_new(&manifest.member_lines);
        api_core.godot_array_new(&manifest.signals);
        methods_array = Array()
        api_core.godot_print(p_source)
        api_core.godot_print(p_path)

        class_obj = <PyObject*> gd_obj

        properties_array = Array()
        for p in properties:
            properties_array.append(Variant(p.to_dict()))
        for m in methods:
            methods_array.append(Variant(m.to_dict()))

        manifest.properties = properties_array._native
        manifest.methods = methods_array._native

        (<Wrapper>class_obj).PROPERTIES = [p.name for p in properties]
        manifest.data = class_obj
    else:
        create_empty_manifest(&manifest)
    reset()
    #print("\n################################return_manifest########################################################\n");
    return manifest;

cdef api  void finish_pluginscript_desc (godot_pluginscript_script_data *p_data) with gil:
    print("finish_desc\n");



###############################################pluginscript_instance#######################################################
cdef api godot_pluginscript_instance_data * init_pluginscript_instance(godot_pluginscript_script_data *p_data,
 godot_object *p_owner) with gil:
    #print("\n####################################################################instance_init########################\n");
    cdef Wrapper instance
    (<Wrapper>p_data)()
    instance = (<Wrapper>p_data)()
    instance.set_godot_owner(p_owner)
    for prop in instance.PROPERTIES:
        setattr(instance,prop,None)
    Py_INCREF(instance)
    return <PyObject*>instance

cdef api void finish_pluginscript_instance(godot_pluginscript_instance_data *p_data) with gil:
    cdef Wrapper instance
    print("instance_finish\n");
    instance = (<Wrapper ?>p_data)
    Py_DECREF(instance)

cdef api bool set_prop_pluginscript_instance(godot_pluginscript_instance_data *p_data,
 const godot_string *p_name, const godot_variant *p_value) with gil:
    cdef Wrapper instance = (<Wrapper ?>p_data)
    #print("\n#########################################################set_prop#######################################\n");
    api_core.godot_print(p_name)

    #Todo:is there a speedier way?
    value = CVariant.Variant.new_static(dereference(p_value)).get_converted_value()
    instance.set_property(get_python_string_from_w_string(p_name), value)
    return True;

cdef api bool get_prop_pluginscript_instance(godot_pluginscript_instance_data *p_data,
const godot_string *p_name, godot_variant *r_ret) with gil:
        #print("\n###################################################get_prop########################################\n");
        return False;

cdef api godot_variant call_method_pluginscript_instance(godot_pluginscript_instance_data *p_data,const godot_string_name *p_method,
const godot_variant **p_args,int p_argcount, godot_variant_call_error *r_error) with gil:
        #print("\n#################################################call_method#############################################");
        method_name = str(StringName.new_static(p_method))

        cdef Wrapper instance = (<Wrapper>p_data)
        if(hasattr(instance,method_name)):
            args = []
            for i in range(0, p_argcount):
                variant=CVariant.Variant.new_static(dereference(p_args[i]))
                args.append(variant.get_converted_value())
            ret = getattr(instance,method_name)(*args)
            return CVariant.Variant()._native
        return CVariant.Variant()._native


cdef api godot_string pluginscript_get_template_source_code(godot_pluginscript_language_data *p_data,
 const godot_string *p_class_name, const godot_string *p_base_class_name) with gil:
    return String(f"""
from enums.enums import *
from core import *
from classes.generated import *

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



cdef api void notification_pluginscript_instance(godot_pluginscript_instance_data *p_data,
int p_notification) with gil:
    pass

cdef unicode get_python_string_from_w_string(const godot_string* string):
    cdef const wchar_t* c_string = api_core.godot_string_wide_str(string)
    return <unicode>PyUnicode_FromWideChar(c_string,-1)

