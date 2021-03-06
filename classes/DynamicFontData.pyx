from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_dynamicfontdata_get_font_path
cdef godot_method_bind *bind_dynamicfontdata_get_hinting
cdef godot_method_bind *bind_dynamicfontdata_is_antialiased
cdef godot_method_bind *bind_dynamicfontdata_set_antialiased
cdef godot_method_bind *bind_dynamicfontdata_set_font_path
cdef godot_method_bind *bind_dynamicfontdata_set_hinting
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_dynamicfontdata_get_font_path = api_core.godot_method_bind_get_method('DynamicFontData', 'get_font_path')
  bind_dynamicfontdata_get_hinting = api_core.godot_method_bind_get_method('DynamicFontData', 'get_hinting')
  bind_dynamicfontdata_is_antialiased = api_core.godot_method_bind_get_method('DynamicFontData', 'is_antialiased')
  bind_dynamicfontdata_set_antialiased = api_core.godot_method_bind_get_method('DynamicFontData', 'set_antialiased')
  bind_dynamicfontdata_set_font_path = api_core.godot_method_bind_get_method('DynamicFontData', 'set_font_path')
  bind_dynamicfontdata_set_hinting = api_core.godot_method_bind_get_method('DynamicFontData', 'set_hinting')

############################Generated class###################################
cdef class DynamicFontData(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("DynamicFontData")())
##################################Generated Properties#########################################
  @property
  def antialiased(self): 
    return self.get_antialiased()
  @antialiased.setter 
  def antialiased(self,value): 
    self.set_antialiased(value)
  @property
  def font_path(self): 
    return self.get_font_path()
  @font_path.setter 
  def font_path(self,value): 
    self.set_font_path(value)
  @property
  def hinting(self): 
    return self.get_hinting()
  @hinting.setter 
  def hinting(self,value): 
    self.set_hinting(value)

##################################Generated Methods#########################################
  def  get_font_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_dynamicfontdata_get_font_path,self.godot_owner,[NULL,],&ret)
  def  get_hinting(self):
    cdef godot_object *_owner = self.godot_owner
    cdef DynamicFontData::Hinting ret
    api_core.godot_method_bind_ptrcall(bind_dynamicfontdata_get_hinting,self.godot_owner,[NULL,],&ret)
  def  is_antialiased(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_dynamicfontdata_is_antialiased,self.godot_owner,[NULL,],&ret)
  def  set_antialiased(self, antialiased):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dynamicfontdata_set_antialiased,self.godot_owner,[NULL,],NULL)
  def  set_font_path(self, path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dynamicfontdata_set_font_path,self.godot_owner,[NULL,],NULL)
  def  set_hinting(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dynamicfontdata_set_hinting,self.godot_owner,[NULL,],NULL)
