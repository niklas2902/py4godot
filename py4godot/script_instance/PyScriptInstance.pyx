from cython.operator cimport dereference
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from py4godot.utils.utils cimport *
from py4godot.Instance_data.InstanceData cimport *
cimport py4godot.classes.cpp_bridge as cppbridge
from py4godot.classes.generated4_core cimport *
from py4godot.core.variant4.Variant4 cimport *
from py4godot.utils.print_tools import *
from libc.stdlib cimport malloc, free
import threading

lock = threading.Lock()

cdef api GDExtensionBool instance_set(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionConstVariantPtr p_value) with gil:
    cdef InstanceData* instance = <InstanceData*>p_instance
    #TODO still a problem with custom string attributes. Why is this still crashing?
    cdef StringName method_name = StringName.__new__(StringName)
    cdef cppbridge.StringName internal_method_name = cppbridge.StringName.new_static((<void**>p_name)[0]) #TODO: Create unconst helper
    method_name.StringName_internal_class = internal_method_name
    cdef String method_name_str = String.new2(method_name)
    cdef unicode py_method_name_str = gd_string_to_py_string(method_name_str)
    print_error("print_method:"+py_method_name_str)
    cdef Variant var
    try:
        var.native_ptr = <void*>p_value
        val = var.get_converted_value()
        setattr(<object>(instance.owner),py_method_name_str, <object>val)
        #if(type(vector) == String):
        #    setattr(instance.owner,py_method_name_str, gd_string_to_py_string(vector))
        #elif (type(vector) == StringName):
        #    setattr(instance.owner,py_method_name_str, gd_string_name_to_py_string(vector))
        #elif (type(vector) == Variant):
        #    setattr(instance.owner,py_method_name_str, vector.get_converted_value())
        #else:
        #    setattr(instance.owner,py_method_name_str, vector)

    except Exception as e:
        error(f"An Exception happened while setting attribute:{e}" )

    return 1

"""
cdef api GDExtensionBool instance_get(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionVariantPtr r_ret) with gil:
    cdef InstanceData instance = <InstanceData>p_instance

    cdef StringName method_name = StringName.new_static(p_name)
    cdef String method_name_str = String.new2(method_name)
    cdef char* c_str = gd_string_c_string(gdnative_interface,method_name_str.godot_owner, method_name_str.length())
    cdef unicode py_method_name_str = gd_string_to_py_string(method_name_str)
    print_error("print_method_get:"+py_method_name_str)

    cdef object get_val = None
    cdef Variant get_var = Variant.new_static(r_ret)
    if py_method_name_str == "_dont_undo_redo":
        return 0
    print_error("get_prop:"+str(py_method_name_str))
    if(py_method_name_str != "script"):
        try:
            print_error("before lock")
            print_error("before get_val")
            get_val = getattr(instance.owner,py_method_name_str)
            print_error("get_val:", get_val)
            if ("position" in py_method_name_str):
                print_error(get_val.x)
            get_var.init_type(get_val)
        except Exception as e:
            error("exception:",e)
    else:
        get_var.init_type(instance.script)
    print_error("finish_get_prop:"+str(py_method_name_str))
    return 1
"""
"""cdef api const GDExtensionMethodInfo * instance_get_method_list(GDExtensionScriptInstanceDataPtr p_instance, uint32_t *r_count) with gil:
    global method_infos
    print_error("call_method_list")
    cdef InstanceData instance = <InstanceData>p_instance
    try:
        r_count[0] = len(instance.methods) #TODO enable properties

        if method_infos != NULL:
            return method_infos

        method_infos = <GDExtensionMethodInfo*>malloc(sizeof(GDExtensionMethodInfo)* len(instance.methods))
        for index in range(0, len(instance.methods)):
            method_infos[index] = (<MethodDescription>(instance.methods[index])).method_info
            print_error("set method_info",
            (<MethodDescription>(instance.methods[index])).method_info.argument_count,
            (<MethodDescription>(instance.methods[index])).argument_count)
    except Exception as e:
        error("Exception in method_list:", e)
    return method_infos
"""
"""
cdef api GDExtensionBool instance_has_method(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name) with gil:
    cdef InstanceData instance = <InstanceData>p_instance

    cdef StringName method_name = StringName.new_static(p_name)
    cdef String method_name_str = String.new2(method_name)
    cdef str py_method_name_str = gd_string_to_py_string(method_name_str)
    print_error("has_method:" + py_method_name_str)

    return int(hasattr(instance.owner, py_method_name_str))

cdef api void instance_call(GDExtensionScriptInstanceDataPtr p_self, GDExtensionConstStringNamePtr p_method, const GDExtensionConstVariantPtr *p_args, GDExtensionInt p_argument_count, GDExtensionVariantPtr r_return, GDExtensionCallError *r_error) with gil:
    print_error("call_method")
    cdef InstanceData instance = <InstanceData>p_self

    cdef StringName method_name = StringName.new_static(p_method)
    cdef String method_name_str = String.new2(method_name)
    cdef char* c_str = gd_string_c_string(gdnative_interface,method_name_str.godot_owner, method_name_str.length())
    cdef unicode py_method_name_str = gd_string_to_py_string(method_name_str)
    print_error("print_method:"+py_method_name_str)
    cdef list args = []
    cdef object result = None

    if(py_method_name_str == "_get_linked_undo_properties"):
        return

    if(py_method_name_str == "_dont_undo_redo"):
        return

    for index in range(0, p_argument_count):
        args.append(Variant.new_static(p_args[index]).get_converted_value())
    try:
        if not hasattr(instance.owner,py_method_name_str):
            return
        result = getattr(instance.owner, py_method_name_str)(*args)
    except Exception as e:
        print_error(f"An Exception happened:{e}|owner:{instance.owner}" )

    cdef Variant var = Variant.new_static(r_return)
    var.init_type(result)
    print_error(f"called method({py_method_name_str}):", result)
"""