
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
cimport classes.CSGPrimitive 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_csgbox_get_depth
cdef godot_method_bind *bind_csgbox_get_height
cdef godot_method_bind *bind_csgbox_get_material
cdef godot_method_bind *bind_csgbox_get_width
cdef godot_method_bind *bind_csgbox_set_depth
cdef godot_method_bind *bind_csgbox_set_height
cdef godot_method_bind *bind_csgbox_set_material
cdef godot_method_bind *bind_csgbox_set_width
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_csgbox_get_depth = api_core.godot_method_bind_get_method('CSGBox', 'get_depth')
  bind_csgbox_get_height = api_core.godot_method_bind_get_method('CSGBox', 'get_height')
  bind_csgbox_get_material = api_core.godot_method_bind_get_method('CSGBox', 'get_material')
  bind_csgbox_get_width = api_core.godot_method_bind_get_method('CSGBox', 'get_width')
  bind_csgbox_set_depth = api_core.godot_method_bind_get_method('CSGBox', 'set_depth')
  bind_csgbox_set_height = api_core.godot_method_bind_get_method('CSGBox', 'set_height')
  bind_csgbox_set_material = api_core.godot_method_bind_get_method('CSGBox', 'set_material')
  bind_csgbox_set_width = api_core.godot_method_bind_get_method('CSGBox', 'set_width')

############################Generated class###################################
cdef class CSGBox(classes.CSGPrimitive.CSGPrimitive):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CSGBox")())
##################################Generated Properties#########################################
  @property
  def depth(self): 
    return self.get_depth()
  @depth.setter 
  def depth(self,value): 
    self.set_depth(value)
  @property
  def height(self): 
    return self.get_height()
  @height.setter 
  def height(self,value): 
    self.set_height(value)
  @property
  def material(self): 
    return self.get_material()
  @material.setter 
  def material(self,value): 
    self.set_material(value)
  @property
  def width(self): 
    return self.get_width()
  @width.setter 
  def width(self,value): 
    self.set_width(value)

##################################Generated Methods#########################################
  def  get_depth(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgbox_get_depth,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_height(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgbox_get_height,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_material(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgbox_get_material,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_width(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgbox_get_width,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_depth(self,  float depth):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &depth
    api_core.godot_method_bind_ptrcall(bind_csgbox_set_depth,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_height(self,  float height):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &height
    api_core.godot_method_bind_ptrcall(bind_csgbox_set_height,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_material(self,  classes.Material.Material material):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = material.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgbox_set_material,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_width(self,  float width):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &width
    api_core.godot_method_bind_ptrcall(bind_csgbox_set_width,self.godot_owner,args,NULL)
    hello('hallo2')
