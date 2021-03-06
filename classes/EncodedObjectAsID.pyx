from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_encodedobjectasid_get_object_id
cdef godot_method_bind *bind_encodedobjectasid_set_object_id
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_encodedobjectasid_get_object_id = api_core.godot_method_bind_get_method('EncodedObjectAsID', 'get_object_id')
  bind_encodedobjectasid_set_object_id = api_core.godot_method_bind_get_method('EncodedObjectAsID', 'set_object_id')

############################Generated class###################################
cdef class EncodedObjectAsID(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EncodedObjectAsID")())
##################################Generated Properties#########################################
  @property
  def object_id(self): 
    return self.get_object_id()
  @object_id.setter 
  def object_id(self,value): 
    self.set_object_id(value)

##################################Generated Methods#########################################
  def  get_object_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_encodedobjectasid_get_object_id,self.godot_owner,[NULL,],&ret)
  def  set_object_id(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_encodedobjectasid_set_object_id,self.godot_owner,[NULL,],NULL)
