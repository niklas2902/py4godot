
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
cimport classes.AnimationNode 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animationnodetransition_get_cross_fade_time
cdef godot_method_bind *bind_animationnodetransition_get_enabled_inputs
cdef godot_method_bind *bind_animationnodetransition_get_input_caption
cdef godot_method_bind *bind_animationnodetransition_is_input_set_as_auto_advance
cdef godot_method_bind *bind_animationnodetransition_set_cross_fade_time
cdef godot_method_bind *bind_animationnodetransition_set_enabled_inputs
cdef godot_method_bind *bind_animationnodetransition_set_input_as_auto_advance
cdef godot_method_bind *bind_animationnodetransition_set_input_caption
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animationnodetransition_get_cross_fade_time = api_core.godot_method_bind_get_method('AnimationNodeTransition', 'get_cross_fade_time')
  bind_animationnodetransition_get_enabled_inputs = api_core.godot_method_bind_get_method('AnimationNodeTransition', 'get_enabled_inputs')
  bind_animationnodetransition_get_input_caption = api_core.godot_method_bind_get_method('AnimationNodeTransition', 'get_input_caption')
  bind_animationnodetransition_is_input_set_as_auto_advance = api_core.godot_method_bind_get_method('AnimationNodeTransition', 'is_input_set_as_auto_advance')
  bind_animationnodetransition_set_cross_fade_time = api_core.godot_method_bind_get_method('AnimationNodeTransition', 'set_cross_fade_time')
  bind_animationnodetransition_set_enabled_inputs = api_core.godot_method_bind_get_method('AnimationNodeTransition', 'set_enabled_inputs')
  bind_animationnodetransition_set_input_as_auto_advance = api_core.godot_method_bind_get_method('AnimationNodeTransition', 'set_input_as_auto_advance')
  bind_animationnodetransition_set_input_caption = api_core.godot_method_bind_get_method('AnimationNodeTransition', 'set_input_caption')

############################Generated class###################################
cdef class AnimationNodeTransition(classes.AnimationNode.AnimationNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimationNodeTransition")())
##################################Generated Properties#########################################
  @property
  def input_0_auto_advance(self): 
    return self.get_input_0_auto_advance()
  @input_0_auto_advance.setter 
  def input_0_auto_advance(self,value): 
    self.set_input_0_auto_advance(value)
  @property
  def input_0_name(self): 
    return self.get_input_0_name()
  @input_0_name.setter 
  def input_0_name(self,value): 
    self.set_input_0_name(value)
  @property
  def input_1_auto_advance(self): 
    return self.get_input_1_auto_advance()
  @input_1_auto_advance.setter 
  def input_1_auto_advance(self,value): 
    self.set_input_1_auto_advance(value)
  @property
  def input_1_name(self): 
    return self.get_input_1_name()
  @input_1_name.setter 
  def input_1_name(self,value): 
    self.set_input_1_name(value)
  @property
  def input_10_auto_advance(self): 
    return self.get_input_10_auto_advance()
  @input_10_auto_advance.setter 
  def input_10_auto_advance(self,value): 
    self.set_input_10_auto_advance(value)
  @property
  def input_10_name(self): 
    return self.get_input_10_name()
  @input_10_name.setter 
  def input_10_name(self,value): 
    self.set_input_10_name(value)
  @property
  def input_11_auto_advance(self): 
    return self.get_input_11_auto_advance()
  @input_11_auto_advance.setter 
  def input_11_auto_advance(self,value): 
    self.set_input_11_auto_advance(value)
  @property
  def input_11_name(self): 
    return self.get_input_11_name()
  @input_11_name.setter 
  def input_11_name(self,value): 
    self.set_input_11_name(value)
  @property
  def input_12_auto_advance(self): 
    return self.get_input_12_auto_advance()
  @input_12_auto_advance.setter 
  def input_12_auto_advance(self,value): 
    self.set_input_12_auto_advance(value)
  @property
  def input_12_name(self): 
    return self.get_input_12_name()
  @input_12_name.setter 
  def input_12_name(self,value): 
    self.set_input_12_name(value)
  @property
  def input_13_auto_advance(self): 
    return self.get_input_13_auto_advance()
  @input_13_auto_advance.setter 
  def input_13_auto_advance(self,value): 
    self.set_input_13_auto_advance(value)
  @property
  def input_13_name(self): 
    return self.get_input_13_name()
  @input_13_name.setter 
  def input_13_name(self,value): 
    self.set_input_13_name(value)
  @property
  def input_14_auto_advance(self): 
    return self.get_input_14_auto_advance()
  @input_14_auto_advance.setter 
  def input_14_auto_advance(self,value): 
    self.set_input_14_auto_advance(value)
  @property
  def input_14_name(self): 
    return self.get_input_14_name()
  @input_14_name.setter 
  def input_14_name(self,value): 
    self.set_input_14_name(value)
  @property
  def input_15_auto_advance(self): 
    return self.get_input_15_auto_advance()
  @input_15_auto_advance.setter 
  def input_15_auto_advance(self,value): 
    self.set_input_15_auto_advance(value)
  @property
  def input_15_name(self): 
    return self.get_input_15_name()
  @input_15_name.setter 
  def input_15_name(self,value): 
    self.set_input_15_name(value)
  @property
  def input_16_auto_advance(self): 
    return self.get_input_16_auto_advance()
  @input_16_auto_advance.setter 
  def input_16_auto_advance(self,value): 
    self.set_input_16_auto_advance(value)
  @property
  def input_16_name(self): 
    return self.get_input_16_name()
  @input_16_name.setter 
  def input_16_name(self,value): 
    self.set_input_16_name(value)
  @property
  def input_17_auto_advance(self): 
    return self.get_input_17_auto_advance()
  @input_17_auto_advance.setter 
  def input_17_auto_advance(self,value): 
    self.set_input_17_auto_advance(value)
  @property
  def input_17_name(self): 
    return self.get_input_17_name()
  @input_17_name.setter 
  def input_17_name(self,value): 
    self.set_input_17_name(value)
  @property
  def input_18_auto_advance(self): 
    return self.get_input_18_auto_advance()
  @input_18_auto_advance.setter 
  def input_18_auto_advance(self,value): 
    self.set_input_18_auto_advance(value)
  @property
  def input_18_name(self): 
    return self.get_input_18_name()
  @input_18_name.setter 
  def input_18_name(self,value): 
    self.set_input_18_name(value)
  @property
  def input_19_auto_advance(self): 
    return self.get_input_19_auto_advance()
  @input_19_auto_advance.setter 
  def input_19_auto_advance(self,value): 
    self.set_input_19_auto_advance(value)
  @property
  def input_19_name(self): 
    return self.get_input_19_name()
  @input_19_name.setter 
  def input_19_name(self,value): 
    self.set_input_19_name(value)
  @property
  def input_2_auto_advance(self): 
    return self.get_input_2_auto_advance()
  @input_2_auto_advance.setter 
  def input_2_auto_advance(self,value): 
    self.set_input_2_auto_advance(value)
  @property
  def input_2_name(self): 
    return self.get_input_2_name()
  @input_2_name.setter 
  def input_2_name(self,value): 
    self.set_input_2_name(value)
  @property
  def input_20_auto_advance(self): 
    return self.get_input_20_auto_advance()
  @input_20_auto_advance.setter 
  def input_20_auto_advance(self,value): 
    self.set_input_20_auto_advance(value)
  @property
  def input_20_name(self): 
    return self.get_input_20_name()
  @input_20_name.setter 
  def input_20_name(self,value): 
    self.set_input_20_name(value)
  @property
  def input_21_auto_advance(self): 
    return self.get_input_21_auto_advance()
  @input_21_auto_advance.setter 
  def input_21_auto_advance(self,value): 
    self.set_input_21_auto_advance(value)
  @property
  def input_21_name(self): 
    return self.get_input_21_name()
  @input_21_name.setter 
  def input_21_name(self,value): 
    self.set_input_21_name(value)
  @property
  def input_22_auto_advance(self): 
    return self.get_input_22_auto_advance()
  @input_22_auto_advance.setter 
  def input_22_auto_advance(self,value): 
    self.set_input_22_auto_advance(value)
  @property
  def input_22_name(self): 
    return self.get_input_22_name()
  @input_22_name.setter 
  def input_22_name(self,value): 
    self.set_input_22_name(value)
  @property
  def input_23_auto_advance(self): 
    return self.get_input_23_auto_advance()
  @input_23_auto_advance.setter 
  def input_23_auto_advance(self,value): 
    self.set_input_23_auto_advance(value)
  @property
  def input_23_name(self): 
    return self.get_input_23_name()
  @input_23_name.setter 
  def input_23_name(self,value): 
    self.set_input_23_name(value)
  @property
  def input_24_auto_advance(self): 
    return self.get_input_24_auto_advance()
  @input_24_auto_advance.setter 
  def input_24_auto_advance(self,value): 
    self.set_input_24_auto_advance(value)
  @property
  def input_24_name(self): 
    return self.get_input_24_name()
  @input_24_name.setter 
  def input_24_name(self,value): 
    self.set_input_24_name(value)
  @property
  def input_25_auto_advance(self): 
    return self.get_input_25_auto_advance()
  @input_25_auto_advance.setter 
  def input_25_auto_advance(self,value): 
    self.set_input_25_auto_advance(value)
  @property
  def input_25_name(self): 
    return self.get_input_25_name()
  @input_25_name.setter 
  def input_25_name(self,value): 
    self.set_input_25_name(value)
  @property
  def input_26_auto_advance(self): 
    return self.get_input_26_auto_advance()
  @input_26_auto_advance.setter 
  def input_26_auto_advance(self,value): 
    self.set_input_26_auto_advance(value)
  @property
  def input_26_name(self): 
    return self.get_input_26_name()
  @input_26_name.setter 
  def input_26_name(self,value): 
    self.set_input_26_name(value)
  @property
  def input_27_auto_advance(self): 
    return self.get_input_27_auto_advance()
  @input_27_auto_advance.setter 
  def input_27_auto_advance(self,value): 
    self.set_input_27_auto_advance(value)
  @property
  def input_27_name(self): 
    return self.get_input_27_name()
  @input_27_name.setter 
  def input_27_name(self,value): 
    self.set_input_27_name(value)
  @property
  def input_28_auto_advance(self): 
    return self.get_input_28_auto_advance()
  @input_28_auto_advance.setter 
  def input_28_auto_advance(self,value): 
    self.set_input_28_auto_advance(value)
  @property
  def input_28_name(self): 
    return self.get_input_28_name()
  @input_28_name.setter 
  def input_28_name(self,value): 
    self.set_input_28_name(value)
  @property
  def input_29_auto_advance(self): 
    return self.get_input_29_auto_advance()
  @input_29_auto_advance.setter 
  def input_29_auto_advance(self,value): 
    self.set_input_29_auto_advance(value)
  @property
  def input_29_name(self): 
    return self.get_input_29_name()
  @input_29_name.setter 
  def input_29_name(self,value): 
    self.set_input_29_name(value)
  @property
  def input_3_auto_advance(self): 
    return self.get_input_3_auto_advance()
  @input_3_auto_advance.setter 
  def input_3_auto_advance(self,value): 
    self.set_input_3_auto_advance(value)
  @property
  def input_3_name(self): 
    return self.get_input_3_name()
  @input_3_name.setter 
  def input_3_name(self,value): 
    self.set_input_3_name(value)
  @property
  def input_30_auto_advance(self): 
    return self.get_input_30_auto_advance()
  @input_30_auto_advance.setter 
  def input_30_auto_advance(self,value): 
    self.set_input_30_auto_advance(value)
  @property
  def input_30_name(self): 
    return self.get_input_30_name()
  @input_30_name.setter 
  def input_30_name(self,value): 
    self.set_input_30_name(value)
  @property
  def input_31_auto_advance(self): 
    return self.get_input_31_auto_advance()
  @input_31_auto_advance.setter 
  def input_31_auto_advance(self,value): 
    self.set_input_31_auto_advance(value)
  @property
  def input_31_name(self): 
    return self.get_input_31_name()
  @input_31_name.setter 
  def input_31_name(self,value): 
    self.set_input_31_name(value)
  @property
  def input_4_auto_advance(self): 
    return self.get_input_4_auto_advance()
  @input_4_auto_advance.setter 
  def input_4_auto_advance(self,value): 
    self.set_input_4_auto_advance(value)
  @property
  def input_4_name(self): 
    return self.get_input_4_name()
  @input_4_name.setter 
  def input_4_name(self,value): 
    self.set_input_4_name(value)
  @property
  def input_5_auto_advance(self): 
    return self.get_input_5_auto_advance()
  @input_5_auto_advance.setter 
  def input_5_auto_advance(self,value): 
    self.set_input_5_auto_advance(value)
  @property
  def input_5_name(self): 
    return self.get_input_5_name()
  @input_5_name.setter 
  def input_5_name(self,value): 
    self.set_input_5_name(value)
  @property
  def input_6_auto_advance(self): 
    return self.get_input_6_auto_advance()
  @input_6_auto_advance.setter 
  def input_6_auto_advance(self,value): 
    self.set_input_6_auto_advance(value)
  @property
  def input_6_name(self): 
    return self.get_input_6_name()
  @input_6_name.setter 
  def input_6_name(self,value): 
    self.set_input_6_name(value)
  @property
  def input_7_auto_advance(self): 
    return self.get_input_7_auto_advance()
  @input_7_auto_advance.setter 
  def input_7_auto_advance(self,value): 
    self.set_input_7_auto_advance(value)
  @property
  def input_7_name(self): 
    return self.get_input_7_name()
  @input_7_name.setter 
  def input_7_name(self,value): 
    self.set_input_7_name(value)
  @property
  def input_8_auto_advance(self): 
    return self.get_input_8_auto_advance()
  @input_8_auto_advance.setter 
  def input_8_auto_advance(self,value): 
    self.set_input_8_auto_advance(value)
  @property
  def input_8_name(self): 
    return self.get_input_8_name()
  @input_8_name.setter 
  def input_8_name(self,value): 
    self.set_input_8_name(value)
  @property
  def input_9_auto_advance(self): 
    return self.get_input_9_auto_advance()
  @input_9_auto_advance.setter 
  def input_9_auto_advance(self,value): 
    self.set_input_9_auto_advance(value)
  @property
  def input_9_name(self): 
    return self.get_input_9_name()
  @input_9_name.setter 
  def input_9_name(self,value): 
    self.set_input_9_name(value)
  @property
  def input_count(self): 
    return self.get_input_count()
  @input_count.setter 
  def input_count(self,value): 
    self.set_input_count(value)
  @property
  def xfade_time(self): 
    return self.get_xfade_time()
  @xfade_time.setter 
  def xfade_time(self,value): 
    self.set_xfade_time(value)

##################################Generated Methods#########################################
  def  get_cross_fade_time(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnodetransition_get_cross_fade_time,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_enabled_inputs(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnodetransition_get_enabled_inputs,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_input_caption(self,  int input):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &input
    api_core.godot_method_bind_ptrcall(bind_animationnodetransition_get_input_caption,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  is_input_set_as_auto_advance(self,  int input):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &input
    api_core.godot_method_bind_ptrcall(bind_animationnodetransition_is_input_set_as_auto_advance,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_cross_fade_time(self,  float time):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &time
    api_core.godot_method_bind_ptrcall(bind_animationnodetransition_set_cross_fade_time,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_enabled_inputs(self,  int amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_animationnodetransition_set_enabled_inputs,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_input_as_auto_advance(self,  int input,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &input
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_animationnodetransition_set_input_as_auto_advance,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_input_caption(self,  int input,  String caption):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &input
    args[1] = &caption._native
    api_core.godot_method_bind_ptrcall(bind_animationnodetransition_set_input_caption,self.godot_owner,args,NULL)
    hello('hallo2')
