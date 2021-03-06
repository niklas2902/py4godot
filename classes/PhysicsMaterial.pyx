from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_physicsmaterial_get_bounce
cdef godot_method_bind *bind_physicsmaterial_get_friction
cdef godot_method_bind *bind_physicsmaterial_is_absorbent
cdef godot_method_bind *bind_physicsmaterial_is_rough
cdef godot_method_bind *bind_physicsmaterial_set_absorbent
cdef godot_method_bind *bind_physicsmaterial_set_bounce
cdef godot_method_bind *bind_physicsmaterial_set_friction
cdef godot_method_bind *bind_physicsmaterial_set_rough
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_physicsmaterial_get_bounce = api_core.godot_method_bind_get_method('PhysicsMaterial', 'get_bounce')
  bind_physicsmaterial_get_friction = api_core.godot_method_bind_get_method('PhysicsMaterial', 'get_friction')
  bind_physicsmaterial_is_absorbent = api_core.godot_method_bind_get_method('PhysicsMaterial', 'is_absorbent')
  bind_physicsmaterial_is_rough = api_core.godot_method_bind_get_method('PhysicsMaterial', 'is_rough')
  bind_physicsmaterial_set_absorbent = api_core.godot_method_bind_get_method('PhysicsMaterial', 'set_absorbent')
  bind_physicsmaterial_set_bounce = api_core.godot_method_bind_get_method('PhysicsMaterial', 'set_bounce')
  bind_physicsmaterial_set_friction = api_core.godot_method_bind_get_method('PhysicsMaterial', 'set_friction')
  bind_physicsmaterial_set_rough = api_core.godot_method_bind_get_method('PhysicsMaterial', 'set_rough')

############################Generated class###################################
cdef class PhysicsMaterial(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PhysicsMaterial")())
##################################Generated Properties#########################################
  @property
  def absorbent(self): 
    return self.get_absorbent()
  @absorbent.setter 
  def absorbent(self,value): 
    self.set_absorbent(value)
  @property
  def bounce(self): 
    return self.get_bounce()
  @bounce.setter 
  def bounce(self,value): 
    self.set_bounce(value)
  @property
  def friction(self): 
    return self.get_friction()
  @friction.setter 
  def friction(self,value): 
    self.set_friction(value)
  @property
  def rough(self): 
    return self.get_rough()
  @rough.setter 
  def rough(self,value): 
    self.set_rough(value)

##################################Generated Methods#########################################
  def  get_bounce(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicsmaterial_get_bounce,self.godot_owner,[NULL,],&ret)
  def  get_friction(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicsmaterial_get_friction,self.godot_owner,[NULL,],&ret)
  def  is_absorbent(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physicsmaterial_is_absorbent,self.godot_owner,[NULL,],&ret)
  def  is_rough(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physicsmaterial_is_rough,self.godot_owner,[NULL,],&ret)
  def  set_absorbent(self, absorbent):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsmaterial_set_absorbent,self.godot_owner,[NULL,],NULL)
  def  set_bounce(self, bounce):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsmaterial_set_bounce,self.godot_owner,[NULL,],NULL)
  def  set_friction(self, friction):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsmaterial_set_friction,self.godot_owner,[NULL,],NULL)
  def  set_rough(self, rough):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsmaterial_set_rough,self.godot_owner,[NULL,],NULL)
