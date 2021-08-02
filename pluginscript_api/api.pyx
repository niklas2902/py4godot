from godot_api.binding_external cimport *
from cython.operator cimport dereference
from libc.stddef cimport wchar_t

cdef api set_api_core_pluginscript(const godot_gdnative_core_api_struct* core):
    global api_core
    api_core = core
    print("\n#############################set_api_core############################################################")
cdef api godot_pluginscript_language_data * init_pluginscript():
    print("\n######################################################init_python_pluginscript####################################\n");
    return NULL;

cdef api void finish_pluginscript(godot_pluginscript_instance_data *p_data):
    print("finish_python_test\n");

cdef api  void add_global_constant_pluginscript(godot_pluginscript_language_data *p_data, const godot_string *p_variable, const godot_variant *p_value):
    print("\n######################################################add_global_constant#############################\n");

###############################################pluginscript_desc#######################################################
cdef api  godot_pluginscript_script_manifest init_pluginscript_desc (godot_pluginscript_language_data *p_data, const godot_string *p_path, const godot_string *p_source, godot_error *r_error):
    print("\n############################################create_manifest##############################################\n");
    cdef godot_pluginscript_script_manifest manifest;
    manifest.data = NULL;
    api_core.godot_string_name_new_data(&manifest.name, "python_manifest");
    manifest.is_tool = False;
    api_core.godot_string_name_new_data(&manifest.base, "");
    api_core.godot_dictionary_new(&manifest.member_lines);
    api_core.godot_array_new(&manifest.methods);
    api_core.godot_array_new(&manifest.signals);
    api_core.godot_array_new(&manifest.properties);

    api_core.godot_print(p_source)
    api_core.godot_print(p_path)
    print("path2:")
    print(get_from_w_string(p_path))
#    PyUnicode_FromWideChar(c_string,-1)
    #py_string = <bytes> c_string

    #PyUnicode_FromWideChar(string,-1)
    #print(string)
    #print(PyUnicode_FromWideChar(api_core.godot_string_wide_str(p_path),-1))
    print("\n################################return_manifest########################################################\n");
    return manifest;

cdef api  void finish_pluginscript_desc (godot_pluginscript_script_data *p_data):
    print("finish_desc\n");



###############################################pluginscript_instance#######################################################
cdef api void init_pluginscript_instance(godot_pluginscript_script_data *p_data, godot_object *p_owner):
    print("\n####################################################################instance_init########################\n");

cdef api void finish_pluginscript_instance(godot_pluginscript_instance_data *p_data):
    print("instance_finish\n");

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



cdef unicode get_from_w_string(const godot_string* string):
    cdef const wchar_t* c_string = api_core.godot_string_wide_str(string)
    return <unicode>PyUnicode_FromWideChar(c_string,-1)


