from classes.Control cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_label_get_align
cdef godot_method_bind *bind_label_get_line_count
cdef godot_method_bind *bind_label_get_line_height
cdef godot_method_bind *bind_label_get_lines_skipped
cdef godot_method_bind *bind_label_get_max_lines_visible
cdef godot_method_bind *bind_label_get_percent_visible
cdef godot_method_bind *bind_label_get_text
cdef godot_method_bind *bind_label_get_total_character_count
cdef godot_method_bind *bind_label_get_valign
cdef godot_method_bind *bind_label_get_visible_characters
cdef godot_method_bind *bind_label_get_visible_line_count
cdef godot_method_bind *bind_label_has_autowrap
cdef godot_method_bind *bind_label_is_clipping_text
cdef godot_method_bind *bind_label_is_uppercase
cdef godot_method_bind *bind_label_set_align
cdef godot_method_bind *bind_label_set_autowrap
cdef godot_method_bind *bind_label_set_clip_text
cdef godot_method_bind *bind_label_set_lines_skipped
cdef godot_method_bind *bind_label_set_max_lines_visible
cdef godot_method_bind *bind_label_set_percent_visible
cdef godot_method_bind *bind_label_set_text
cdef godot_method_bind *bind_label_set_uppercase
cdef godot_method_bind *bind_label_set_valign
cdef godot_method_bind *bind_label_set_visible_characters
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_label_get_align = api_core.godot_method_bind_get_method('Label', 'get_align')
  bind_label_get_line_count = api_core.godot_method_bind_get_method('Label', 'get_line_count')
  bind_label_get_line_height = api_core.godot_method_bind_get_method('Label', 'get_line_height')
  bind_label_get_lines_skipped = api_core.godot_method_bind_get_method('Label', 'get_lines_skipped')
  bind_label_get_max_lines_visible = api_core.godot_method_bind_get_method('Label', 'get_max_lines_visible')
  bind_label_get_percent_visible = api_core.godot_method_bind_get_method('Label', 'get_percent_visible')
  bind_label_get_text = api_core.godot_method_bind_get_method('Label', 'get_text')
  bind_label_get_total_character_count = api_core.godot_method_bind_get_method('Label', 'get_total_character_count')
  bind_label_get_valign = api_core.godot_method_bind_get_method('Label', 'get_valign')
  bind_label_get_visible_characters = api_core.godot_method_bind_get_method('Label', 'get_visible_characters')
  bind_label_get_visible_line_count = api_core.godot_method_bind_get_method('Label', 'get_visible_line_count')
  bind_label_has_autowrap = api_core.godot_method_bind_get_method('Label', 'has_autowrap')
  bind_label_is_clipping_text = api_core.godot_method_bind_get_method('Label', 'is_clipping_text')
  bind_label_is_uppercase = api_core.godot_method_bind_get_method('Label', 'is_uppercase')
  bind_label_set_align = api_core.godot_method_bind_get_method('Label', 'set_align')
  bind_label_set_autowrap = api_core.godot_method_bind_get_method('Label', 'set_autowrap')
  bind_label_set_clip_text = api_core.godot_method_bind_get_method('Label', 'set_clip_text')
  bind_label_set_lines_skipped = api_core.godot_method_bind_get_method('Label', 'set_lines_skipped')
  bind_label_set_max_lines_visible = api_core.godot_method_bind_get_method('Label', 'set_max_lines_visible')
  bind_label_set_percent_visible = api_core.godot_method_bind_get_method('Label', 'set_percent_visible')
  bind_label_set_text = api_core.godot_method_bind_get_method('Label', 'set_text')
  bind_label_set_uppercase = api_core.godot_method_bind_get_method('Label', 'set_uppercase')
  bind_label_set_valign = api_core.godot_method_bind_get_method('Label', 'set_valign')
  bind_label_set_visible_characters = api_core.godot_method_bind_get_method('Label', 'set_visible_characters')

############################Generated class###################################
cdef class Label(Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Label")())
##################################Generated Properties#########################################
  @property
  def align(self): 
    return self.get_align()
  @align.setter 
  def align(self,value): 
    self.set_align(value)
  @property
  def autowrap(self): 
    return self.get_autowrap()
  @autowrap.setter 
  def autowrap(self,value): 
    self.set_autowrap(value)
  @property
  def clip_text(self): 
    return self.get_clip_text()
  @clip_text.setter 
  def clip_text(self,value): 
    self.set_clip_text(value)
  @property
  def lines_skipped(self): 
    return self.get_lines_skipped()
  @lines_skipped.setter 
  def lines_skipped(self,value): 
    self.set_lines_skipped(value)
  @property
  def max_lines_visible(self): 
    return self.get_max_lines_visible()
  @max_lines_visible.setter 
  def max_lines_visible(self,value): 
    self.set_max_lines_visible(value)
  @property
  def percent_visible(self): 
    return self.get_percent_visible()
  @percent_visible.setter 
  def percent_visible(self,value): 
    self.set_percent_visible(value)
  @property
  def text(self): 
    return self.get_text()
  @text.setter 
  def text(self,value): 
    self.set_text(value)
  @property
  def uppercase(self): 
    return self.get_uppercase()
  @uppercase.setter 
  def uppercase(self,value): 
    self.set_uppercase(value)
  @property
  def valign(self): 
    return self.get_valign()
  @valign.setter 
  def valign(self,value): 
    self.set_valign(value)
  @property
  def visible_characters(self): 
    return self.get_visible_characters()
  @visible_characters.setter 
  def visible_characters(self,value): 
    self.set_visible_characters(value)

##################################Generated Methods#########################################
  def  get_align(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Label::Align ret
    api_core.godot_method_bind_ptrcall(bind_label_get_align,self.godot_owner,[NULL,],&ret)
  def  get_line_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_label_get_line_count,self.godot_owner,[NULL,],&ret)
  def  get_line_height(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_label_get_line_height,self.godot_owner,[NULL,],&ret)
  def  get_lines_skipped(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_label_get_lines_skipped,self.godot_owner,[NULL,],&ret)
  def  get_max_lines_visible(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_label_get_max_lines_visible,self.godot_owner,[NULL,],&ret)
  def  get_percent_visible(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_label_get_percent_visible,self.godot_owner,[NULL,],&ret)
  def  get_text(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_label_get_text,self.godot_owner,[NULL,],&ret)
  def  get_total_character_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_label_get_total_character_count,self.godot_owner,[NULL,],&ret)
  def  get_valign(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Label::VAlign ret
    api_core.godot_method_bind_ptrcall(bind_label_get_valign,self.godot_owner,[NULL,],&ret)
  def  get_visible_characters(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_label_get_visible_characters,self.godot_owner,[NULL,],&ret)
  def  get_visible_line_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_label_get_visible_line_count,self.godot_owner,[NULL,],&ret)
  def  has_autowrap(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_label_has_autowrap,self.godot_owner,[NULL,],&ret)
  def  is_clipping_text(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_label_is_clipping_text,self.godot_owner,[NULL,],&ret)
  def  is_uppercase(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_label_is_uppercase,self.godot_owner,[NULL,],&ret)
  def  set_align(self, align):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_label_set_align,self.godot_owner,[NULL,],NULL)
  def  set_autowrap(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_label_set_autowrap,self.godot_owner,[NULL,],NULL)
  def  set_clip_text(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_label_set_clip_text,self.godot_owner,[NULL,],NULL)
  def  set_lines_skipped(self, lines_skipped):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_label_set_lines_skipped,self.godot_owner,[NULL,],NULL)
  def  set_max_lines_visible(self, lines_visible):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_label_set_max_lines_visible,self.godot_owner,[NULL,],NULL)
  def  set_percent_visible(self, percent_visible):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_label_set_percent_visible,self.godot_owner,[NULL,],NULL)
  def  set_text(self, text):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_label_set_text,self.godot_owner,[NULL,],NULL)
  def  set_uppercase(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_label_set_uppercase,self.godot_owner,[NULL,],NULL)
  def  set_valign(self, valign):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_label_set_valign,self.godot_owner,[NULL,],NULL)
  def  set_visible_characters(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_label_set_visible_characters,self.godot_owner,[NULL,],NULL)
