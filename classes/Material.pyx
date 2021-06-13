
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
cimport classes.Material
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_material_get_next_pass
cdef godot_method_bind *bind_material_get_render_priority
cdef godot_method_bind *bind_material_set_next_pass
cdef godot_method_bind *bind_material_set_render_priority
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_material_get_next_pass = api_core.godot_method_bind_get_method('Material', 'get_next_pass')
  bind_material_get_render_priority = api_core.godot_method_bind_get_method('Material', 'get_render_priority')
  bind_material_set_next_pass = api_core.godot_method_bind_get_method('Material', 'set_next_pass')
  bind_material_set_render_priority = api_core.godot_method_bind_get_method('Material', 'set_render_priority')

############################Generated class###################################
cdef class Material(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Material")())
##################################Generated Properties#########################################
  @property
  def next_pass(self): 
    return self.get_next_pass()
  @next_pass.setter 
  def next_pass(self,value): 
    self.set_next_pass(value)
  @property
  def render_priority(self): 
    return self.get_render_priority()
  @render_priority.setter 
  def render_priority(self,value): 
    self.set_render_priority(value)

##################################Generated Methods#########################################
  def  get_next_pass(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_material_get_next_pass,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_render_priority(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_material_get_render_priority,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_next_pass(self,  classes.Material.Material next_pass):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = next_pass.godot_owner
    api_core.godot_method_bind_ptrcall(bind_material_set_next_pass,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_render_priority(self,  int priority):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &priority
    api_core.godot_method_bind_ptrcall(bind_material_set_render_priority,self.godot_owner,args,NULL)
    hello('hallo2')
