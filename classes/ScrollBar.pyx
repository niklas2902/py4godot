
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
cimport classes.Range 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_scrollbar__drag_node_exit
cdef godot_method_bind *bind_scrollbar__drag_node_input
cdef godot_method_bind *bind_scrollbar__gui_input
cdef godot_method_bind *bind_scrollbar_get_custom_step
cdef godot_method_bind *bind_scrollbar_set_custom_step
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_scrollbar__drag_node_exit = api_core.godot_method_bind_get_method('ScrollBar', '_drag_node_exit')
  bind_scrollbar__drag_node_input = api_core.godot_method_bind_get_method('ScrollBar', '_drag_node_input')
  bind_scrollbar__gui_input = api_core.godot_method_bind_get_method('ScrollBar', '_gui_input')
  bind_scrollbar_get_custom_step = api_core.godot_method_bind_get_method('ScrollBar', 'get_custom_step')
  bind_scrollbar_set_custom_step = api_core.godot_method_bind_get_method('ScrollBar', 'set_custom_step')

############################Generated class###################################
cdef class ScrollBar(classes.Range.Range):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ScrollBar")())
##################################Generated Properties#########################################
  @property
  def custom_step(self): 
    return self.get_custom_step()
  @custom_step.setter 
  def custom_step(self,value): 
    self.set_custom_step(value)

##################################Generated Methods#########################################
  def  _drag_node_exit(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scrollbar__drag_node_exit,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _drag_node_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollbar__drag_node_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _gui_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollbar__gui_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_custom_step(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scrollbar_get_custom_step,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_custom_step(self,  float step):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &step
    api_core.godot_method_bind_ptrcall(bind_scrollbar_set_custom_step,self.godot_owner,args,NULL)
    hello('hallo2')
