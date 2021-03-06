from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorresourceconversionplugin__convert
cdef godot_method_bind *bind_editorresourceconversionplugin__converts_to
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorresourceconversionplugin__convert = api_core.godot_method_bind_get_method('EditorResourceConversionPlugin', '_convert')
  bind_editorresourceconversionplugin__converts_to = api_core.godot_method_bind_get_method('EditorResourceConversionPlugin', '_converts_to')

############################Generated class###################################
cdef class EditorResourceConversionPlugin(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorResourceConversionPlugin")())
##################################Generated Methods#########################################
  def  _convert(self, resource):
    cdef godot_object *_owner = self.godot_owner
    cdef Resource ret
    api_core.godot_method_bind_ptrcall(bind_editorresourceconversionplugin__convert,self.godot_owner,[NULL,],&ret)
  def  _converts_to(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorresourceconversionplugin__converts_to,self.godot_owner,[NULL,],&ret)
