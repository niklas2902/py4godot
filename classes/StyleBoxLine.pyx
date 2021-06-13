
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
cimport classes.StyleBox 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_styleboxline_get_color
cdef godot_method_bind *bind_styleboxline_get_grow_begin
cdef godot_method_bind *bind_styleboxline_get_grow_end
cdef godot_method_bind *bind_styleboxline_get_thickness
cdef godot_method_bind *bind_styleboxline_is_vertical
cdef godot_method_bind *bind_styleboxline_set_color
cdef godot_method_bind *bind_styleboxline_set_grow_begin
cdef godot_method_bind *bind_styleboxline_set_grow_end
cdef godot_method_bind *bind_styleboxline_set_thickness
cdef godot_method_bind *bind_styleboxline_set_vertical
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_styleboxline_get_color = api_core.godot_method_bind_get_method('StyleBoxLine', 'get_color')
  bind_styleboxline_get_grow_begin = api_core.godot_method_bind_get_method('StyleBoxLine', 'get_grow_begin')
  bind_styleboxline_get_grow_end = api_core.godot_method_bind_get_method('StyleBoxLine', 'get_grow_end')
  bind_styleboxline_get_thickness = api_core.godot_method_bind_get_method('StyleBoxLine', 'get_thickness')
  bind_styleboxline_is_vertical = api_core.godot_method_bind_get_method('StyleBoxLine', 'is_vertical')
  bind_styleboxline_set_color = api_core.godot_method_bind_get_method('StyleBoxLine', 'set_color')
  bind_styleboxline_set_grow_begin = api_core.godot_method_bind_get_method('StyleBoxLine', 'set_grow_begin')
  bind_styleboxline_set_grow_end = api_core.godot_method_bind_get_method('StyleBoxLine', 'set_grow_end')
  bind_styleboxline_set_thickness = api_core.godot_method_bind_get_method('StyleBoxLine', 'set_thickness')
  bind_styleboxline_set_vertical = api_core.godot_method_bind_get_method('StyleBoxLine', 'set_vertical')

############################Generated class###################################
cdef class StyleBoxLine(classes.StyleBox.StyleBox):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("StyleBoxLine")())
##################################Generated Properties#########################################
  @property
  def color(self): 
    return self.get_color()
  @color.setter 
  def color(self,value): 
    self.set_color(value)
  @property
  def grow_begin(self): 
    return self.get_grow_begin()
  @grow_begin.setter 
  def grow_begin(self,value): 
    self.set_grow_begin(value)
  @property
  def grow_end(self): 
    return self.get_grow_end()
  @grow_end.setter 
  def grow_end(self,value): 
    self.set_grow_end(value)
  @property
  def thickness(self): 
    return self.get_thickness()
  @thickness.setter 
  def thickness(self,value): 
    self.set_thickness(value)
  @property
  def vertical(self): 
    return self.get_vertical()
  @vertical.setter 
  def vertical(self,value): 
    self.set_vertical(value)

##################################Generated Methods#########################################
  def  get_color(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxline_get_color,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_grow_begin(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxline_get_grow_begin,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_grow_end(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxline_get_grow_end,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_thickness(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxline_get_thickness,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_vertical(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxline_is_vertical,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_color(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_styleboxline_set_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_grow_begin(self,  float offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset
    api_core.godot_method_bind_ptrcall(bind_styleboxline_set_grow_begin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_grow_end(self,  float offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset
    api_core.godot_method_bind_ptrcall(bind_styleboxline_set_grow_end,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_thickness(self,  int thickness):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &thickness
    api_core.godot_method_bind_ptrcall(bind_styleboxline_set_thickness,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_vertical(self,  bool vertical):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &vertical
    api_core.godot_method_bind_ptrcall(bind_styleboxline_set_vertical,self.godot_owner,args,NULL)
    hello('hallo2')
