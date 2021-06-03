
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
cimport classes.Node
cimport classes.WindowDialog 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_acceptdialog__builtin_text_entered
cdef godot_method_bind *bind_acceptdialog__custom_action
cdef godot_method_bind *bind_acceptdialog__ok
cdef godot_method_bind *bind_acceptdialog_add_button
cdef godot_method_bind *bind_acceptdialog_add_cancel
cdef godot_method_bind *bind_acceptdialog_get_hide_on_ok
cdef godot_method_bind *bind_acceptdialog_get_label
cdef godot_method_bind *bind_acceptdialog_get_ok
cdef godot_method_bind *bind_acceptdialog_get_text
cdef godot_method_bind *bind_acceptdialog_has_autowrap
cdef godot_method_bind *bind_acceptdialog_register_text_enter
cdef godot_method_bind *bind_acceptdialog_set_autowrap
cdef godot_method_bind *bind_acceptdialog_set_hide_on_ok
cdef godot_method_bind *bind_acceptdialog_set_text
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_acceptdialog__builtin_text_entered = api_core.godot_method_bind_get_method('AcceptDialog', '_builtin_text_entered')
  bind_acceptdialog__custom_action = api_core.godot_method_bind_get_method('AcceptDialog', '_custom_action')
  bind_acceptdialog__ok = api_core.godot_method_bind_get_method('AcceptDialog', '_ok')
  bind_acceptdialog_add_button = api_core.godot_method_bind_get_method('AcceptDialog', 'add_button')
  bind_acceptdialog_add_cancel = api_core.godot_method_bind_get_method('AcceptDialog', 'add_cancel')
  bind_acceptdialog_get_hide_on_ok = api_core.godot_method_bind_get_method('AcceptDialog', 'get_hide_on_ok')
  bind_acceptdialog_get_label = api_core.godot_method_bind_get_method('AcceptDialog', 'get_label')
  bind_acceptdialog_get_ok = api_core.godot_method_bind_get_method('AcceptDialog', 'get_ok')
  bind_acceptdialog_get_text = api_core.godot_method_bind_get_method('AcceptDialog', 'get_text')
  bind_acceptdialog_has_autowrap = api_core.godot_method_bind_get_method('AcceptDialog', 'has_autowrap')
  bind_acceptdialog_register_text_enter = api_core.godot_method_bind_get_method('AcceptDialog', 'register_text_enter')
  bind_acceptdialog_set_autowrap = api_core.godot_method_bind_get_method('AcceptDialog', 'set_autowrap')
  bind_acceptdialog_set_hide_on_ok = api_core.godot_method_bind_get_method('AcceptDialog', 'set_hide_on_ok')
  bind_acceptdialog_set_text = api_core.godot_method_bind_get_method('AcceptDialog', 'set_text')

############################Generated class###################################
cdef class AcceptDialog(classes.WindowDialog.WindowDialog):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AcceptDialog")())
##################################Generated Properties#########################################
  @property
  def dialog_autowrap(self): 
    return self.get_dialog_autowrap()
  @dialog_autowrap.setter 
  def dialog_autowrap(self,value): 
    self.set_dialog_autowrap(value)
  @property
  def dialog_hide_on_ok(self): 
    return self.get_dialog_hide_on_ok()
  @dialog_hide_on_ok.setter 
  def dialog_hide_on_ok(self,value): 
    self.set_dialog_hide_on_ok(value)
  @property
  def dialog_text(self): 
    return self.get_dialog_text()
  @dialog_text.setter 
  def dialog_text(self,value): 
    self.set_dialog_text(value)

##################################Generated Methods#########################################
  def  _builtin_text_entered(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_acceptdialog__builtin_text_entered,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _custom_action(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_acceptdialog__custom_action,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _ok(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_acceptdialog__ok,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  add_button(self,  String text,  bool right,  String action):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[3]

    args[0] = &text._native
    args[1] = &right
    args[2] = &action._native
    api_core.godot_method_bind_ptrcall(bind_acceptdialog_add_button,self.godot_owner,args,&ret)
    hello('hallo2')
  def  add_cancel(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_acceptdialog_add_cancel,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_hide_on_ok(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_acceptdialog_get_hide_on_ok,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_label(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_acceptdialog_get_label,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_ok(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_acceptdialog_get_ok,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_text(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_acceptdialog_get_text,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  has_autowrap(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_acceptdialog_has_autowrap,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  register_text_enter(self,  classes.Node.Node line_edit):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = line_edit.godot_owner
    api_core.godot_method_bind_ptrcall(bind_acceptdialog_register_text_enter,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_autowrap(self,  bool autowrap):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &autowrap
    api_core.godot_method_bind_ptrcall(bind_acceptdialog_set_autowrap,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_hide_on_ok(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_acceptdialog_set_hide_on_ok,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_text(self,  String text):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &text._native
    api_core.godot_method_bind_ptrcall(bind_acceptdialog_set_text,self.godot_owner,args,NULL)
    hello('hallo2')
