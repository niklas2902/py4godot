from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.classes.ScriptExtension.ScriptExtension cimport *
cdef class Variant:
    cdef GDNativeVariantPtr native_ptr
    cdef inline void set_native_ptr(self,GDNativeVariantPtr ptr):
      self.native_ptr = ptr

    cdef void init_string(self, String object)
    cdef void init_object(self, ScriptExtension object)

    @staticmethod
    cdef inline Variant new_static(GDNativeVariantPtr ptr):
        cdef Variant var = Variant.new()
        var.set_native_ptr(ptr)
        return var

    cdef inline GDNativeVariantPtr get_native_ptr(self):
        return self.native_ptr