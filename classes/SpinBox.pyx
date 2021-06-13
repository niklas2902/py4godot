
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
cimport classes.LineEdit
cimport classes.Range 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_spinbox__gui_input
cdef godot_method_bind *bind_spinbox__line_edit_focus_exit
cdef godot_method_bind *bind_spinbox__line_edit_input
cdef godot_method_bind *bind_spinbox__range_click_timeout
cdef godot_method_bind *bind_spinbox__text_entered
cdef godot_method_bind *bind_spinbox_apply
cdef godot_method_bind *bind_spinbox_get_align
cdef godot_method_bind *bind_spinbox_get_line_edit
cdef godot_method_bind *bind_spinbox_get_prefix
cdef godot_method_bind *bind_spinbox_get_suffix
cdef godot_method_bind *bind_spinbox_is_editable
cdef godot_method_bind *bind_spinbox_set_align
cdef godot_method_bind *bind_spinbox_set_editable
cdef godot_method_bind *bind_spinbox_set_prefix
cdef godot_method_bind *bind_spinbox_set_suffix
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_spinbox__gui_input = api_core.godot_method_bind_get_method('SpinBox', '_gui_input')
  bind_spinbox__line_edit_focus_exit = api_core.godot_method_bind_get_method('SpinBox', '_line_edit_focus_exit')
  bind_spinbox__line_edit_input = api_core.godot_method_bind_get_method('SpinBox', '_line_edit_input')
  bind_spinbox__range_click_timeout = api_core.godot_method_bind_get_method('SpinBox', '_range_click_timeout')
  bind_spinbox__text_entered = api_core.godot_method_bind_get_method('SpinBox', '_text_entered')
  bind_spinbox_apply = api_core.godot_method_bind_get_method('SpinBox', 'apply')
  bind_spinbox_get_align = api_core.godot_method_bind_get_method('SpinBox', 'get_align')
  bind_spinbox_get_line_edit = api_core.godot_method_bind_get_method('SpinBox', 'get_line_edit')
  bind_spinbox_get_prefix = api_core.godot_method_bind_get_method('SpinBox', 'get_prefix')
  bind_spinbox_get_suffix = api_core.godot_method_bind_get_method('SpinBox', 'get_suffix')
  bind_spinbox_is_editable = api_core.godot_method_bind_get_method('SpinBox', 'is_editable')
  bind_spinbox_set_align = api_core.godot_method_bind_get_method('SpinBox', 'set_align')
  bind_spinbox_set_editable = api_core.godot_method_bind_get_method('SpinBox', 'set_editable')
  bind_spinbox_set_prefix = api_core.godot_method_bind_get_method('SpinBox', 'set_prefix')
  bind_spinbox_set_suffix = api_core.godot_method_bind_get_method('SpinBox', 'set_suffix')

############################Generated class###################################
cdef class SpinBox(classes.Range.Range):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SpinBox")())
##################################Generated Properties#########################################
  @property
  def align(self): 
    return self.get_align()
  @align.setter 
  def align(self,value): 
    self.set_align(value)
  @property
  def editable(self): 
    return self.get_editable()
  @editable.setter 
  def editable(self,value): 
    self.set_editable(value)
  @property
  def prefix(self): 
    return self.get_prefix()
  @prefix.setter 
  def prefix(self,value): 
    self.set_prefix(value)
  @property
  def suffix(self): 
    return self.get_suffix()
  @suffix.setter 
  def suffix(self,value): 
    self.set_suffix(value)

##################################Generated Methods#########################################
  def  _gui_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spinbox__gui_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _line_edit_focus_exit(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_spinbox__line_edit_focus_exit,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _line_edit_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spinbox__line_edit_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _range_click_timeout(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_spinbox__range_click_timeout,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _text_entered(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_spinbox__text_entered,self.godot_owner,args,NULL)
    hello('hallo2')
  def  apply(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_spinbox_apply,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_align(self):
    cdef godot_object *_owner = self.godot_owner

    cdef classes.LineEdit.LineEdit_Align* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spinbox_get_align,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_line_edit(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spinbox_get_line_edit,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_prefix(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spinbox_get_prefix,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_suffix(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spinbox_get_suffix,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  is_editable(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spinbox_is_editable,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_align(self,  int align):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &align
    api_core.godot_method_bind_ptrcall(bind_spinbox_set_align,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_editable(self,  bool editable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &editable
    api_core.godot_method_bind_ptrcall(bind_spinbox_set_editable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_prefix(self,  String prefix):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &prefix._native
    api_core.godot_method_bind_ptrcall(bind_spinbox_set_prefix,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_suffix(self,  String suffix):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &suffix._native
    api_core.godot_method_bind_ptrcall(bind_spinbox_set_suffix,self.godot_owner,args,NULL)
    hello('hallo2')
