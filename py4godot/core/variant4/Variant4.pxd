from py4godot.godot_bindings.binding4_godot4 cimport *
cdef class Variant:
    cdef GDNativeVariantPtr native_ptr
    cdef inline void set_native_ptr(self,GDNativeVariantPtr ptr):
      self.native_ptr = ptr

    cdef inline GDNativeVariantPtr get_native_ptr(self):
        return self.native_ptr