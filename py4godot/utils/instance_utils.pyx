# distutils: language=c++
from py4godot.utils.print_tools import *
from py4godot.wrappers.wrappers cimport extract_ptr_from_ObjectWrapper
from py4godot.utils.CPPWrapper cimport CPPWrapper
cimport py4godot.classes.cpp_bridge as bridge
cdef api void set_owner(object o, void* owner):
    cdef CPPWrapper cppwrapper
    cdef bridge.Wrapper* bridge_wrapper
    try:
        cppwrapper = <CPPWrapper>o._ptr
        bridge_wrapper = cppwrapper.get_ptr()
        bridge_wrapper.set_godot_owner(owner)

        #extract_ptr_from_ObjectWrapper(o._ptr).get().set_godot_owner(owner)
    except Exception as e:
        print_error_detailed('instance_utils.pyx', 'set_owner', 9, "Exception:", e) # !this gets generated print_error

cdef api void set_default_val(object o, str attribute_name, object val):
    try:
        setattr(o, attribute_name, val)
    except Exception as e:
        print_error_detailed('instance_utils.pyx', 'set_default_val', 15, "Exception when setting attribute:", e) # !this gets generated print_error