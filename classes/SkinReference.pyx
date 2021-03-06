from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_skinreference__skin_changed
cdef godot_method_bind *bind_skinreference_get_skeleton
cdef godot_method_bind *bind_skinreference_get_skin
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_skinreference__skin_changed = api_core.godot_method_bind_get_method('SkinReference', '_skin_changed')
  bind_skinreference_get_skeleton = api_core.godot_method_bind_get_method('SkinReference', 'get_skeleton')
  bind_skinreference_get_skin = api_core.godot_method_bind_get_method('SkinReference', 'get_skin')

############################Generated class###################################
cdef class SkinReference(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SkinReference")())
##################################Generated Methods#########################################
  def  _skin_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skinreference__skin_changed,self.godot_owner,[NULL,],NULL)
  def  get_skeleton(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_skinreference_get_skeleton,self.godot_owner,[NULL,],&ret)
  def  get_skin(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Skin ret
    api_core.godot_method_bind_ptrcall(bind_skinreference_get_skin,self.godot_owner,[NULL,],&ret)
