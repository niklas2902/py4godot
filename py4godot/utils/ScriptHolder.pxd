# distutils: language=c++
cdef class ScriptHolder:
    cdef dict instances
    cdef object get_script(self, int id)
    cdef object register_script(self, int id, object script)
    cdef object remove_script(self, int id)

cdef ScriptHolder get_script_holder()