
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
cimport classes.InputEvent
cimport classes.InputEvent
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_shortcut_get_as_text
cdef godot_method_bind *bind_shortcut_get_shortcut
cdef godot_method_bind *bind_shortcut_is_shortcut
cdef godot_method_bind *bind_shortcut_is_valid
cdef godot_method_bind *bind_shortcut_set_shortcut
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_shortcut_get_as_text = api_core.godot_method_bind_get_method('ShortCut', 'get_as_text')
  bind_shortcut_get_shortcut = api_core.godot_method_bind_get_method('ShortCut', 'get_shortcut')
  bind_shortcut_is_shortcut = api_core.godot_method_bind_get_method('ShortCut', 'is_shortcut')
  bind_shortcut_is_valid = api_core.godot_method_bind_get_method('ShortCut', 'is_valid')
  bind_shortcut_set_shortcut = api_core.godot_method_bind_get_method('ShortCut', 'set_shortcut')

############################Generated class###################################
cdef class ShortCut(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ShortCut")())
##################################Generated Properties#########################################
  @property
  def shortcut(self): 
    return self.get_shortcut()
  @shortcut.setter 
  def shortcut(self,value): 
    self.set_shortcut(value)

##################################Generated Methods#########################################
  def  get_as_text(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_shortcut_get_as_text,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_shortcut(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_shortcut_get_shortcut,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_shortcut(self,  classes.InputEvent.InputEvent event):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_shortcut_is_shortcut,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_valid(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_shortcut_is_valid,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_shortcut(self,  classes.InputEvent.InputEvent event):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_shortcut_set_shortcut,self.godot_owner,args,NULL)
    hello('hallo2')
