
##################################Import gdnative api#########################################
from enum import *
from utils.Wrapper cimport *
from classes.Reference cimport Reference
from core.node_path.NodePath cimport NodePath
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.array.Array cimport Array
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.basis.Basis cimport Basis
from core.aabb.AABB cimport AABB
from core.dictionary.Dictionary cimport Dictionary
from core.pool_array.PoolArrays cimport *
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from core.vector3.Vector3 cimport Vector3
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Node
cimport classes.Resource 

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
cdef class PackedScene(classes.Resource.Resource):
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

    cdef godot_dictionary* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_packedscene__get_bundled_scene,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  _set_bundled_scene(self,  Dictionary arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_packedscene__set_bundled_scene,self.godot_owner,args,NULL)
    hello('hallo2')
  def  can_instance(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_packedscene_can_instance,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_state(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_packedscene_get_state,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  instance(self,  int edit_state):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &edit_state
    api_core.godot_method_bind_ptrcall(bind_packedscene_instance,self.godot_owner,args,&ret)
    hello('hallo2')
  def  pack(self,  classes.Node.Node path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = path.godot_owner
    api_core.godot_method_bind_ptrcall(bind_packedscene_pack,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

