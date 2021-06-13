
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
cimport classes.Popup 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_windowdialog__closed
cdef godot_method_bind *bind_windowdialog__gui_input
cdef godot_method_bind *bind_windowdialog_get_close_button
cdef godot_method_bind *bind_windowdialog_get_resizable
cdef godot_method_bind *bind_windowdialog_get_title
cdef godot_method_bind *bind_windowdialog_set_resizable
cdef godot_method_bind *bind_windowdialog_set_title
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_windowdialog__closed = api_core.godot_method_bind_get_method('WindowDialog', '_closed')
  bind_windowdialog__gui_input = api_core.godot_method_bind_get_method('WindowDialog', '_gui_input')
  bind_windowdialog_get_close_button = api_core.godot_method_bind_get_method('WindowDialog', 'get_close_button')
  bind_windowdialog_get_resizable = api_core.godot_method_bind_get_method('WindowDialog', 'get_resizable')
  bind_windowdialog_get_title = api_core.godot_method_bind_get_method('WindowDialog', 'get_title')
  bind_windowdialog_set_resizable = api_core.godot_method_bind_get_method('WindowDialog', 'set_resizable')
  bind_windowdialog_set_title = api_core.godot_method_bind_get_method('WindowDialog', 'set_title')

############################Generated class###################################
cdef class WindowDialog(classes.Popup.Popup):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("WindowDialog")())
##################################Generated Properties#########################################
  @property
  def resizable(self): 
    return self.get_resizable()
  @resizable.setter 
  def resizable(self,value): 
    self.set_resizable(value)
  @property
  def window_title(self): 
    return self.get_window_title()
  @window_title.setter 
  def window_title(self,value): 
    self.set_window_title(value)

##################################Generated Methods#########################################
  def  _closed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_windowdialog__closed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _gui_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_windowdialog__gui_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_close_button(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_windowdialog_get_close_button,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_resizable(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_windowdialog_get_resizable,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_title(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_windowdialog_get_title,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  set_resizable(self,  bool resizable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &resizable
    api_core.godot_method_bind_ptrcall(bind_windowdialog_set_resizable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_title(self,  String title):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &title._native
    api_core.godot_method_bind_ptrcall(bind_windowdialog_set_title,self.godot_owner,args,NULL)
    hello('hallo2')
