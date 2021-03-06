from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_skin_add_bind
cdef godot_method_bind *bind_skin_clear_binds
cdef godot_method_bind *bind_skin_get_bind_bone
cdef godot_method_bind *bind_skin_get_bind_count
cdef godot_method_bind *bind_skin_get_bind_pose
cdef godot_method_bind *bind_skin_set_bind_bone
cdef godot_method_bind *bind_skin_set_bind_count
cdef godot_method_bind *bind_skin_set_bind_pose
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_skin_add_bind = api_core.godot_method_bind_get_method('Skin', 'add_bind')
  bind_skin_clear_binds = api_core.godot_method_bind_get_method('Skin', 'clear_binds')
  bind_skin_get_bind_bone = api_core.godot_method_bind_get_method('Skin', 'get_bind_bone')
  bind_skin_get_bind_count = api_core.godot_method_bind_get_method('Skin', 'get_bind_count')
  bind_skin_get_bind_pose = api_core.godot_method_bind_get_method('Skin', 'get_bind_pose')
  bind_skin_set_bind_bone = api_core.godot_method_bind_get_method('Skin', 'set_bind_bone')
  bind_skin_set_bind_count = api_core.godot_method_bind_get_method('Skin', 'set_bind_count')
  bind_skin_set_bind_pose = api_core.godot_method_bind_get_method('Skin', 'set_bind_pose')

############################Generated class###################################
cdef class Skin(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Skin")())
##################################Generated Methods#########################################
  def  add_bind(self, bonepose):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skin_add_bind,self.godot_owner,[NULL,],NULL)
  def  clear_binds(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skin_clear_binds,self.godot_owner,[NULL,],NULL)
  def  get_bind_bone(self, bind_index):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_skin_get_bind_bone,self.godot_owner,[NULL,],&ret)
  def  get_bind_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_skin_get_bind_count,self.godot_owner,[NULL,],&ret)
  def  get_bind_pose(self, bind_index):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_skin_get_bind_pose,self.godot_owner,[NULL,],&ret)
  def  set_bind_bone(self, bind_indexbone):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skin_set_bind_bone,self.godot_owner,[NULL,],NULL)
  def  set_bind_count(self, bind_count):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skin_set_bind_count,self.godot_owner,[NULL,],NULL)
  def  set_bind_pose(self, bind_indexpose):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skin_set_bind_pose,self.godot_owner,[NULL,],NULL)
