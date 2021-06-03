
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
cimport classes.Button 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_colorpickerbutton__color_changed
cdef godot_method_bind *bind_colorpickerbutton__modal_closed
cdef godot_method_bind *bind_colorpickerbutton_get_pick_color
cdef godot_method_bind *bind_colorpickerbutton_get_picker
cdef godot_method_bind *bind_colorpickerbutton_get_popup
cdef godot_method_bind *bind_colorpickerbutton_is_editing_alpha
cdef godot_method_bind *bind_colorpickerbutton_set_edit_alpha
cdef godot_method_bind *bind_colorpickerbutton_set_pick_color
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_colorpickerbutton__color_changed = api_core.godot_method_bind_get_method('ColorPickerButton', '_color_changed')
  bind_colorpickerbutton__modal_closed = api_core.godot_method_bind_get_method('ColorPickerButton', '_modal_closed')
  bind_colorpickerbutton_get_pick_color = api_core.godot_method_bind_get_method('ColorPickerButton', 'get_pick_color')
  bind_colorpickerbutton_get_picker = api_core.godot_method_bind_get_method('ColorPickerButton', 'get_picker')
  bind_colorpickerbutton_get_popup = api_core.godot_method_bind_get_method('ColorPickerButton', 'get_popup')
  bind_colorpickerbutton_is_editing_alpha = api_core.godot_method_bind_get_method('ColorPickerButton', 'is_editing_alpha')
  bind_colorpickerbutton_set_edit_alpha = api_core.godot_method_bind_get_method('ColorPickerButton', 'set_edit_alpha')
  bind_colorpickerbutton_set_pick_color = api_core.godot_method_bind_get_method('ColorPickerButton', 'set_pick_color')

############################Generated class###################################
cdef class ColorPickerButton(classes.Button.Button):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ColorPickerButton")())
##################################Generated Properties#########################################
  @property
  def color(self): 
    return self.get_color()
  @color.setter 
  def color(self,value): 
    self.set_color(value)
  @property
  def edit_alpha(self): 
    return self.get_edit_alpha()
  @edit_alpha.setter 
  def edit_alpha(self,value): 
    self.set_edit_alpha(value)

##################################Generated Methods#########################################
  def  _color_changed(self,  Color arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_colorpickerbutton__color_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _modal_closed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_colorpickerbutton__modal_closed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_pick_color(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_colorpickerbutton_get_pick_color,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_picker(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_colorpickerbutton_get_picker,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_popup(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_colorpickerbutton_get_popup,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_editing_alpha(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_colorpickerbutton_is_editing_alpha,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_edit_alpha(self,  bool show):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &show
    api_core.godot_method_bind_ptrcall(bind_colorpickerbutton_set_edit_alpha,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pick_color(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_colorpickerbutton_set_pick_color,self.godot_owner,args,NULL)
    hello('hallo2')
