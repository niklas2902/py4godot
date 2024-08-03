# distutils: language=c++
from py4godot.classes.Object.Object cimport *

cdef ScriptHolder _script_holder = ScriptHolder()

cdef class ScriptHolder:
    def __init__(self):
        self.instances = dict()
    cdef object get_script(self,int id):
        if id in self.instances.keys():
            return self.instances[id]
        return None
    cdef object register_script(self,int id, object script):
        self. instances[id] = script
    cdef object remove_script(self,int id):
        del self.instances[id]

cdef ScriptHolder get_script_holder():
    return _script_holder