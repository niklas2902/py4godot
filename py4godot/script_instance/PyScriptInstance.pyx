
cdef GDExtensionScriptInstanceInfo get_instance():
    return native_script_instance

cdef GDExtensionScriptInstanceInfo* get_instance_ptr():
    return &native_script_instance