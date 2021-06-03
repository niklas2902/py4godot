
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
cimport classes.VisualScriptNode 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptyield_get_wait_time
cdef godot_method_bind *bind_visualscriptyield_get_yield_mode
cdef godot_method_bind *bind_visualscriptyield_set_wait_time
cdef godot_method_bind *bind_visualscriptyield_set_yield_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptyield_get_wait_time = api_core.godot_method_bind_get_method('VisualScriptYield', 'get_wait_time')
  bind_visualscriptyield_get_yield_mode = api_core.godot_method_bind_get_method('VisualScriptYield', 'get_yield_mode')
  bind_visualscriptyield_set_wait_time = api_core.godot_method_bind_get_method('VisualScriptYield', 'set_wait_time')
  bind_visualscriptyield_set_yield_mode = api_core.godot_method_bind_get_method('VisualScriptYield', 'set_yield_mode')

############################Generated class###################################
cdef class VisualScriptYield(classes.VisualScriptNode.VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptYield")())
##################################Generated Properties#########################################
  @property
  def mode(self): 
    return self.get_mode()
  @mode.setter 
  def mode(self,value): 
    self.set_mode(value)
  @property
  def wait_time(self): 
    return self.get_wait_time()
  @wait_time.setter 
  def wait_time(self,value): 
    self.set_wait_time(value)

##################################Generated Methods#########################################
  def  get_wait_time(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptyield_get_wait_time,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_yield_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef YieldMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptyield_get_yield_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_wait_time(self,  float sec):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &sec
    api_core.godot_method_bind_ptrcall(bind_visualscriptyield_set_wait_time,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_yield_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_visualscriptyield_set_yield_mode,self.godot_owner,args,NULL)
    hello('hallo2')
