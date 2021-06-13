
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
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_world2d_get_canvas
cdef godot_method_bind *bind_world2d_get_direct_space_state
cdef godot_method_bind *bind_world2d_get_space
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_world2d_get_canvas = api_core.godot_method_bind_get_method('World2D', 'get_canvas')
  bind_world2d_get_direct_space_state = api_core.godot_method_bind_get_method('World2D', 'get_direct_space_state')
  bind_world2d_get_space = api_core.godot_method_bind_get_method('World2D', 'get_space')

############################Generated class###################################
cdef class World2D(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("World2D")())
##################################Generated Properties#########################################
  @property
  def canvas(self): 
    return self.get_canvas()
  @canvas.setter 
  def canvas(self,value): 
    self.set_canvas(value)
  @property
  def direct_space_state(self): 
    return self.get_direct_space_state()
  @direct_space_state.setter 
  def direct_space_state(self,value): 
    self.set_direct_space_state(value)
  @property
  def space(self): 
    return self.get_space()
  @space.setter 
  def space(self,value): 
    self.set_space(value)

##################################Generated Methods#########################################
  def  get_canvas(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_world2d_get_canvas,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  get_direct_space_state(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_world2d_get_direct_space_state,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_space(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_world2d_get_space,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

