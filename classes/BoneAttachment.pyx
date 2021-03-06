from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_boneattachment_get_bone_name
cdef godot_method_bind *bind_boneattachment_set_bone_name
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_boneattachment_get_bone_name = api_core.godot_method_bind_get_method('BoneAttachment', 'get_bone_name')
  bind_boneattachment_set_bone_name = api_core.godot_method_bind_get_method('BoneAttachment', 'set_bone_name')

############################Generated class###################################
cdef class BoneAttachment(Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("BoneAttachment")())
##################################Generated Properties#########################################
  @property
  def bone_name(self): 
    return self.get_bone_name()
  @bone_name.setter 
  def bone_name(self,value): 
    self.set_bone_name(value)

##################################Generated Methods#########################################
  def  get_bone_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_boneattachment_get_bone_name,self.godot_owner,[NULL,],&ret)
  def  set_bone_name(self, bone_name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_boneattachment_set_bone_name,self.godot_owner,[NULL,],NULL)
