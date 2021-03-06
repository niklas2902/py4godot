from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_packedscene__get_bundled_scene
cdef godot_method_bind *bind_packedscene__set_bundled_scene
cdef godot_method_bind *bind_packedscene_can_instance
cdef godot_method_bind *bind_packedscene_get_state
cdef godot_method_bind *bind_packedscene_instance
cdef godot_method_bind *bind_packedscene_pack
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_packedscene__get_bundled_scene = api_core.godot_method_bind_get_method('PackedScene', '_get_bundled_scene')
  bind_packedscene__set_bundled_scene = api_core.godot_method_bind_get_method('PackedScene', '_set_bundled_scene')
  bind_packedscene_can_instance = api_core.godot_method_bind_get_method('PackedScene', 'can_instance')
  bind_packedscene_get_state = api_core.godot_method_bind_get_method('PackedScene', 'get_state')
  bind_packedscene_instance = api_core.godot_method_bind_get_method('PackedScene', 'instance')
  bind_packedscene_pack = api_core.godot_method_bind_get_method('PackedScene', 'pack')

############################Generated class###################################
cdef class PackedScene(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PackedScene")())
##################################Generated Properties#########################################
  @property
  def _bundled(self): 
    return self.get__bundled()
  @_bundled.setter 
  def _bundled(self,value): 
    self.set__bundled(value)

##################################Generated Methods#########################################
  def  _get_bundled_scene(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_packedscene__get_bundled_scene,self.godot_owner,[NULL,],&ret)
  def  _set_bundled_scene(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_packedscene__set_bundled_scene,self.godot_owner,[NULL,],NULL)
  def  can_instance(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_packedscene_can_instance,self.godot_owner,[NULL,],&ret)
  def  get_state(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SceneState ret
    api_core.godot_method_bind_ptrcall(bind_packedscene_get_state,self.godot_owner,[NULL,],&ret)
  def  instance(self, edit_state):
    cdef godot_object *_owner = self.godot_owner
    cdef Node ret
    api_core.godot_method_bind_ptrcall(bind_packedscene_instance,self.godot_owner,[NULL,],&ret)
  def  pack(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_packedscene_pack,self.godot_owner,[NULL,],&ret)
