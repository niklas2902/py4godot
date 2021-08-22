from godot_api.binding_external cimport *
from cython.operator cimport dereference
from libc.stddef cimport wchar_t
from pluginscript_api.description_classes.MethodDescription import *
from pluginscript_api.description_classes.PropertyDescription import *
#from core.dictionary.Dictionary cimport set_api_core_dict
from core.array.Array import *
from libc.stdio cimport printf
from utils.GDClassWrapper cimport GDClassWrapper
from utils.Wrapper cimport Wrapper
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from cpython.mem cimport PyMem_Malloc, PyMem_Realloc, PyMem_Free

from pluginscript_api.utils.annotations import methods, classes, properties, reset


cdef godot_dictionary dictionary
cdef api set_api_core_pluginscript(const godot_gdnative_core_api_struct* core):
    global api_core
    api_core = core
    #set_api_core_dict(core)
    api_core.godot_dictionary_new(&dictionary)
    print("\n#############################set_api_core############################################################")
cdef api godot_pluginscript_language_data * init_pluginscript():
    print("\n######################################################init_python_pluginscript####################################\n");

cdef api void finish_pluginscript(godot_pluginscript_instance_data *p_data):
    print("finish_python_test\n");

cdef api  void add_global_constant_pluginscript(godot_pluginscript_language_data *p_data, const godot_string *p_variable, const godot_variant *p_value):
    print("\n######################################################add_global_constant#############################\n");

###############################################pluginscript_desc#######################################################
cdef api  godot_pluginscript_script_manifest init_pluginscript_desc (godot_pluginscript_language_data *p_data, const godot_string *p_path, const godot_string *p_source, godot_error *r_error):
    print("\n############################################create_manifest##############################################\n");
    cdef godot_pluginscript_script_manifest manifest;

    api_core.godot_string_name_new_data(&manifest.name, "python_manifest");
    manifest.is_tool = False;
    api_core.godot_string_name_new_data(&manifest.base, "");
    api_core.godot_dictionary_new(&manifest.member_lines);
    api_core.godot_array_new(&manifest.methods);
    api_core.godot_array_new(&manifest.signals);
    api_core.godot_array_new(&manifest.properties);

    api_core.godot_print(p_source)
    api_core.godot_print(p_path)

    reset()
    exec(get_python_string_from_w_string(p_source))

    gd_obj = classes[0]
    cdef PyObject* class_obj
    class_obj = <PyObject*> gd_obj
    print("classes:", classes)
    cdef GDClassWrapper gd_class_wrapper = GDClassWrapper()
    gd_class_wrapper.py_obj = <PyObject*>class_obj
    #print("OBJ:",class_obj)

    properties_array = Array()
    for p in properties:
        properties_array.append(Variant(p.to_dict()))
        print("dict:",p.to_dict())
    #for m in methods:
        #MethodDescription(m, None,None, 0, 0).to_dict()
    manifest.properties = properties_array.get_native()


    cdef PyObject* obj = class_obj

    manifest.data = obj;

    print("\n################################return_manifest########################################################\n");
    return manifest;

cdef api  void finish_pluginscript_desc (godot_pluginscript_script_data *p_data):
    print("finish_desc\n");



###############################################pluginscript_instance#######################################################
cdef api godot_pluginscript_instance_data * init_pluginscript_instance(godot_pluginscript_script_data *p_data, godot_object *p_owner):
    print("\n####################################################################instance_init########################\n");
    cdef Wrapper instance = (<Wrapper ?>p_data)()
    cdef Wrapper wrapper_obj = instance
    wrapper_obj.set_godot_owner(p_owner)
    Py_INCREF(instance)
    return <PyObject*>instance


cdef api void finish_pluginscript_instance(godot_pluginscript_instance_data *p_data):
    cdef Wrapper instance = (<Wrapper ?>p_data)()
    cdef Wrapper wrapper_obj = instance
    wrapper_obj.set_godot_owner(p_owner)
    Py_DECREF(instance)
    return <PyObject*>instance

cdef api bool set_prop_pluginscript_instance(godot_pluginscript_instance_data *p_data, const godot_string *p_name, const godot_variant *p_value):
    print("\n#########################################################set_prop#######################################\n");
    return False;

cdef api bool get_prop_pluginscript_instance(godot_pluginscript_instance_data *p_data, const godot_string *p_name, godot_variant *r_ret):
    print("\n###################################################get_prop########################################\n");
    return False;

cdef api void call_method_pluginscript_instance(godot_pluginscript_instance_data *p_data,const godot_string_name *p_method, const godot_variant **p_args,int p_argcount, godot_variant_call_error *r_error):
    print("\n#################################################call_method#############################################");

cdef api void notification_pluginscript_instance(godot_pluginscript_instance_data *p_data, int p_notification):
    print("\n#####################################################notification_instance###############################");



cdef unicode get_python_string_from_w_string(const godot_string* string):
    cdef const wchar_t* c_string = api_core.godot_string_wide_str(string)
    return <unicode>PyUnicode_FromWideChar(c_string,-1)


