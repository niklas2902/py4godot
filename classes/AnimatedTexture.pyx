from classes.Texture cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animatedtexture__update_proxy
cdef godot_method_bind *bind_animatedtexture_get_fps
cdef godot_method_bind *bind_animatedtexture_get_frame_delay
cdef godot_method_bind *bind_animatedtexture_get_frame_texture
cdef godot_method_bind *bind_animatedtexture_get_frames
cdef godot_method_bind *bind_animatedtexture_set_fps
cdef godot_method_bind *bind_animatedtexture_set_frame_delay
cdef godot_method_bind *bind_animatedtexture_set_frame_texture
cdef godot_method_bind *bind_animatedtexture_set_frames
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animatedtexture__update_proxy = api_core.godot_method_bind_get_method('AnimatedTexture', '_update_proxy')
  bind_animatedtexture_get_fps = api_core.godot_method_bind_get_method('AnimatedTexture', 'get_fps')
  bind_animatedtexture_get_frame_delay = api_core.godot_method_bind_get_method('AnimatedTexture', 'get_frame_delay')
  bind_animatedtexture_get_frame_texture = api_core.godot_method_bind_get_method('AnimatedTexture', 'get_frame_texture')
  bind_animatedtexture_get_frames = api_core.godot_method_bind_get_method('AnimatedTexture', 'get_frames')
  bind_animatedtexture_set_fps = api_core.godot_method_bind_get_method('AnimatedTexture', 'set_fps')
  bind_animatedtexture_set_frame_delay = api_core.godot_method_bind_get_method('AnimatedTexture', 'set_frame_delay')
  bind_animatedtexture_set_frame_texture = api_core.godot_method_bind_get_method('AnimatedTexture', 'set_frame_texture')
  bind_animatedtexture_set_frames = api_core.godot_method_bind_get_method('AnimatedTexture', 'set_frames')

############################Generated class###################################
cdef class AnimatedTexture(Texture):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimatedTexture")())
##################################Generated Properties#########################################
  @property
  def fps(self): 
    return self.get_fps()
  @fps.setter 
  def fps(self,value): 
    self.set_fps(value)
  @property
  def frame_0_delay_sec(self): 
    return self.get_frame_0_delay_sec()
  @frame_0_delay_sec.setter 
  def frame_0_delay_sec(self,value): 
    self.set_frame_0_delay_sec(value)
  @property
  def frame_0_texture(self): 
    return self.get_frame_0_texture()
  @frame_0_texture.setter 
  def frame_0_texture(self,value): 
    self.set_frame_0_texture(value)
  @property
  def frame_1_delay_sec(self): 
    return self.get_frame_1_delay_sec()
  @frame_1_delay_sec.setter 
  def frame_1_delay_sec(self,value): 
    self.set_frame_1_delay_sec(value)
  @property
  def frame_1_texture(self): 
    return self.get_frame_1_texture()
  @frame_1_texture.setter 
  def frame_1_texture(self,value): 
    self.set_frame_1_texture(value)
  @property
  def frame_10_delay_sec(self): 
    return self.get_frame_10_delay_sec()
  @frame_10_delay_sec.setter 
  def frame_10_delay_sec(self,value): 
    self.set_frame_10_delay_sec(value)
  @property
  def frame_10_texture(self): 
    return self.get_frame_10_texture()
  @frame_10_texture.setter 
  def frame_10_texture(self,value): 
    self.set_frame_10_texture(value)
  @property
  def frame_100_delay_sec(self): 
    return self.get_frame_100_delay_sec()
  @frame_100_delay_sec.setter 
  def frame_100_delay_sec(self,value): 
    self.set_frame_100_delay_sec(value)
  @property
  def frame_100_texture(self): 
    return self.get_frame_100_texture()
  @frame_100_texture.setter 
  def frame_100_texture(self,value): 
    self.set_frame_100_texture(value)
  @property
  def frame_101_delay_sec(self): 
    return self.get_frame_101_delay_sec()
  @frame_101_delay_sec.setter 
  def frame_101_delay_sec(self,value): 
    self.set_frame_101_delay_sec(value)
  @property
  def frame_101_texture(self): 
    return self.get_frame_101_texture()
  @frame_101_texture.setter 
  def frame_101_texture(self,value): 
    self.set_frame_101_texture(value)
  @property
  def frame_102_delay_sec(self): 
    return self.get_frame_102_delay_sec()
  @frame_102_delay_sec.setter 
  def frame_102_delay_sec(self,value): 
    self.set_frame_102_delay_sec(value)
  @property
  def frame_102_texture(self): 
    return self.get_frame_102_texture()
  @frame_102_texture.setter 
  def frame_102_texture(self,value): 
    self.set_frame_102_texture(value)
  @property
  def frame_103_delay_sec(self): 
    return self.get_frame_103_delay_sec()
  @frame_103_delay_sec.setter 
  def frame_103_delay_sec(self,value): 
    self.set_frame_103_delay_sec(value)
  @property
  def frame_103_texture(self): 
    return self.get_frame_103_texture()
  @frame_103_texture.setter 
  def frame_103_texture(self,value): 
    self.set_frame_103_texture(value)
  @property
  def frame_104_delay_sec(self): 
    return self.get_frame_104_delay_sec()
  @frame_104_delay_sec.setter 
  def frame_104_delay_sec(self,value): 
    self.set_frame_104_delay_sec(value)
  @property
  def frame_104_texture(self): 
    return self.get_frame_104_texture()
  @frame_104_texture.setter 
  def frame_104_texture(self,value): 
    self.set_frame_104_texture(value)
  @property
  def frame_105_delay_sec(self): 
    return self.get_frame_105_delay_sec()
  @frame_105_delay_sec.setter 
  def frame_105_delay_sec(self,value): 
    self.set_frame_105_delay_sec(value)
  @property
  def frame_105_texture(self): 
    return self.get_frame_105_texture()
  @frame_105_texture.setter 
  def frame_105_texture(self,value): 
    self.set_frame_105_texture(value)
  @property
  def frame_106_delay_sec(self): 
    return self.get_frame_106_delay_sec()
  @frame_106_delay_sec.setter 
  def frame_106_delay_sec(self,value): 
    self.set_frame_106_delay_sec(value)
  @property
  def frame_106_texture(self): 
    return self.get_frame_106_texture()
  @frame_106_texture.setter 
  def frame_106_texture(self,value): 
    self.set_frame_106_texture(value)
  @property
  def frame_107_delay_sec(self): 
    return self.get_frame_107_delay_sec()
  @frame_107_delay_sec.setter 
  def frame_107_delay_sec(self,value): 
    self.set_frame_107_delay_sec(value)
  @property
  def frame_107_texture(self): 
    return self.get_frame_107_texture()
  @frame_107_texture.setter 
  def frame_107_texture(self,value): 
    self.set_frame_107_texture(value)
  @property
  def frame_108_delay_sec(self): 
    return self.get_frame_108_delay_sec()
  @frame_108_delay_sec.setter 
  def frame_108_delay_sec(self,value): 
    self.set_frame_108_delay_sec(value)
  @property
  def frame_108_texture(self): 
    return self.get_frame_108_texture()
  @frame_108_texture.setter 
  def frame_108_texture(self,value): 
    self.set_frame_108_texture(value)
  @property
  def frame_109_delay_sec(self): 
    return self.get_frame_109_delay_sec()
  @frame_109_delay_sec.setter 
  def frame_109_delay_sec(self,value): 
    self.set_frame_109_delay_sec(value)
  @property
  def frame_109_texture(self): 
    return self.get_frame_109_texture()
  @frame_109_texture.setter 
  def frame_109_texture(self,value): 
    self.set_frame_109_texture(value)
  @property
  def frame_11_delay_sec(self): 
    return self.get_frame_11_delay_sec()
  @frame_11_delay_sec.setter 
  def frame_11_delay_sec(self,value): 
    self.set_frame_11_delay_sec(value)
  @property
  def frame_11_texture(self): 
    return self.get_frame_11_texture()
  @frame_11_texture.setter 
  def frame_11_texture(self,value): 
    self.set_frame_11_texture(value)
  @property
  def frame_110_delay_sec(self): 
    return self.get_frame_110_delay_sec()
  @frame_110_delay_sec.setter 
  def frame_110_delay_sec(self,value): 
    self.set_frame_110_delay_sec(value)
  @property
  def frame_110_texture(self): 
    return self.get_frame_110_texture()
  @frame_110_texture.setter 
  def frame_110_texture(self,value): 
    self.set_frame_110_texture(value)
  @property
  def frame_111_delay_sec(self): 
    return self.get_frame_111_delay_sec()
  @frame_111_delay_sec.setter 
  def frame_111_delay_sec(self,value): 
    self.set_frame_111_delay_sec(value)
  @property
  def frame_111_texture(self): 
    return self.get_frame_111_texture()
  @frame_111_texture.setter 
  def frame_111_texture(self,value): 
    self.set_frame_111_texture(value)
  @property
  def frame_112_delay_sec(self): 
    return self.get_frame_112_delay_sec()
  @frame_112_delay_sec.setter 
  def frame_112_delay_sec(self,value): 
    self.set_frame_112_delay_sec(value)
  @property
  def frame_112_texture(self): 
    return self.get_frame_112_texture()
  @frame_112_texture.setter 
  def frame_112_texture(self,value): 
    self.set_frame_112_texture(value)
  @property
  def frame_113_delay_sec(self): 
    return self.get_frame_113_delay_sec()
  @frame_113_delay_sec.setter 
  def frame_113_delay_sec(self,value): 
    self.set_frame_113_delay_sec(value)
  @property
  def frame_113_texture(self): 
    return self.get_frame_113_texture()
  @frame_113_texture.setter 
  def frame_113_texture(self,value): 
    self.set_frame_113_texture(value)
  @property
  def frame_114_delay_sec(self): 
    return self.get_frame_114_delay_sec()
  @frame_114_delay_sec.setter 
  def frame_114_delay_sec(self,value): 
    self.set_frame_114_delay_sec(value)
  @property
  def frame_114_texture(self): 
    return self.get_frame_114_texture()
  @frame_114_texture.setter 
  def frame_114_texture(self,value): 
    self.set_frame_114_texture(value)
  @property
  def frame_115_delay_sec(self): 
    return self.get_frame_115_delay_sec()
  @frame_115_delay_sec.setter 
  def frame_115_delay_sec(self,value): 
    self.set_frame_115_delay_sec(value)
  @property
  def frame_115_texture(self): 
    return self.get_frame_115_texture()
  @frame_115_texture.setter 
  def frame_115_texture(self,value): 
    self.set_frame_115_texture(value)
  @property
  def frame_116_delay_sec(self): 
    return self.get_frame_116_delay_sec()
  @frame_116_delay_sec.setter 
  def frame_116_delay_sec(self,value): 
    self.set_frame_116_delay_sec(value)
  @property
  def frame_116_texture(self): 
    return self.get_frame_116_texture()
  @frame_116_texture.setter 
  def frame_116_texture(self,value): 
    self.set_frame_116_texture(value)
  @property
  def frame_117_delay_sec(self): 
    return self.get_frame_117_delay_sec()
  @frame_117_delay_sec.setter 
  def frame_117_delay_sec(self,value): 
    self.set_frame_117_delay_sec(value)
  @property
  def frame_117_texture(self): 
    return self.get_frame_117_texture()
  @frame_117_texture.setter 
  def frame_117_texture(self,value): 
    self.set_frame_117_texture(value)
  @property
  def frame_118_delay_sec(self): 
    return self.get_frame_118_delay_sec()
  @frame_118_delay_sec.setter 
  def frame_118_delay_sec(self,value): 
    self.set_frame_118_delay_sec(value)
  @property
  def frame_118_texture(self): 
    return self.get_frame_118_texture()
  @frame_118_texture.setter 
  def frame_118_texture(self,value): 
    self.set_frame_118_texture(value)
  @property
  def frame_119_delay_sec(self): 
    return self.get_frame_119_delay_sec()
  @frame_119_delay_sec.setter 
  def frame_119_delay_sec(self,value): 
    self.set_frame_119_delay_sec(value)
  @property
  def frame_119_texture(self): 
    return self.get_frame_119_texture()
  @frame_119_texture.setter 
  def frame_119_texture(self,value): 
    self.set_frame_119_texture(value)
  @property
  def frame_12_delay_sec(self): 
    return self.get_frame_12_delay_sec()
  @frame_12_delay_sec.setter 
  def frame_12_delay_sec(self,value): 
    self.set_frame_12_delay_sec(value)
  @property
  def frame_12_texture(self): 
    return self.get_frame_12_texture()
  @frame_12_texture.setter 
  def frame_12_texture(self,value): 
    self.set_frame_12_texture(value)
  @property
  def frame_120_delay_sec(self): 
    return self.get_frame_120_delay_sec()
  @frame_120_delay_sec.setter 
  def frame_120_delay_sec(self,value): 
    self.set_frame_120_delay_sec(value)
  @property
  def frame_120_texture(self): 
    return self.get_frame_120_texture()
  @frame_120_texture.setter 
  def frame_120_texture(self,value): 
    self.set_frame_120_texture(value)
  @property
  def frame_121_delay_sec(self): 
    return self.get_frame_121_delay_sec()
  @frame_121_delay_sec.setter 
  def frame_121_delay_sec(self,value): 
    self.set_frame_121_delay_sec(value)
  @property
  def frame_121_texture(self): 
    return self.get_frame_121_texture()
  @frame_121_texture.setter 
  def frame_121_texture(self,value): 
    self.set_frame_121_texture(value)
  @property
  def frame_122_delay_sec(self): 
    return self.get_frame_122_delay_sec()
  @frame_122_delay_sec.setter 
  def frame_122_delay_sec(self,value): 
    self.set_frame_122_delay_sec(value)
  @property
  def frame_122_texture(self): 
    return self.get_frame_122_texture()
  @frame_122_texture.setter 
  def frame_122_texture(self,value): 
    self.set_frame_122_texture(value)
  @property
  def frame_123_delay_sec(self): 
    return self.get_frame_123_delay_sec()
  @frame_123_delay_sec.setter 
  def frame_123_delay_sec(self,value): 
    self.set_frame_123_delay_sec(value)
  @property
  def frame_123_texture(self): 
    return self.get_frame_123_texture()
  @frame_123_texture.setter 
  def frame_123_texture(self,value): 
    self.set_frame_123_texture(value)
  @property
  def frame_124_delay_sec(self): 
    return self.get_frame_124_delay_sec()
  @frame_124_delay_sec.setter 
  def frame_124_delay_sec(self,value): 
    self.set_frame_124_delay_sec(value)
  @property
  def frame_124_texture(self): 
    return self.get_frame_124_texture()
  @frame_124_texture.setter 
  def frame_124_texture(self,value): 
    self.set_frame_124_texture(value)
  @property
  def frame_125_delay_sec(self): 
    return self.get_frame_125_delay_sec()
  @frame_125_delay_sec.setter 
  def frame_125_delay_sec(self,value): 
    self.set_frame_125_delay_sec(value)
  @property
  def frame_125_texture(self): 
    return self.get_frame_125_texture()
  @frame_125_texture.setter 
  def frame_125_texture(self,value): 
    self.set_frame_125_texture(value)
  @property
  def frame_126_delay_sec(self): 
    return self.get_frame_126_delay_sec()
  @frame_126_delay_sec.setter 
  def frame_126_delay_sec(self,value): 
    self.set_frame_126_delay_sec(value)
  @property
  def frame_126_texture(self): 
    return self.get_frame_126_texture()
  @frame_126_texture.setter 
  def frame_126_texture(self,value): 
    self.set_frame_126_texture(value)
  @property
  def frame_127_delay_sec(self): 
    return self.get_frame_127_delay_sec()
  @frame_127_delay_sec.setter 
  def frame_127_delay_sec(self,value): 
    self.set_frame_127_delay_sec(value)
  @property
  def frame_127_texture(self): 
    return self.get_frame_127_texture()
  @frame_127_texture.setter 
  def frame_127_texture(self,value): 
    self.set_frame_127_texture(value)
  @property
  def frame_128_delay_sec(self): 
    return self.get_frame_128_delay_sec()
  @frame_128_delay_sec.setter 
  def frame_128_delay_sec(self,value): 
    self.set_frame_128_delay_sec(value)
  @property
  def frame_128_texture(self): 
    return self.get_frame_128_texture()
  @frame_128_texture.setter 
  def frame_128_texture(self,value): 
    self.set_frame_128_texture(value)
  @property
  def frame_129_delay_sec(self): 
    return self.get_frame_129_delay_sec()
  @frame_129_delay_sec.setter 
  def frame_129_delay_sec(self,value): 
    self.set_frame_129_delay_sec(value)
  @property
  def frame_129_texture(self): 
    return self.get_frame_129_texture()
  @frame_129_texture.setter 
  def frame_129_texture(self,value): 
    self.set_frame_129_texture(value)
  @property
  def frame_13_delay_sec(self): 
    return self.get_frame_13_delay_sec()
  @frame_13_delay_sec.setter 
  def frame_13_delay_sec(self,value): 
    self.set_frame_13_delay_sec(value)
  @property
  def frame_13_texture(self): 
    return self.get_frame_13_texture()
  @frame_13_texture.setter 
  def frame_13_texture(self,value): 
    self.set_frame_13_texture(value)
  @property
  def frame_130_delay_sec(self): 
    return self.get_frame_130_delay_sec()
  @frame_130_delay_sec.setter 
  def frame_130_delay_sec(self,value): 
    self.set_frame_130_delay_sec(value)
  @property
  def frame_130_texture(self): 
    return self.get_frame_130_texture()
  @frame_130_texture.setter 
  def frame_130_texture(self,value): 
    self.set_frame_130_texture(value)
  @property
  def frame_131_delay_sec(self): 
    return self.get_frame_131_delay_sec()
  @frame_131_delay_sec.setter 
  def frame_131_delay_sec(self,value): 
    self.set_frame_131_delay_sec(value)
  @property
  def frame_131_texture(self): 
    return self.get_frame_131_texture()
  @frame_131_texture.setter 
  def frame_131_texture(self,value): 
    self.set_frame_131_texture(value)
  @property
  def frame_132_delay_sec(self): 
    return self.get_frame_132_delay_sec()
  @frame_132_delay_sec.setter 
  def frame_132_delay_sec(self,value): 
    self.set_frame_132_delay_sec(value)
  @property
  def frame_132_texture(self): 
    return self.get_frame_132_texture()
  @frame_132_texture.setter 
  def frame_132_texture(self,value): 
    self.set_frame_132_texture(value)
  @property
  def frame_133_delay_sec(self): 
    return self.get_frame_133_delay_sec()
  @frame_133_delay_sec.setter 
  def frame_133_delay_sec(self,value): 
    self.set_frame_133_delay_sec(value)
  @property
  def frame_133_texture(self): 
    return self.get_frame_133_texture()
  @frame_133_texture.setter 
  def frame_133_texture(self,value): 
    self.set_frame_133_texture(value)
  @property
  def frame_134_delay_sec(self): 
    return self.get_frame_134_delay_sec()
  @frame_134_delay_sec.setter 
  def frame_134_delay_sec(self,value): 
    self.set_frame_134_delay_sec(value)
  @property
  def frame_134_texture(self): 
    return self.get_frame_134_texture()
  @frame_134_texture.setter 
  def frame_134_texture(self,value): 
    self.set_frame_134_texture(value)
  @property
  def frame_135_delay_sec(self): 
    return self.get_frame_135_delay_sec()
  @frame_135_delay_sec.setter 
  def frame_135_delay_sec(self,value): 
    self.set_frame_135_delay_sec(value)
  @property
  def frame_135_texture(self): 
    return self.get_frame_135_texture()
  @frame_135_texture.setter 
  def frame_135_texture(self,value): 
    self.set_frame_135_texture(value)
  @property
  def frame_136_delay_sec(self): 
    return self.get_frame_136_delay_sec()
  @frame_136_delay_sec.setter 
  def frame_136_delay_sec(self,value): 
    self.set_frame_136_delay_sec(value)
  @property
  def frame_136_texture(self): 
    return self.get_frame_136_texture()
  @frame_136_texture.setter 
  def frame_136_texture(self,value): 
    self.set_frame_136_texture(value)
  @property
  def frame_137_delay_sec(self): 
    return self.get_frame_137_delay_sec()
  @frame_137_delay_sec.setter 
  def frame_137_delay_sec(self,value): 
    self.set_frame_137_delay_sec(value)
  @property
  def frame_137_texture(self): 
    return self.get_frame_137_texture()
  @frame_137_texture.setter 
  def frame_137_texture(self,value): 
    self.set_frame_137_texture(value)
  @property
  def frame_138_delay_sec(self): 
    return self.get_frame_138_delay_sec()
  @frame_138_delay_sec.setter 
  def frame_138_delay_sec(self,value): 
    self.set_frame_138_delay_sec(value)
  @property
  def frame_138_texture(self): 
    return self.get_frame_138_texture()
  @frame_138_texture.setter 
  def frame_138_texture(self,value): 
    self.set_frame_138_texture(value)
  @property
  def frame_139_delay_sec(self): 
    return self.get_frame_139_delay_sec()
  @frame_139_delay_sec.setter 
  def frame_139_delay_sec(self,value): 
    self.set_frame_139_delay_sec(value)
  @property
  def frame_139_texture(self): 
    return self.get_frame_139_texture()
  @frame_139_texture.setter 
  def frame_139_texture(self,value): 
    self.set_frame_139_texture(value)
  @property
  def frame_14_delay_sec(self): 
    return self.get_frame_14_delay_sec()
  @frame_14_delay_sec.setter 
  def frame_14_delay_sec(self,value): 
    self.set_frame_14_delay_sec(value)
  @property
  def frame_14_texture(self): 
    return self.get_frame_14_texture()
  @frame_14_texture.setter 
  def frame_14_texture(self,value): 
    self.set_frame_14_texture(value)
  @property
  def frame_140_delay_sec(self): 
    return self.get_frame_140_delay_sec()
  @frame_140_delay_sec.setter 
  def frame_140_delay_sec(self,value): 
    self.set_frame_140_delay_sec(value)
  @property
  def frame_140_texture(self): 
    return self.get_frame_140_texture()
  @frame_140_texture.setter 
  def frame_140_texture(self,value): 
    self.set_frame_140_texture(value)
  @property
  def frame_141_delay_sec(self): 
    return self.get_frame_141_delay_sec()
  @frame_141_delay_sec.setter 
  def frame_141_delay_sec(self,value): 
    self.set_frame_141_delay_sec(value)
  @property
  def frame_141_texture(self): 
    return self.get_frame_141_texture()
  @frame_141_texture.setter 
  def frame_141_texture(self,value): 
    self.set_frame_141_texture(value)
  @property
  def frame_142_delay_sec(self): 
    return self.get_frame_142_delay_sec()
  @frame_142_delay_sec.setter 
  def frame_142_delay_sec(self,value): 
    self.set_frame_142_delay_sec(value)
  @property
  def frame_142_texture(self): 
    return self.get_frame_142_texture()
  @frame_142_texture.setter 
  def frame_142_texture(self,value): 
    self.set_frame_142_texture(value)
  @property
  def frame_143_delay_sec(self): 
    return self.get_frame_143_delay_sec()
  @frame_143_delay_sec.setter 
  def frame_143_delay_sec(self,value): 
    self.set_frame_143_delay_sec(value)
  @property
  def frame_143_texture(self): 
    return self.get_frame_143_texture()
  @frame_143_texture.setter 
  def frame_143_texture(self,value): 
    self.set_frame_143_texture(value)
  @property
  def frame_144_delay_sec(self): 
    return self.get_frame_144_delay_sec()
  @frame_144_delay_sec.setter 
  def frame_144_delay_sec(self,value): 
    self.set_frame_144_delay_sec(value)
  @property
  def frame_144_texture(self): 
    return self.get_frame_144_texture()
  @frame_144_texture.setter 
  def frame_144_texture(self,value): 
    self.set_frame_144_texture(value)
  @property
  def frame_145_delay_sec(self): 
    return self.get_frame_145_delay_sec()
  @frame_145_delay_sec.setter 
  def frame_145_delay_sec(self,value): 
    self.set_frame_145_delay_sec(value)
  @property
  def frame_145_texture(self): 
    return self.get_frame_145_texture()
  @frame_145_texture.setter 
  def frame_145_texture(self,value): 
    self.set_frame_145_texture(value)
  @property
  def frame_146_delay_sec(self): 
    return self.get_frame_146_delay_sec()
  @frame_146_delay_sec.setter 
  def frame_146_delay_sec(self,value): 
    self.set_frame_146_delay_sec(value)
  @property
  def frame_146_texture(self): 
    return self.get_frame_146_texture()
  @frame_146_texture.setter 
  def frame_146_texture(self,value): 
    self.set_frame_146_texture(value)
  @property
  def frame_147_delay_sec(self): 
    return self.get_frame_147_delay_sec()
  @frame_147_delay_sec.setter 
  def frame_147_delay_sec(self,value): 
    self.set_frame_147_delay_sec(value)
  @property
  def frame_147_texture(self): 
    return self.get_frame_147_texture()
  @frame_147_texture.setter 
  def frame_147_texture(self,value): 
    self.set_frame_147_texture(value)
  @property
  def frame_148_delay_sec(self): 
    return self.get_frame_148_delay_sec()
  @frame_148_delay_sec.setter 
  def frame_148_delay_sec(self,value): 
    self.set_frame_148_delay_sec(value)
  @property
  def frame_148_texture(self): 
    return self.get_frame_148_texture()
  @frame_148_texture.setter 
  def frame_148_texture(self,value): 
    self.set_frame_148_texture(value)
  @property
  def frame_149_delay_sec(self): 
    return self.get_frame_149_delay_sec()
  @frame_149_delay_sec.setter 
  def frame_149_delay_sec(self,value): 
    self.set_frame_149_delay_sec(value)
  @property
  def frame_149_texture(self): 
    return self.get_frame_149_texture()
  @frame_149_texture.setter 
  def frame_149_texture(self,value): 
    self.set_frame_149_texture(value)
  @property
  def frame_15_delay_sec(self): 
    return self.get_frame_15_delay_sec()
  @frame_15_delay_sec.setter 
  def frame_15_delay_sec(self,value): 
    self.set_frame_15_delay_sec(value)
  @property
  def frame_15_texture(self): 
    return self.get_frame_15_texture()
  @frame_15_texture.setter 
  def frame_15_texture(self,value): 
    self.set_frame_15_texture(value)
  @property
  def frame_150_delay_sec(self): 
    return self.get_frame_150_delay_sec()
  @frame_150_delay_sec.setter 
  def frame_150_delay_sec(self,value): 
    self.set_frame_150_delay_sec(value)
  @property
  def frame_150_texture(self): 
    return self.get_frame_150_texture()
  @frame_150_texture.setter 
  def frame_150_texture(self,value): 
    self.set_frame_150_texture(value)
  @property
  def frame_151_delay_sec(self): 
    return self.get_frame_151_delay_sec()
  @frame_151_delay_sec.setter 
  def frame_151_delay_sec(self,value): 
    self.set_frame_151_delay_sec(value)
  @property
  def frame_151_texture(self): 
    return self.get_frame_151_texture()
  @frame_151_texture.setter 
  def frame_151_texture(self,value): 
    self.set_frame_151_texture(value)
  @property
  def frame_152_delay_sec(self): 
    return self.get_frame_152_delay_sec()
  @frame_152_delay_sec.setter 
  def frame_152_delay_sec(self,value): 
    self.set_frame_152_delay_sec(value)
  @property
  def frame_152_texture(self): 
    return self.get_frame_152_texture()
  @frame_152_texture.setter 
  def frame_152_texture(self,value): 
    self.set_frame_152_texture(value)
  @property
  def frame_153_delay_sec(self): 
    return self.get_frame_153_delay_sec()
  @frame_153_delay_sec.setter 
  def frame_153_delay_sec(self,value): 
    self.set_frame_153_delay_sec(value)
  @property
  def frame_153_texture(self): 
    return self.get_frame_153_texture()
  @frame_153_texture.setter 
  def frame_153_texture(self,value): 
    self.set_frame_153_texture(value)
  @property
  def frame_154_delay_sec(self): 
    return self.get_frame_154_delay_sec()
  @frame_154_delay_sec.setter 
  def frame_154_delay_sec(self,value): 
    self.set_frame_154_delay_sec(value)
  @property
  def frame_154_texture(self): 
    return self.get_frame_154_texture()
  @frame_154_texture.setter 
  def frame_154_texture(self,value): 
    self.set_frame_154_texture(value)
  @property
  def frame_155_delay_sec(self): 
    return self.get_frame_155_delay_sec()
  @frame_155_delay_sec.setter 
  def frame_155_delay_sec(self,value): 
    self.set_frame_155_delay_sec(value)
  @property
  def frame_155_texture(self): 
    return self.get_frame_155_texture()
  @frame_155_texture.setter 
  def frame_155_texture(self,value): 
    self.set_frame_155_texture(value)
  @property
  def frame_156_delay_sec(self): 
    return self.get_frame_156_delay_sec()
  @frame_156_delay_sec.setter 
  def frame_156_delay_sec(self,value): 
    self.set_frame_156_delay_sec(value)
  @property
  def frame_156_texture(self): 
    return self.get_frame_156_texture()
  @frame_156_texture.setter 
  def frame_156_texture(self,value): 
    self.set_frame_156_texture(value)
  @property
  def frame_157_delay_sec(self): 
    return self.get_frame_157_delay_sec()
  @frame_157_delay_sec.setter 
  def frame_157_delay_sec(self,value): 
    self.set_frame_157_delay_sec(value)
  @property
  def frame_157_texture(self): 
    return self.get_frame_157_texture()
  @frame_157_texture.setter 
  def frame_157_texture(self,value): 
    self.set_frame_157_texture(value)
  @property
  def frame_158_delay_sec(self): 
    return self.get_frame_158_delay_sec()
  @frame_158_delay_sec.setter 
  def frame_158_delay_sec(self,value): 
    self.set_frame_158_delay_sec(value)
  @property
  def frame_158_texture(self): 
    return self.get_frame_158_texture()
  @frame_158_texture.setter 
  def frame_158_texture(self,value): 
    self.set_frame_158_texture(value)
  @property
  def frame_159_delay_sec(self): 
    return self.get_frame_159_delay_sec()
  @frame_159_delay_sec.setter 
  def frame_159_delay_sec(self,value): 
    self.set_frame_159_delay_sec(value)
  @property
  def frame_159_texture(self): 
    return self.get_frame_159_texture()
  @frame_159_texture.setter 
  def frame_159_texture(self,value): 
    self.set_frame_159_texture(value)
  @property
  def frame_16_delay_sec(self): 
    return self.get_frame_16_delay_sec()
  @frame_16_delay_sec.setter 
  def frame_16_delay_sec(self,value): 
    self.set_frame_16_delay_sec(value)
  @property
  def frame_16_texture(self): 
    return self.get_frame_16_texture()
  @frame_16_texture.setter 
  def frame_16_texture(self,value): 
    self.set_frame_16_texture(value)
  @property
  def frame_160_delay_sec(self): 
    return self.get_frame_160_delay_sec()
  @frame_160_delay_sec.setter 
  def frame_160_delay_sec(self,value): 
    self.set_frame_160_delay_sec(value)
  @property
  def frame_160_texture(self): 
    return self.get_frame_160_texture()
  @frame_160_texture.setter 
  def frame_160_texture(self,value): 
    self.set_frame_160_texture(value)
  @property
  def frame_161_delay_sec(self): 
    return self.get_frame_161_delay_sec()
  @frame_161_delay_sec.setter 
  def frame_161_delay_sec(self,value): 
    self.set_frame_161_delay_sec(value)
  @property
  def frame_161_texture(self): 
    return self.get_frame_161_texture()
  @frame_161_texture.setter 
  def frame_161_texture(self,value): 
    self.set_frame_161_texture(value)
  @property
  def frame_162_delay_sec(self): 
    return self.get_frame_162_delay_sec()
  @frame_162_delay_sec.setter 
  def frame_162_delay_sec(self,value): 
    self.set_frame_162_delay_sec(value)
  @property
  def frame_162_texture(self): 
    return self.get_frame_162_texture()
  @frame_162_texture.setter 
  def frame_162_texture(self,value): 
    self.set_frame_162_texture(value)
  @property
  def frame_163_delay_sec(self): 
    return self.get_frame_163_delay_sec()
  @frame_163_delay_sec.setter 
  def frame_163_delay_sec(self,value): 
    self.set_frame_163_delay_sec(value)
  @property
  def frame_163_texture(self): 
    return self.get_frame_163_texture()
  @frame_163_texture.setter 
  def frame_163_texture(self,value): 
    self.set_frame_163_texture(value)
  @property
  def frame_164_delay_sec(self): 
    return self.get_frame_164_delay_sec()
  @frame_164_delay_sec.setter 
  def frame_164_delay_sec(self,value): 
    self.set_frame_164_delay_sec(value)
  @property
  def frame_164_texture(self): 
    return self.get_frame_164_texture()
  @frame_164_texture.setter 
  def frame_164_texture(self,value): 
    self.set_frame_164_texture(value)
  @property
  def frame_165_delay_sec(self): 
    return self.get_frame_165_delay_sec()
  @frame_165_delay_sec.setter 
  def frame_165_delay_sec(self,value): 
    self.set_frame_165_delay_sec(value)
  @property
  def frame_165_texture(self): 
    return self.get_frame_165_texture()
  @frame_165_texture.setter 
  def frame_165_texture(self,value): 
    self.set_frame_165_texture(value)
  @property
  def frame_166_delay_sec(self): 
    return self.get_frame_166_delay_sec()
  @frame_166_delay_sec.setter 
  def frame_166_delay_sec(self,value): 
    self.set_frame_166_delay_sec(value)
  @property
  def frame_166_texture(self): 
    return self.get_frame_166_texture()
  @frame_166_texture.setter 
  def frame_166_texture(self,value): 
    self.set_frame_166_texture(value)
  @property
  def frame_167_delay_sec(self): 
    return self.get_frame_167_delay_sec()
  @frame_167_delay_sec.setter 
  def frame_167_delay_sec(self,value): 
    self.set_frame_167_delay_sec(value)
  @property
  def frame_167_texture(self): 
    return self.get_frame_167_texture()
  @frame_167_texture.setter 
  def frame_167_texture(self,value): 
    self.set_frame_167_texture(value)
  @property
  def frame_168_delay_sec(self): 
    return self.get_frame_168_delay_sec()
  @frame_168_delay_sec.setter 
  def frame_168_delay_sec(self,value): 
    self.set_frame_168_delay_sec(value)
  @property
  def frame_168_texture(self): 
    return self.get_frame_168_texture()
  @frame_168_texture.setter 
  def frame_168_texture(self,value): 
    self.set_frame_168_texture(value)
  @property
  def frame_169_delay_sec(self): 
    return self.get_frame_169_delay_sec()
  @frame_169_delay_sec.setter 
  def frame_169_delay_sec(self,value): 
    self.set_frame_169_delay_sec(value)
  @property
  def frame_169_texture(self): 
    return self.get_frame_169_texture()
  @frame_169_texture.setter 
  def frame_169_texture(self,value): 
    self.set_frame_169_texture(value)
  @property
  def frame_17_delay_sec(self): 
    return self.get_frame_17_delay_sec()
  @frame_17_delay_sec.setter 
  def frame_17_delay_sec(self,value): 
    self.set_frame_17_delay_sec(value)
  @property
  def frame_17_texture(self): 
    return self.get_frame_17_texture()
  @frame_17_texture.setter 
  def frame_17_texture(self,value): 
    self.set_frame_17_texture(value)
  @property
  def frame_170_delay_sec(self): 
    return self.get_frame_170_delay_sec()
  @frame_170_delay_sec.setter 
  def frame_170_delay_sec(self,value): 
    self.set_frame_170_delay_sec(value)
  @property
  def frame_170_texture(self): 
    return self.get_frame_170_texture()
  @frame_170_texture.setter 
  def frame_170_texture(self,value): 
    self.set_frame_170_texture(value)
  @property
  def frame_171_delay_sec(self): 
    return self.get_frame_171_delay_sec()
  @frame_171_delay_sec.setter 
  def frame_171_delay_sec(self,value): 
    self.set_frame_171_delay_sec(value)
  @property
  def frame_171_texture(self): 
    return self.get_frame_171_texture()
  @frame_171_texture.setter 
  def frame_171_texture(self,value): 
    self.set_frame_171_texture(value)
  @property
  def frame_172_delay_sec(self): 
    return self.get_frame_172_delay_sec()
  @frame_172_delay_sec.setter 
  def frame_172_delay_sec(self,value): 
    self.set_frame_172_delay_sec(value)
  @property
  def frame_172_texture(self): 
    return self.get_frame_172_texture()
  @frame_172_texture.setter 
  def frame_172_texture(self,value): 
    self.set_frame_172_texture(value)
  @property
  def frame_173_delay_sec(self): 
    return self.get_frame_173_delay_sec()
  @frame_173_delay_sec.setter 
  def frame_173_delay_sec(self,value): 
    self.set_frame_173_delay_sec(value)
  @property
  def frame_173_texture(self): 
    return self.get_frame_173_texture()
  @frame_173_texture.setter 
  def frame_173_texture(self,value): 
    self.set_frame_173_texture(value)
  @property
  def frame_174_delay_sec(self): 
    return self.get_frame_174_delay_sec()
  @frame_174_delay_sec.setter 
  def frame_174_delay_sec(self,value): 
    self.set_frame_174_delay_sec(value)
  @property
  def frame_174_texture(self): 
    return self.get_frame_174_texture()
  @frame_174_texture.setter 
  def frame_174_texture(self,value): 
    self.set_frame_174_texture(value)
  @property
  def frame_175_delay_sec(self): 
    return self.get_frame_175_delay_sec()
  @frame_175_delay_sec.setter 
  def frame_175_delay_sec(self,value): 
    self.set_frame_175_delay_sec(value)
  @property
  def frame_175_texture(self): 
    return self.get_frame_175_texture()
  @frame_175_texture.setter 
  def frame_175_texture(self,value): 
    self.set_frame_175_texture(value)
  @property
  def frame_176_delay_sec(self): 
    return self.get_frame_176_delay_sec()
  @frame_176_delay_sec.setter 
  def frame_176_delay_sec(self,value): 
    self.set_frame_176_delay_sec(value)
  @property
  def frame_176_texture(self): 
    return self.get_frame_176_texture()
  @frame_176_texture.setter 
  def frame_176_texture(self,value): 
    self.set_frame_176_texture(value)
  @property
  def frame_177_delay_sec(self): 
    return self.get_frame_177_delay_sec()
  @frame_177_delay_sec.setter 
  def frame_177_delay_sec(self,value): 
    self.set_frame_177_delay_sec(value)
  @property
  def frame_177_texture(self): 
    return self.get_frame_177_texture()
  @frame_177_texture.setter 
  def frame_177_texture(self,value): 
    self.set_frame_177_texture(value)
  @property
  def frame_178_delay_sec(self): 
    return self.get_frame_178_delay_sec()
  @frame_178_delay_sec.setter 
  def frame_178_delay_sec(self,value): 
    self.set_frame_178_delay_sec(value)
  @property
  def frame_178_texture(self): 
    return self.get_frame_178_texture()
  @frame_178_texture.setter 
  def frame_178_texture(self,value): 
    self.set_frame_178_texture(value)
  @property
  def frame_179_delay_sec(self): 
    return self.get_frame_179_delay_sec()
  @frame_179_delay_sec.setter 
  def frame_179_delay_sec(self,value): 
    self.set_frame_179_delay_sec(value)
  @property
  def frame_179_texture(self): 
    return self.get_frame_179_texture()
  @frame_179_texture.setter 
  def frame_179_texture(self,value): 
    self.set_frame_179_texture(value)
  @property
  def frame_18_delay_sec(self): 
    return self.get_frame_18_delay_sec()
  @frame_18_delay_sec.setter 
  def frame_18_delay_sec(self,value): 
    self.set_frame_18_delay_sec(value)
  @property
  def frame_18_texture(self): 
    return self.get_frame_18_texture()
  @frame_18_texture.setter 
  def frame_18_texture(self,value): 
    self.set_frame_18_texture(value)
  @property
  def frame_180_delay_sec(self): 
    return self.get_frame_180_delay_sec()
  @frame_180_delay_sec.setter 
  def frame_180_delay_sec(self,value): 
    self.set_frame_180_delay_sec(value)
  @property
  def frame_180_texture(self): 
    return self.get_frame_180_texture()
  @frame_180_texture.setter 
  def frame_180_texture(self,value): 
    self.set_frame_180_texture(value)
  @property
  def frame_181_delay_sec(self): 
    return self.get_frame_181_delay_sec()
  @frame_181_delay_sec.setter 
  def frame_181_delay_sec(self,value): 
    self.set_frame_181_delay_sec(value)
  @property
  def frame_181_texture(self): 
    return self.get_frame_181_texture()
  @frame_181_texture.setter 
  def frame_181_texture(self,value): 
    self.set_frame_181_texture(value)
  @property
  def frame_182_delay_sec(self): 
    return self.get_frame_182_delay_sec()
  @frame_182_delay_sec.setter 
  def frame_182_delay_sec(self,value): 
    self.set_frame_182_delay_sec(value)
  @property
  def frame_182_texture(self): 
    return self.get_frame_182_texture()
  @frame_182_texture.setter 
  def frame_182_texture(self,value): 
    self.set_frame_182_texture(value)
  @property
  def frame_183_delay_sec(self): 
    return self.get_frame_183_delay_sec()
  @frame_183_delay_sec.setter 
  def frame_183_delay_sec(self,value): 
    self.set_frame_183_delay_sec(value)
  @property
  def frame_183_texture(self): 
    return self.get_frame_183_texture()
  @frame_183_texture.setter 
  def frame_183_texture(self,value): 
    self.set_frame_183_texture(value)
  @property
  def frame_184_delay_sec(self): 
    return self.get_frame_184_delay_sec()
  @frame_184_delay_sec.setter 
  def frame_184_delay_sec(self,value): 
    self.set_frame_184_delay_sec(value)
  @property
  def frame_184_texture(self): 
    return self.get_frame_184_texture()
  @frame_184_texture.setter 
  def frame_184_texture(self,value): 
    self.set_frame_184_texture(value)
  @property
  def frame_185_delay_sec(self): 
    return self.get_frame_185_delay_sec()
  @frame_185_delay_sec.setter 
  def frame_185_delay_sec(self,value): 
    self.set_frame_185_delay_sec(value)
  @property
  def frame_185_texture(self): 
    return self.get_frame_185_texture()
  @frame_185_texture.setter 
  def frame_185_texture(self,value): 
    self.set_frame_185_texture(value)
  @property
  def frame_186_delay_sec(self): 
    return self.get_frame_186_delay_sec()
  @frame_186_delay_sec.setter 
  def frame_186_delay_sec(self,value): 
    self.set_frame_186_delay_sec(value)
  @property
  def frame_186_texture(self): 
    return self.get_frame_186_texture()
  @frame_186_texture.setter 
  def frame_186_texture(self,value): 
    self.set_frame_186_texture(value)
  @property
  def frame_187_delay_sec(self): 
    return self.get_frame_187_delay_sec()
  @frame_187_delay_sec.setter 
  def frame_187_delay_sec(self,value): 
    self.set_frame_187_delay_sec(value)
  @property
  def frame_187_texture(self): 
    return self.get_frame_187_texture()
  @frame_187_texture.setter 
  def frame_187_texture(self,value): 
    self.set_frame_187_texture(value)
  @property
  def frame_188_delay_sec(self): 
    return self.get_frame_188_delay_sec()
  @frame_188_delay_sec.setter 
  def frame_188_delay_sec(self,value): 
    self.set_frame_188_delay_sec(value)
  @property
  def frame_188_texture(self): 
    return self.get_frame_188_texture()
  @frame_188_texture.setter 
  def frame_188_texture(self,value): 
    self.set_frame_188_texture(value)
  @property
  def frame_189_delay_sec(self): 
    return self.get_frame_189_delay_sec()
  @frame_189_delay_sec.setter 
  def frame_189_delay_sec(self,value): 
    self.set_frame_189_delay_sec(value)
  @property
  def frame_189_texture(self): 
    return self.get_frame_189_texture()
  @frame_189_texture.setter 
  def frame_189_texture(self,value): 
    self.set_frame_189_texture(value)
  @property
  def frame_19_delay_sec(self): 
    return self.get_frame_19_delay_sec()
  @frame_19_delay_sec.setter 
  def frame_19_delay_sec(self,value): 
    self.set_frame_19_delay_sec(value)
  @property
  def frame_19_texture(self): 
    return self.get_frame_19_texture()
  @frame_19_texture.setter 
  def frame_19_texture(self,value): 
    self.set_frame_19_texture(value)
  @property
  def frame_190_delay_sec(self): 
    return self.get_frame_190_delay_sec()
  @frame_190_delay_sec.setter 
  def frame_190_delay_sec(self,value): 
    self.set_frame_190_delay_sec(value)
  @property
  def frame_190_texture(self): 
    return self.get_frame_190_texture()
  @frame_190_texture.setter 
  def frame_190_texture(self,value): 
    self.set_frame_190_texture(value)
  @property
  def frame_191_delay_sec(self): 
    return self.get_frame_191_delay_sec()
  @frame_191_delay_sec.setter 
  def frame_191_delay_sec(self,value): 
    self.set_frame_191_delay_sec(value)
  @property
  def frame_191_texture(self): 
    return self.get_frame_191_texture()
  @frame_191_texture.setter 
  def frame_191_texture(self,value): 
    self.set_frame_191_texture(value)
  @property
  def frame_192_delay_sec(self): 
    return self.get_frame_192_delay_sec()
  @frame_192_delay_sec.setter 
  def frame_192_delay_sec(self,value): 
    self.set_frame_192_delay_sec(value)
  @property
  def frame_192_texture(self): 
    return self.get_frame_192_texture()
  @frame_192_texture.setter 
  def frame_192_texture(self,value): 
    self.set_frame_192_texture(value)
  @property
  def frame_193_delay_sec(self): 
    return self.get_frame_193_delay_sec()
  @frame_193_delay_sec.setter 
  def frame_193_delay_sec(self,value): 
    self.set_frame_193_delay_sec(value)
  @property
  def frame_193_texture(self): 
    return self.get_frame_193_texture()
  @frame_193_texture.setter 
  def frame_193_texture(self,value): 
    self.set_frame_193_texture(value)
  @property
  def frame_194_delay_sec(self): 
    return self.get_frame_194_delay_sec()
  @frame_194_delay_sec.setter 
  def frame_194_delay_sec(self,value): 
    self.set_frame_194_delay_sec(value)
  @property
  def frame_194_texture(self): 
    return self.get_frame_194_texture()
  @frame_194_texture.setter 
  def frame_194_texture(self,value): 
    self.set_frame_194_texture(value)
  @property
  def frame_195_delay_sec(self): 
    return self.get_frame_195_delay_sec()
  @frame_195_delay_sec.setter 
  def frame_195_delay_sec(self,value): 
    self.set_frame_195_delay_sec(value)
  @property
  def frame_195_texture(self): 
    return self.get_frame_195_texture()
  @frame_195_texture.setter 
  def frame_195_texture(self,value): 
    self.set_frame_195_texture(value)
  @property
  def frame_196_delay_sec(self): 
    return self.get_frame_196_delay_sec()
  @frame_196_delay_sec.setter 
  def frame_196_delay_sec(self,value): 
    self.set_frame_196_delay_sec(value)
  @property
  def frame_196_texture(self): 
    return self.get_frame_196_texture()
  @frame_196_texture.setter 
  def frame_196_texture(self,value): 
    self.set_frame_196_texture(value)
  @property
  def frame_197_delay_sec(self): 
    return self.get_frame_197_delay_sec()
  @frame_197_delay_sec.setter 
  def frame_197_delay_sec(self,value): 
    self.set_frame_197_delay_sec(value)
  @property
  def frame_197_texture(self): 
    return self.get_frame_197_texture()
  @frame_197_texture.setter 
  def frame_197_texture(self,value): 
    self.set_frame_197_texture(value)
  @property
  def frame_198_delay_sec(self): 
    return self.get_frame_198_delay_sec()
  @frame_198_delay_sec.setter 
  def frame_198_delay_sec(self,value): 
    self.set_frame_198_delay_sec(value)
  @property
  def frame_198_texture(self): 
    return self.get_frame_198_texture()
  @frame_198_texture.setter 
  def frame_198_texture(self,value): 
    self.set_frame_198_texture(value)
  @property
  def frame_199_delay_sec(self): 
    return self.get_frame_199_delay_sec()
  @frame_199_delay_sec.setter 
  def frame_199_delay_sec(self,value): 
    self.set_frame_199_delay_sec(value)
  @property
  def frame_199_texture(self): 
    return self.get_frame_199_texture()
  @frame_199_texture.setter 
  def frame_199_texture(self,value): 
    self.set_frame_199_texture(value)
  @property
  def frame_2_delay_sec(self): 
    return self.get_frame_2_delay_sec()
  @frame_2_delay_sec.setter 
  def frame_2_delay_sec(self,value): 
    self.set_frame_2_delay_sec(value)
  @property
  def frame_2_texture(self): 
    return self.get_frame_2_texture()
  @frame_2_texture.setter 
  def frame_2_texture(self,value): 
    self.set_frame_2_texture(value)
  @property
  def frame_20_delay_sec(self): 
    return self.get_frame_20_delay_sec()
  @frame_20_delay_sec.setter 
  def frame_20_delay_sec(self,value): 
    self.set_frame_20_delay_sec(value)
  @property
  def frame_20_texture(self): 
    return self.get_frame_20_texture()
  @frame_20_texture.setter 
  def frame_20_texture(self,value): 
    self.set_frame_20_texture(value)
  @property
  def frame_200_delay_sec(self): 
    return self.get_frame_200_delay_sec()
  @frame_200_delay_sec.setter 
  def frame_200_delay_sec(self,value): 
    self.set_frame_200_delay_sec(value)
  @property
  def frame_200_texture(self): 
    return self.get_frame_200_texture()
  @frame_200_texture.setter 
  def frame_200_texture(self,value): 
    self.set_frame_200_texture(value)
  @property
  def frame_201_delay_sec(self): 
    return self.get_frame_201_delay_sec()
  @frame_201_delay_sec.setter 
  def frame_201_delay_sec(self,value): 
    self.set_frame_201_delay_sec(value)
  @property
  def frame_201_texture(self): 
    return self.get_frame_201_texture()
  @frame_201_texture.setter 
  def frame_201_texture(self,value): 
    self.set_frame_201_texture(value)
  @property
  def frame_202_delay_sec(self): 
    return self.get_frame_202_delay_sec()
  @frame_202_delay_sec.setter 
  def frame_202_delay_sec(self,value): 
    self.set_frame_202_delay_sec(value)
  @property
  def frame_202_texture(self): 
    return self.get_frame_202_texture()
  @frame_202_texture.setter 
  def frame_202_texture(self,value): 
    self.set_frame_202_texture(value)
  @property
  def frame_203_delay_sec(self): 
    return self.get_frame_203_delay_sec()
  @frame_203_delay_sec.setter 
  def frame_203_delay_sec(self,value): 
    self.set_frame_203_delay_sec(value)
  @property
  def frame_203_texture(self): 
    return self.get_frame_203_texture()
  @frame_203_texture.setter 
  def frame_203_texture(self,value): 
    self.set_frame_203_texture(value)
  @property
  def frame_204_delay_sec(self): 
    return self.get_frame_204_delay_sec()
  @frame_204_delay_sec.setter 
  def frame_204_delay_sec(self,value): 
    self.set_frame_204_delay_sec(value)
  @property
  def frame_204_texture(self): 
    return self.get_frame_204_texture()
  @frame_204_texture.setter 
  def frame_204_texture(self,value): 
    self.set_frame_204_texture(value)
  @property
  def frame_205_delay_sec(self): 
    return self.get_frame_205_delay_sec()
  @frame_205_delay_sec.setter 
  def frame_205_delay_sec(self,value): 
    self.set_frame_205_delay_sec(value)
  @property
  def frame_205_texture(self): 
    return self.get_frame_205_texture()
  @frame_205_texture.setter 
  def frame_205_texture(self,value): 
    self.set_frame_205_texture(value)
  @property
  def frame_206_delay_sec(self): 
    return self.get_frame_206_delay_sec()
  @frame_206_delay_sec.setter 
  def frame_206_delay_sec(self,value): 
    self.set_frame_206_delay_sec(value)
  @property
  def frame_206_texture(self): 
    return self.get_frame_206_texture()
  @frame_206_texture.setter 
  def frame_206_texture(self,value): 
    self.set_frame_206_texture(value)
  @property
  def frame_207_delay_sec(self): 
    return self.get_frame_207_delay_sec()
  @frame_207_delay_sec.setter 
  def frame_207_delay_sec(self,value): 
    self.set_frame_207_delay_sec(value)
  @property
  def frame_207_texture(self): 
    return self.get_frame_207_texture()
  @frame_207_texture.setter 
  def frame_207_texture(self,value): 
    self.set_frame_207_texture(value)
  @property
  def frame_208_delay_sec(self): 
    return self.get_frame_208_delay_sec()
  @frame_208_delay_sec.setter 
  def frame_208_delay_sec(self,value): 
    self.set_frame_208_delay_sec(value)
  @property
  def frame_208_texture(self): 
    return self.get_frame_208_texture()
  @frame_208_texture.setter 
  def frame_208_texture(self,value): 
    self.set_frame_208_texture(value)
  @property
  def frame_209_delay_sec(self): 
    return self.get_frame_209_delay_sec()
  @frame_209_delay_sec.setter 
  def frame_209_delay_sec(self,value): 
    self.set_frame_209_delay_sec(value)
  @property
  def frame_209_texture(self): 
    return self.get_frame_209_texture()
  @frame_209_texture.setter 
  def frame_209_texture(self,value): 
    self.set_frame_209_texture(value)
  @property
  def frame_21_delay_sec(self): 
    return self.get_frame_21_delay_sec()
  @frame_21_delay_sec.setter 
  def frame_21_delay_sec(self,value): 
    self.set_frame_21_delay_sec(value)
  @property
  def frame_21_texture(self): 
    return self.get_frame_21_texture()
  @frame_21_texture.setter 
  def frame_21_texture(self,value): 
    self.set_frame_21_texture(value)
  @property
  def frame_210_delay_sec(self): 
    return self.get_frame_210_delay_sec()
  @frame_210_delay_sec.setter 
  def frame_210_delay_sec(self,value): 
    self.set_frame_210_delay_sec(value)
  @property
  def frame_210_texture(self): 
    return self.get_frame_210_texture()
  @frame_210_texture.setter 
  def frame_210_texture(self,value): 
    self.set_frame_210_texture(value)
  @property
  def frame_211_delay_sec(self): 
    return self.get_frame_211_delay_sec()
  @frame_211_delay_sec.setter 
  def frame_211_delay_sec(self,value): 
    self.set_frame_211_delay_sec(value)
  @property
  def frame_211_texture(self): 
    return self.get_frame_211_texture()
  @frame_211_texture.setter 
  def frame_211_texture(self,value): 
    self.set_frame_211_texture(value)
  @property
  def frame_212_delay_sec(self): 
    return self.get_frame_212_delay_sec()
  @frame_212_delay_sec.setter 
  def frame_212_delay_sec(self,value): 
    self.set_frame_212_delay_sec(value)
  @property
  def frame_212_texture(self): 
    return self.get_frame_212_texture()
  @frame_212_texture.setter 
  def frame_212_texture(self,value): 
    self.set_frame_212_texture(value)
  @property
  def frame_213_delay_sec(self): 
    return self.get_frame_213_delay_sec()
  @frame_213_delay_sec.setter 
  def frame_213_delay_sec(self,value): 
    self.set_frame_213_delay_sec(value)
  @property
  def frame_213_texture(self): 
    return self.get_frame_213_texture()
  @frame_213_texture.setter 
  def frame_213_texture(self,value): 
    self.set_frame_213_texture(value)
  @property
  def frame_214_delay_sec(self): 
    return self.get_frame_214_delay_sec()
  @frame_214_delay_sec.setter 
  def frame_214_delay_sec(self,value): 
    self.set_frame_214_delay_sec(value)
  @property
  def frame_214_texture(self): 
    return self.get_frame_214_texture()
  @frame_214_texture.setter 
  def frame_214_texture(self,value): 
    self.set_frame_214_texture(value)
  @property
  def frame_215_delay_sec(self): 
    return self.get_frame_215_delay_sec()
  @frame_215_delay_sec.setter 
  def frame_215_delay_sec(self,value): 
    self.set_frame_215_delay_sec(value)
  @property
  def frame_215_texture(self): 
    return self.get_frame_215_texture()
  @frame_215_texture.setter 
  def frame_215_texture(self,value): 
    self.set_frame_215_texture(value)
  @property
  def frame_216_delay_sec(self): 
    return self.get_frame_216_delay_sec()
  @frame_216_delay_sec.setter 
  def frame_216_delay_sec(self,value): 
    self.set_frame_216_delay_sec(value)
  @property
  def frame_216_texture(self): 
    return self.get_frame_216_texture()
  @frame_216_texture.setter 
  def frame_216_texture(self,value): 
    self.set_frame_216_texture(value)
  @property
  def frame_217_delay_sec(self): 
    return self.get_frame_217_delay_sec()
  @frame_217_delay_sec.setter 
  def frame_217_delay_sec(self,value): 
    self.set_frame_217_delay_sec(value)
  @property
  def frame_217_texture(self): 
    return self.get_frame_217_texture()
  @frame_217_texture.setter 
  def frame_217_texture(self,value): 
    self.set_frame_217_texture(value)
  @property
  def frame_218_delay_sec(self): 
    return self.get_frame_218_delay_sec()
  @frame_218_delay_sec.setter 
  def frame_218_delay_sec(self,value): 
    self.set_frame_218_delay_sec(value)
  @property
  def frame_218_texture(self): 
    return self.get_frame_218_texture()
  @frame_218_texture.setter 
  def frame_218_texture(self,value): 
    self.set_frame_218_texture(value)
  @property
  def frame_219_delay_sec(self): 
    return self.get_frame_219_delay_sec()
  @frame_219_delay_sec.setter 
  def frame_219_delay_sec(self,value): 
    self.set_frame_219_delay_sec(value)
  @property
  def frame_219_texture(self): 
    return self.get_frame_219_texture()
  @frame_219_texture.setter 
  def frame_219_texture(self,value): 
    self.set_frame_219_texture(value)
  @property
  def frame_22_delay_sec(self): 
    return self.get_frame_22_delay_sec()
  @frame_22_delay_sec.setter 
  def frame_22_delay_sec(self,value): 
    self.set_frame_22_delay_sec(value)
  @property
  def frame_22_texture(self): 
    return self.get_frame_22_texture()
  @frame_22_texture.setter 
  def frame_22_texture(self,value): 
    self.set_frame_22_texture(value)
  @property
  def frame_220_delay_sec(self): 
    return self.get_frame_220_delay_sec()
  @frame_220_delay_sec.setter 
  def frame_220_delay_sec(self,value): 
    self.set_frame_220_delay_sec(value)
  @property
  def frame_220_texture(self): 
    return self.get_frame_220_texture()
  @frame_220_texture.setter 
  def frame_220_texture(self,value): 
    self.set_frame_220_texture(value)
  @property
  def frame_221_delay_sec(self): 
    return self.get_frame_221_delay_sec()
  @frame_221_delay_sec.setter 
  def frame_221_delay_sec(self,value): 
    self.set_frame_221_delay_sec(value)
  @property
  def frame_221_texture(self): 
    return self.get_frame_221_texture()
  @frame_221_texture.setter 
  def frame_221_texture(self,value): 
    self.set_frame_221_texture(value)
  @property
  def frame_222_delay_sec(self): 
    return self.get_frame_222_delay_sec()
  @frame_222_delay_sec.setter 
  def frame_222_delay_sec(self,value): 
    self.set_frame_222_delay_sec(value)
  @property
  def frame_222_texture(self): 
    return self.get_frame_222_texture()
  @frame_222_texture.setter 
  def frame_222_texture(self,value): 
    self.set_frame_222_texture(value)
  @property
  def frame_223_delay_sec(self): 
    return self.get_frame_223_delay_sec()
  @frame_223_delay_sec.setter 
  def frame_223_delay_sec(self,value): 
    self.set_frame_223_delay_sec(value)
  @property
  def frame_223_texture(self): 
    return self.get_frame_223_texture()
  @frame_223_texture.setter 
  def frame_223_texture(self,value): 
    self.set_frame_223_texture(value)
  @property
  def frame_224_delay_sec(self): 
    return self.get_frame_224_delay_sec()
  @frame_224_delay_sec.setter 
  def frame_224_delay_sec(self,value): 
    self.set_frame_224_delay_sec(value)
  @property
  def frame_224_texture(self): 
    return self.get_frame_224_texture()
  @frame_224_texture.setter 
  def frame_224_texture(self,value): 
    self.set_frame_224_texture(value)
  @property
  def frame_225_delay_sec(self): 
    return self.get_frame_225_delay_sec()
  @frame_225_delay_sec.setter 
  def frame_225_delay_sec(self,value): 
    self.set_frame_225_delay_sec(value)
  @property
  def frame_225_texture(self): 
    return self.get_frame_225_texture()
  @frame_225_texture.setter 
  def frame_225_texture(self,value): 
    self.set_frame_225_texture(value)
  @property
  def frame_226_delay_sec(self): 
    return self.get_frame_226_delay_sec()
  @frame_226_delay_sec.setter 
  def frame_226_delay_sec(self,value): 
    self.set_frame_226_delay_sec(value)
  @property
  def frame_226_texture(self): 
    return self.get_frame_226_texture()
  @frame_226_texture.setter 
  def frame_226_texture(self,value): 
    self.set_frame_226_texture(value)
  @property
  def frame_227_delay_sec(self): 
    return self.get_frame_227_delay_sec()
  @frame_227_delay_sec.setter 
  def frame_227_delay_sec(self,value): 
    self.set_frame_227_delay_sec(value)
  @property
  def frame_227_texture(self): 
    return self.get_frame_227_texture()
  @frame_227_texture.setter 
  def frame_227_texture(self,value): 
    self.set_frame_227_texture(value)
  @property
  def frame_228_delay_sec(self): 
    return self.get_frame_228_delay_sec()
  @frame_228_delay_sec.setter 
  def frame_228_delay_sec(self,value): 
    self.set_frame_228_delay_sec(value)
  @property
  def frame_228_texture(self): 
    return self.get_frame_228_texture()
  @frame_228_texture.setter 
  def frame_228_texture(self,value): 
    self.set_frame_228_texture(value)
  @property
  def frame_229_delay_sec(self): 
    return self.get_frame_229_delay_sec()
  @frame_229_delay_sec.setter 
  def frame_229_delay_sec(self,value): 
    self.set_frame_229_delay_sec(value)
  @property
  def frame_229_texture(self): 
    return self.get_frame_229_texture()
  @frame_229_texture.setter 
  def frame_229_texture(self,value): 
    self.set_frame_229_texture(value)
  @property
  def frame_23_delay_sec(self): 
    return self.get_frame_23_delay_sec()
  @frame_23_delay_sec.setter 
  def frame_23_delay_sec(self,value): 
    self.set_frame_23_delay_sec(value)
  @property
  def frame_23_texture(self): 
    return self.get_frame_23_texture()
  @frame_23_texture.setter 
  def frame_23_texture(self,value): 
    self.set_frame_23_texture(value)
  @property
  def frame_230_delay_sec(self): 
    return self.get_frame_230_delay_sec()
  @frame_230_delay_sec.setter 
  def frame_230_delay_sec(self,value): 
    self.set_frame_230_delay_sec(value)
  @property
  def frame_230_texture(self): 
    return self.get_frame_230_texture()
  @frame_230_texture.setter 
  def frame_230_texture(self,value): 
    self.set_frame_230_texture(value)
  @property
  def frame_231_delay_sec(self): 
    return self.get_frame_231_delay_sec()
  @frame_231_delay_sec.setter 
  def frame_231_delay_sec(self,value): 
    self.set_frame_231_delay_sec(value)
  @property
  def frame_231_texture(self): 
    return self.get_frame_231_texture()
  @frame_231_texture.setter 
  def frame_231_texture(self,value): 
    self.set_frame_231_texture(value)
  @property
  def frame_232_delay_sec(self): 
    return self.get_frame_232_delay_sec()
  @frame_232_delay_sec.setter 
  def frame_232_delay_sec(self,value): 
    self.set_frame_232_delay_sec(value)
  @property
  def frame_232_texture(self): 
    return self.get_frame_232_texture()
  @frame_232_texture.setter 
  def frame_232_texture(self,value): 
    self.set_frame_232_texture(value)
  @property
  def frame_233_delay_sec(self): 
    return self.get_frame_233_delay_sec()
  @frame_233_delay_sec.setter 
  def frame_233_delay_sec(self,value): 
    self.set_frame_233_delay_sec(value)
  @property
  def frame_233_texture(self): 
    return self.get_frame_233_texture()
  @frame_233_texture.setter 
  def frame_233_texture(self,value): 
    self.set_frame_233_texture(value)
  @property
  def frame_234_delay_sec(self): 
    return self.get_frame_234_delay_sec()
  @frame_234_delay_sec.setter 
  def frame_234_delay_sec(self,value): 
    self.set_frame_234_delay_sec(value)
  @property
  def frame_234_texture(self): 
    return self.get_frame_234_texture()
  @frame_234_texture.setter 
  def frame_234_texture(self,value): 
    self.set_frame_234_texture(value)
  @property
  def frame_235_delay_sec(self): 
    return self.get_frame_235_delay_sec()
  @frame_235_delay_sec.setter 
  def frame_235_delay_sec(self,value): 
    self.set_frame_235_delay_sec(value)
  @property
  def frame_235_texture(self): 
    return self.get_frame_235_texture()
  @frame_235_texture.setter 
  def frame_235_texture(self,value): 
    self.set_frame_235_texture(value)
  @property
  def frame_236_delay_sec(self): 
    return self.get_frame_236_delay_sec()
  @frame_236_delay_sec.setter 
  def frame_236_delay_sec(self,value): 
    self.set_frame_236_delay_sec(value)
  @property
  def frame_236_texture(self): 
    return self.get_frame_236_texture()
  @frame_236_texture.setter 
  def frame_236_texture(self,value): 
    self.set_frame_236_texture(value)
  @property
  def frame_237_delay_sec(self): 
    return self.get_frame_237_delay_sec()
  @frame_237_delay_sec.setter 
  def frame_237_delay_sec(self,value): 
    self.set_frame_237_delay_sec(value)
  @property
  def frame_237_texture(self): 
    return self.get_frame_237_texture()
  @frame_237_texture.setter 
  def frame_237_texture(self,value): 
    self.set_frame_237_texture(value)
  @property
  def frame_238_delay_sec(self): 
    return self.get_frame_238_delay_sec()
  @frame_238_delay_sec.setter 
  def frame_238_delay_sec(self,value): 
    self.set_frame_238_delay_sec(value)
  @property
  def frame_238_texture(self): 
    return self.get_frame_238_texture()
  @frame_238_texture.setter 
  def frame_238_texture(self,value): 
    self.set_frame_238_texture(value)
  @property
  def frame_239_delay_sec(self): 
    return self.get_frame_239_delay_sec()
  @frame_239_delay_sec.setter 
  def frame_239_delay_sec(self,value): 
    self.set_frame_239_delay_sec(value)
  @property
  def frame_239_texture(self): 
    return self.get_frame_239_texture()
  @frame_239_texture.setter 
  def frame_239_texture(self,value): 
    self.set_frame_239_texture(value)
  @property
  def frame_24_delay_sec(self): 
    return self.get_frame_24_delay_sec()
  @frame_24_delay_sec.setter 
  def frame_24_delay_sec(self,value): 
    self.set_frame_24_delay_sec(value)
  @property
  def frame_24_texture(self): 
    return self.get_frame_24_texture()
  @frame_24_texture.setter 
  def frame_24_texture(self,value): 
    self.set_frame_24_texture(value)
  @property
  def frame_240_delay_sec(self): 
    return self.get_frame_240_delay_sec()
  @frame_240_delay_sec.setter 
  def frame_240_delay_sec(self,value): 
    self.set_frame_240_delay_sec(value)
  @property
  def frame_240_texture(self): 
    return self.get_frame_240_texture()
  @frame_240_texture.setter 
  def frame_240_texture(self,value): 
    self.set_frame_240_texture(value)
  @property
  def frame_241_delay_sec(self): 
    return self.get_frame_241_delay_sec()
  @frame_241_delay_sec.setter 
  def frame_241_delay_sec(self,value): 
    self.set_frame_241_delay_sec(value)
  @property
  def frame_241_texture(self): 
    return self.get_frame_241_texture()
  @frame_241_texture.setter 
  def frame_241_texture(self,value): 
    self.set_frame_241_texture(value)
  @property
  def frame_242_delay_sec(self): 
    return self.get_frame_242_delay_sec()
  @frame_242_delay_sec.setter 
  def frame_242_delay_sec(self,value): 
    self.set_frame_242_delay_sec(value)
  @property
  def frame_242_texture(self): 
    return self.get_frame_242_texture()
  @frame_242_texture.setter 
  def frame_242_texture(self,value): 
    self.set_frame_242_texture(value)
  @property
  def frame_243_delay_sec(self): 
    return self.get_frame_243_delay_sec()
  @frame_243_delay_sec.setter 
  def frame_243_delay_sec(self,value): 
    self.set_frame_243_delay_sec(value)
  @property
  def frame_243_texture(self): 
    return self.get_frame_243_texture()
  @frame_243_texture.setter 
  def frame_243_texture(self,value): 
    self.set_frame_243_texture(value)
  @property
  def frame_244_delay_sec(self): 
    return self.get_frame_244_delay_sec()
  @frame_244_delay_sec.setter 
  def frame_244_delay_sec(self,value): 
    self.set_frame_244_delay_sec(value)
  @property
  def frame_244_texture(self): 
    return self.get_frame_244_texture()
  @frame_244_texture.setter 
  def frame_244_texture(self,value): 
    self.set_frame_244_texture(value)
  @property
  def frame_245_delay_sec(self): 
    return self.get_frame_245_delay_sec()
  @frame_245_delay_sec.setter 
  def frame_245_delay_sec(self,value): 
    self.set_frame_245_delay_sec(value)
  @property
  def frame_245_texture(self): 
    return self.get_frame_245_texture()
  @frame_245_texture.setter 
  def frame_245_texture(self,value): 
    self.set_frame_245_texture(value)
  @property
  def frame_246_delay_sec(self): 
    return self.get_frame_246_delay_sec()
  @frame_246_delay_sec.setter 
  def frame_246_delay_sec(self,value): 
    self.set_frame_246_delay_sec(value)
  @property
  def frame_246_texture(self): 
    return self.get_frame_246_texture()
  @frame_246_texture.setter 
  def frame_246_texture(self,value): 
    self.set_frame_246_texture(value)
  @property
  def frame_247_delay_sec(self): 
    return self.get_frame_247_delay_sec()
  @frame_247_delay_sec.setter 
  def frame_247_delay_sec(self,value): 
    self.set_frame_247_delay_sec(value)
  @property
  def frame_247_texture(self): 
    return self.get_frame_247_texture()
  @frame_247_texture.setter 
  def frame_247_texture(self,value): 
    self.set_frame_247_texture(value)
  @property
  def frame_248_delay_sec(self): 
    return self.get_frame_248_delay_sec()
  @frame_248_delay_sec.setter 
  def frame_248_delay_sec(self,value): 
    self.set_frame_248_delay_sec(value)
  @property
  def frame_248_texture(self): 
    return self.get_frame_248_texture()
  @frame_248_texture.setter 
  def frame_248_texture(self,value): 
    self.set_frame_248_texture(value)
  @property
  def frame_249_delay_sec(self): 
    return self.get_frame_249_delay_sec()
  @frame_249_delay_sec.setter 
  def frame_249_delay_sec(self,value): 
    self.set_frame_249_delay_sec(value)
  @property
  def frame_249_texture(self): 
    return self.get_frame_249_texture()
  @frame_249_texture.setter 
  def frame_249_texture(self,value): 
    self.set_frame_249_texture(value)
  @property
  def frame_25_delay_sec(self): 
    return self.get_frame_25_delay_sec()
  @frame_25_delay_sec.setter 
  def frame_25_delay_sec(self,value): 
    self.set_frame_25_delay_sec(value)
  @property
  def frame_25_texture(self): 
    return self.get_frame_25_texture()
  @frame_25_texture.setter 
  def frame_25_texture(self,value): 
    self.set_frame_25_texture(value)
  @property
  def frame_250_delay_sec(self): 
    return self.get_frame_250_delay_sec()
  @frame_250_delay_sec.setter 
  def frame_250_delay_sec(self,value): 
    self.set_frame_250_delay_sec(value)
  @property
  def frame_250_texture(self): 
    return self.get_frame_250_texture()
  @frame_250_texture.setter 
  def frame_250_texture(self,value): 
    self.set_frame_250_texture(value)
  @property
  def frame_251_delay_sec(self): 
    return self.get_frame_251_delay_sec()
  @frame_251_delay_sec.setter 
  def frame_251_delay_sec(self,value): 
    self.set_frame_251_delay_sec(value)
  @property
  def frame_251_texture(self): 
    return self.get_frame_251_texture()
  @frame_251_texture.setter 
  def frame_251_texture(self,value): 
    self.set_frame_251_texture(value)
  @property
  def frame_252_delay_sec(self): 
    return self.get_frame_252_delay_sec()
  @frame_252_delay_sec.setter 
  def frame_252_delay_sec(self,value): 
    self.set_frame_252_delay_sec(value)
  @property
  def frame_252_texture(self): 
    return self.get_frame_252_texture()
  @frame_252_texture.setter 
  def frame_252_texture(self,value): 
    self.set_frame_252_texture(value)
  @property
  def frame_253_delay_sec(self): 
    return self.get_frame_253_delay_sec()
  @frame_253_delay_sec.setter 
  def frame_253_delay_sec(self,value): 
    self.set_frame_253_delay_sec(value)
  @property
  def frame_253_texture(self): 
    return self.get_frame_253_texture()
  @frame_253_texture.setter 
  def frame_253_texture(self,value): 
    self.set_frame_253_texture(value)
  @property
  def frame_254_delay_sec(self): 
    return self.get_frame_254_delay_sec()
  @frame_254_delay_sec.setter 
  def frame_254_delay_sec(self,value): 
    self.set_frame_254_delay_sec(value)
  @property
  def frame_254_texture(self): 
    return self.get_frame_254_texture()
  @frame_254_texture.setter 
  def frame_254_texture(self,value): 
    self.set_frame_254_texture(value)
  @property
  def frame_255_delay_sec(self): 
    return self.get_frame_255_delay_sec()
  @frame_255_delay_sec.setter 
  def frame_255_delay_sec(self,value): 
    self.set_frame_255_delay_sec(value)
  @property
  def frame_255_texture(self): 
    return self.get_frame_255_texture()
  @frame_255_texture.setter 
  def frame_255_texture(self,value): 
    self.set_frame_255_texture(value)
  @property
  def frame_26_delay_sec(self): 
    return self.get_frame_26_delay_sec()
  @frame_26_delay_sec.setter 
  def frame_26_delay_sec(self,value): 
    self.set_frame_26_delay_sec(value)
  @property
  def frame_26_texture(self): 
    return self.get_frame_26_texture()
  @frame_26_texture.setter 
  def frame_26_texture(self,value): 
    self.set_frame_26_texture(value)
  @property
  def frame_27_delay_sec(self): 
    return self.get_frame_27_delay_sec()
  @frame_27_delay_sec.setter 
  def frame_27_delay_sec(self,value): 
    self.set_frame_27_delay_sec(value)
  @property
  def frame_27_texture(self): 
    return self.get_frame_27_texture()
  @frame_27_texture.setter 
  def frame_27_texture(self,value): 
    self.set_frame_27_texture(value)
  @property
  def frame_28_delay_sec(self): 
    return self.get_frame_28_delay_sec()
  @frame_28_delay_sec.setter 
  def frame_28_delay_sec(self,value): 
    self.set_frame_28_delay_sec(value)
  @property
  def frame_28_texture(self): 
    return self.get_frame_28_texture()
  @frame_28_texture.setter 
  def frame_28_texture(self,value): 
    self.set_frame_28_texture(value)
  @property
  def frame_29_delay_sec(self): 
    return self.get_frame_29_delay_sec()
  @frame_29_delay_sec.setter 
  def frame_29_delay_sec(self,value): 
    self.set_frame_29_delay_sec(value)
  @property
  def frame_29_texture(self): 
    return self.get_frame_29_texture()
  @frame_29_texture.setter 
  def frame_29_texture(self,value): 
    self.set_frame_29_texture(value)
  @property
  def frame_3_delay_sec(self): 
    return self.get_frame_3_delay_sec()
  @frame_3_delay_sec.setter 
  def frame_3_delay_sec(self,value): 
    self.set_frame_3_delay_sec(value)
  @property
  def frame_3_texture(self): 
    return self.get_frame_3_texture()
  @frame_3_texture.setter 
  def frame_3_texture(self,value): 
    self.set_frame_3_texture(value)
  @property
  def frame_30_delay_sec(self): 
    return self.get_frame_30_delay_sec()
  @frame_30_delay_sec.setter 
  def frame_30_delay_sec(self,value): 
    self.set_frame_30_delay_sec(value)
  @property
  def frame_30_texture(self): 
    return self.get_frame_30_texture()
  @frame_30_texture.setter 
  def frame_30_texture(self,value): 
    self.set_frame_30_texture(value)
  @property
  def frame_31_delay_sec(self): 
    return self.get_frame_31_delay_sec()
  @frame_31_delay_sec.setter 
  def frame_31_delay_sec(self,value): 
    self.set_frame_31_delay_sec(value)
  @property
  def frame_31_texture(self): 
    return self.get_frame_31_texture()
  @frame_31_texture.setter 
  def frame_31_texture(self,value): 
    self.set_frame_31_texture(value)
  @property
  def frame_32_delay_sec(self): 
    return self.get_frame_32_delay_sec()
  @frame_32_delay_sec.setter 
  def frame_32_delay_sec(self,value): 
    self.set_frame_32_delay_sec(value)
  @property
  def frame_32_texture(self): 
    return self.get_frame_32_texture()
  @frame_32_texture.setter 
  def frame_32_texture(self,value): 
    self.set_frame_32_texture(value)
  @property
  def frame_33_delay_sec(self): 
    return self.get_frame_33_delay_sec()
  @frame_33_delay_sec.setter 
  def frame_33_delay_sec(self,value): 
    self.set_frame_33_delay_sec(value)
  @property
  def frame_33_texture(self): 
    return self.get_frame_33_texture()
  @frame_33_texture.setter 
  def frame_33_texture(self,value): 
    self.set_frame_33_texture(value)
  @property
  def frame_34_delay_sec(self): 
    return self.get_frame_34_delay_sec()
  @frame_34_delay_sec.setter 
  def frame_34_delay_sec(self,value): 
    self.set_frame_34_delay_sec(value)
  @property
  def frame_34_texture(self): 
    return self.get_frame_34_texture()
  @frame_34_texture.setter 
  def frame_34_texture(self,value): 
    self.set_frame_34_texture(value)
  @property
  def frame_35_delay_sec(self): 
    return self.get_frame_35_delay_sec()
  @frame_35_delay_sec.setter 
  def frame_35_delay_sec(self,value): 
    self.set_frame_35_delay_sec(value)
  @property
  def frame_35_texture(self): 
    return self.get_frame_35_texture()
  @frame_35_texture.setter 
  def frame_35_texture(self,value): 
    self.set_frame_35_texture(value)
  @property
  def frame_36_delay_sec(self): 
    return self.get_frame_36_delay_sec()
  @frame_36_delay_sec.setter 
  def frame_36_delay_sec(self,value): 
    self.set_frame_36_delay_sec(value)
  @property
  def frame_36_texture(self): 
    return self.get_frame_36_texture()
  @frame_36_texture.setter 
  def frame_36_texture(self,value): 
    self.set_frame_36_texture(value)
  @property
  def frame_37_delay_sec(self): 
    return self.get_frame_37_delay_sec()
  @frame_37_delay_sec.setter 
  def frame_37_delay_sec(self,value): 
    self.set_frame_37_delay_sec(value)
  @property
  def frame_37_texture(self): 
    return self.get_frame_37_texture()
  @frame_37_texture.setter 
  def frame_37_texture(self,value): 
    self.set_frame_37_texture(value)
  @property
  def frame_38_delay_sec(self): 
    return self.get_frame_38_delay_sec()
  @frame_38_delay_sec.setter 
  def frame_38_delay_sec(self,value): 
    self.set_frame_38_delay_sec(value)
  @property
  def frame_38_texture(self): 
    return self.get_frame_38_texture()
  @frame_38_texture.setter 
  def frame_38_texture(self,value): 
    self.set_frame_38_texture(value)
  @property
  def frame_39_delay_sec(self): 
    return self.get_frame_39_delay_sec()
  @frame_39_delay_sec.setter 
  def frame_39_delay_sec(self,value): 
    self.set_frame_39_delay_sec(value)
  @property
  def frame_39_texture(self): 
    return self.get_frame_39_texture()
  @frame_39_texture.setter 
  def frame_39_texture(self,value): 
    self.set_frame_39_texture(value)
  @property
  def frame_4_delay_sec(self): 
    return self.get_frame_4_delay_sec()
  @frame_4_delay_sec.setter 
  def frame_4_delay_sec(self,value): 
    self.set_frame_4_delay_sec(value)
  @property
  def frame_4_texture(self): 
    return self.get_frame_4_texture()
  @frame_4_texture.setter 
  def frame_4_texture(self,value): 
    self.set_frame_4_texture(value)
  @property
  def frame_40_delay_sec(self): 
    return self.get_frame_40_delay_sec()
  @frame_40_delay_sec.setter 
  def frame_40_delay_sec(self,value): 
    self.set_frame_40_delay_sec(value)
  @property
  def frame_40_texture(self): 
    return self.get_frame_40_texture()
  @frame_40_texture.setter 
  def frame_40_texture(self,value): 
    self.set_frame_40_texture(value)
  @property
  def frame_41_delay_sec(self): 
    return self.get_frame_41_delay_sec()
  @frame_41_delay_sec.setter 
  def frame_41_delay_sec(self,value): 
    self.set_frame_41_delay_sec(value)
  @property
  def frame_41_texture(self): 
    return self.get_frame_41_texture()
  @frame_41_texture.setter 
  def frame_41_texture(self,value): 
    self.set_frame_41_texture(value)
  @property
  def frame_42_delay_sec(self): 
    return self.get_frame_42_delay_sec()
  @frame_42_delay_sec.setter 
  def frame_42_delay_sec(self,value): 
    self.set_frame_42_delay_sec(value)
  @property
  def frame_42_texture(self): 
    return self.get_frame_42_texture()
  @frame_42_texture.setter 
  def frame_42_texture(self,value): 
    self.set_frame_42_texture(value)
  @property
  def frame_43_delay_sec(self): 
    return self.get_frame_43_delay_sec()
  @frame_43_delay_sec.setter 
  def frame_43_delay_sec(self,value): 
    self.set_frame_43_delay_sec(value)
  @property
  def frame_43_texture(self): 
    return self.get_frame_43_texture()
  @frame_43_texture.setter 
  def frame_43_texture(self,value): 
    self.set_frame_43_texture(value)
  @property
  def frame_44_delay_sec(self): 
    return self.get_frame_44_delay_sec()
  @frame_44_delay_sec.setter 
  def frame_44_delay_sec(self,value): 
    self.set_frame_44_delay_sec(value)
  @property
  def frame_44_texture(self): 
    return self.get_frame_44_texture()
  @frame_44_texture.setter 
  def frame_44_texture(self,value): 
    self.set_frame_44_texture(value)
  @property
  def frame_45_delay_sec(self): 
    return self.get_frame_45_delay_sec()
  @frame_45_delay_sec.setter 
  def frame_45_delay_sec(self,value): 
    self.set_frame_45_delay_sec(value)
  @property
  def frame_45_texture(self): 
    return self.get_frame_45_texture()
  @frame_45_texture.setter 
  def frame_45_texture(self,value): 
    self.set_frame_45_texture(value)
  @property
  def frame_46_delay_sec(self): 
    return self.get_frame_46_delay_sec()
  @frame_46_delay_sec.setter 
  def frame_46_delay_sec(self,value): 
    self.set_frame_46_delay_sec(value)
  @property
  def frame_46_texture(self): 
    return self.get_frame_46_texture()
  @frame_46_texture.setter 
  def frame_46_texture(self,value): 
    self.set_frame_46_texture(value)
  @property
  def frame_47_delay_sec(self): 
    return self.get_frame_47_delay_sec()
  @frame_47_delay_sec.setter 
  def frame_47_delay_sec(self,value): 
    self.set_frame_47_delay_sec(value)
  @property
  def frame_47_texture(self): 
    return self.get_frame_47_texture()
  @frame_47_texture.setter 
  def frame_47_texture(self,value): 
    self.set_frame_47_texture(value)
  @property
  def frame_48_delay_sec(self): 
    return self.get_frame_48_delay_sec()
  @frame_48_delay_sec.setter 
  def frame_48_delay_sec(self,value): 
    self.set_frame_48_delay_sec(value)
  @property
  def frame_48_texture(self): 
    return self.get_frame_48_texture()
  @frame_48_texture.setter 
  def frame_48_texture(self,value): 
    self.set_frame_48_texture(value)
  @property
  def frame_49_delay_sec(self): 
    return self.get_frame_49_delay_sec()
  @frame_49_delay_sec.setter 
  def frame_49_delay_sec(self,value): 
    self.set_frame_49_delay_sec(value)
  @property
  def frame_49_texture(self): 
    return self.get_frame_49_texture()
  @frame_49_texture.setter 
  def frame_49_texture(self,value): 
    self.set_frame_49_texture(value)
  @property
  def frame_5_delay_sec(self): 
    return self.get_frame_5_delay_sec()
  @frame_5_delay_sec.setter 
  def frame_5_delay_sec(self,value): 
    self.set_frame_5_delay_sec(value)
  @property
  def frame_5_texture(self): 
    return self.get_frame_5_texture()
  @frame_5_texture.setter 
  def frame_5_texture(self,value): 
    self.set_frame_5_texture(value)
  @property
  def frame_50_delay_sec(self): 
    return self.get_frame_50_delay_sec()
  @frame_50_delay_sec.setter 
  def frame_50_delay_sec(self,value): 
    self.set_frame_50_delay_sec(value)
  @property
  def frame_50_texture(self): 
    return self.get_frame_50_texture()
  @frame_50_texture.setter 
  def frame_50_texture(self,value): 
    self.set_frame_50_texture(value)
  @property
  def frame_51_delay_sec(self): 
    return self.get_frame_51_delay_sec()
  @frame_51_delay_sec.setter 
  def frame_51_delay_sec(self,value): 
    self.set_frame_51_delay_sec(value)
  @property
  def frame_51_texture(self): 
    return self.get_frame_51_texture()
  @frame_51_texture.setter 
  def frame_51_texture(self,value): 
    self.set_frame_51_texture(value)
  @property
  def frame_52_delay_sec(self): 
    return self.get_frame_52_delay_sec()
  @frame_52_delay_sec.setter 
  def frame_52_delay_sec(self,value): 
    self.set_frame_52_delay_sec(value)
  @property
  def frame_52_texture(self): 
    return self.get_frame_52_texture()
  @frame_52_texture.setter 
  def frame_52_texture(self,value): 
    self.set_frame_52_texture(value)
  @property
  def frame_53_delay_sec(self): 
    return self.get_frame_53_delay_sec()
  @frame_53_delay_sec.setter 
  def frame_53_delay_sec(self,value): 
    self.set_frame_53_delay_sec(value)
  @property
  def frame_53_texture(self): 
    return self.get_frame_53_texture()
  @frame_53_texture.setter 
  def frame_53_texture(self,value): 
    self.set_frame_53_texture(value)
  @property
  def frame_54_delay_sec(self): 
    return self.get_frame_54_delay_sec()
  @frame_54_delay_sec.setter 
  def frame_54_delay_sec(self,value): 
    self.set_frame_54_delay_sec(value)
  @property
  def frame_54_texture(self): 
    return self.get_frame_54_texture()
  @frame_54_texture.setter 
  def frame_54_texture(self,value): 
    self.set_frame_54_texture(value)
  @property
  def frame_55_delay_sec(self): 
    return self.get_frame_55_delay_sec()
  @frame_55_delay_sec.setter 
  def frame_55_delay_sec(self,value): 
    self.set_frame_55_delay_sec(value)
  @property
  def frame_55_texture(self): 
    return self.get_frame_55_texture()
  @frame_55_texture.setter 
  def frame_55_texture(self,value): 
    self.set_frame_55_texture(value)
  @property
  def frame_56_delay_sec(self): 
    return self.get_frame_56_delay_sec()
  @frame_56_delay_sec.setter 
  def frame_56_delay_sec(self,value): 
    self.set_frame_56_delay_sec(value)
  @property
  def frame_56_texture(self): 
    return self.get_frame_56_texture()
  @frame_56_texture.setter 
  def frame_56_texture(self,value): 
    self.set_frame_56_texture(value)
  @property
  def frame_57_delay_sec(self): 
    return self.get_frame_57_delay_sec()
  @frame_57_delay_sec.setter 
  def frame_57_delay_sec(self,value): 
    self.set_frame_57_delay_sec(value)
  @property
  def frame_57_texture(self): 
    return self.get_frame_57_texture()
  @frame_57_texture.setter 
  def frame_57_texture(self,value): 
    self.set_frame_57_texture(value)
  @property
  def frame_58_delay_sec(self): 
    return self.get_frame_58_delay_sec()
  @frame_58_delay_sec.setter 
  def frame_58_delay_sec(self,value): 
    self.set_frame_58_delay_sec(value)
  @property
  def frame_58_texture(self): 
    return self.get_frame_58_texture()
  @frame_58_texture.setter 
  def frame_58_texture(self,value): 
    self.set_frame_58_texture(value)
  @property
  def frame_59_delay_sec(self): 
    return self.get_frame_59_delay_sec()
  @frame_59_delay_sec.setter 
  def frame_59_delay_sec(self,value): 
    self.set_frame_59_delay_sec(value)
  @property
  def frame_59_texture(self): 
    return self.get_frame_59_texture()
  @frame_59_texture.setter 
  def frame_59_texture(self,value): 
    self.set_frame_59_texture(value)
  @property
  def frame_6_delay_sec(self): 
    return self.get_frame_6_delay_sec()
  @frame_6_delay_sec.setter 
  def frame_6_delay_sec(self,value): 
    self.set_frame_6_delay_sec(value)
  @property
  def frame_6_texture(self): 
    return self.get_frame_6_texture()
  @frame_6_texture.setter 
  def frame_6_texture(self,value): 
    self.set_frame_6_texture(value)
  @property
  def frame_60_delay_sec(self): 
    return self.get_frame_60_delay_sec()
  @frame_60_delay_sec.setter 
  def frame_60_delay_sec(self,value): 
    self.set_frame_60_delay_sec(value)
  @property
  def frame_60_texture(self): 
    return self.get_frame_60_texture()
  @frame_60_texture.setter 
  def frame_60_texture(self,value): 
    self.set_frame_60_texture(value)
  @property
  def frame_61_delay_sec(self): 
    return self.get_frame_61_delay_sec()
  @frame_61_delay_sec.setter 
  def frame_61_delay_sec(self,value): 
    self.set_frame_61_delay_sec(value)
  @property
  def frame_61_texture(self): 
    return self.get_frame_61_texture()
  @frame_61_texture.setter 
  def frame_61_texture(self,value): 
    self.set_frame_61_texture(value)
  @property
  def frame_62_delay_sec(self): 
    return self.get_frame_62_delay_sec()
  @frame_62_delay_sec.setter 
  def frame_62_delay_sec(self,value): 
    self.set_frame_62_delay_sec(value)
  @property
  def frame_62_texture(self): 
    return self.get_frame_62_texture()
  @frame_62_texture.setter 
  def frame_62_texture(self,value): 
    self.set_frame_62_texture(value)
  @property
  def frame_63_delay_sec(self): 
    return self.get_frame_63_delay_sec()
  @frame_63_delay_sec.setter 
  def frame_63_delay_sec(self,value): 
    self.set_frame_63_delay_sec(value)
  @property
  def frame_63_texture(self): 
    return self.get_frame_63_texture()
  @frame_63_texture.setter 
  def frame_63_texture(self,value): 
    self.set_frame_63_texture(value)
  @property
  def frame_64_delay_sec(self): 
    return self.get_frame_64_delay_sec()
  @frame_64_delay_sec.setter 
  def frame_64_delay_sec(self,value): 
    self.set_frame_64_delay_sec(value)
  @property
  def frame_64_texture(self): 
    return self.get_frame_64_texture()
  @frame_64_texture.setter 
  def frame_64_texture(self,value): 
    self.set_frame_64_texture(value)
  @property
  def frame_65_delay_sec(self): 
    return self.get_frame_65_delay_sec()
  @frame_65_delay_sec.setter 
  def frame_65_delay_sec(self,value): 
    self.set_frame_65_delay_sec(value)
  @property
  def frame_65_texture(self): 
    return self.get_frame_65_texture()
  @frame_65_texture.setter 
  def frame_65_texture(self,value): 
    self.set_frame_65_texture(value)
  @property
  def frame_66_delay_sec(self): 
    return self.get_frame_66_delay_sec()
  @frame_66_delay_sec.setter 
  def frame_66_delay_sec(self,value): 
    self.set_frame_66_delay_sec(value)
  @property
  def frame_66_texture(self): 
    return self.get_frame_66_texture()
  @frame_66_texture.setter 
  def frame_66_texture(self,value): 
    self.set_frame_66_texture(value)
  @property
  def frame_67_delay_sec(self): 
    return self.get_frame_67_delay_sec()
  @frame_67_delay_sec.setter 
  def frame_67_delay_sec(self,value): 
    self.set_frame_67_delay_sec(value)
  @property
  def frame_67_texture(self): 
    return self.get_frame_67_texture()
  @frame_67_texture.setter 
  def frame_67_texture(self,value): 
    self.set_frame_67_texture(value)
  @property
  def frame_68_delay_sec(self): 
    return self.get_frame_68_delay_sec()
  @frame_68_delay_sec.setter 
  def frame_68_delay_sec(self,value): 
    self.set_frame_68_delay_sec(value)
  @property
  def frame_68_texture(self): 
    return self.get_frame_68_texture()
  @frame_68_texture.setter 
  def frame_68_texture(self,value): 
    self.set_frame_68_texture(value)
  @property
  def frame_69_delay_sec(self): 
    return self.get_frame_69_delay_sec()
  @frame_69_delay_sec.setter 
  def frame_69_delay_sec(self,value): 
    self.set_frame_69_delay_sec(value)
  @property
  def frame_69_texture(self): 
    return self.get_frame_69_texture()
  @frame_69_texture.setter 
  def frame_69_texture(self,value): 
    self.set_frame_69_texture(value)
  @property
  def frame_7_delay_sec(self): 
    return self.get_frame_7_delay_sec()
  @frame_7_delay_sec.setter 
  def frame_7_delay_sec(self,value): 
    self.set_frame_7_delay_sec(value)
  @property
  def frame_7_texture(self): 
    return self.get_frame_7_texture()
  @frame_7_texture.setter 
  def frame_7_texture(self,value): 
    self.set_frame_7_texture(value)
  @property
  def frame_70_delay_sec(self): 
    return self.get_frame_70_delay_sec()
  @frame_70_delay_sec.setter 
  def frame_70_delay_sec(self,value): 
    self.set_frame_70_delay_sec(value)
  @property
  def frame_70_texture(self): 
    return self.get_frame_70_texture()
  @frame_70_texture.setter 
  def frame_70_texture(self,value): 
    self.set_frame_70_texture(value)
  @property
  def frame_71_delay_sec(self): 
    return self.get_frame_71_delay_sec()
  @frame_71_delay_sec.setter 
  def frame_71_delay_sec(self,value): 
    self.set_frame_71_delay_sec(value)
  @property
  def frame_71_texture(self): 
    return self.get_frame_71_texture()
  @frame_71_texture.setter 
  def frame_71_texture(self,value): 
    self.set_frame_71_texture(value)
  @property
  def frame_72_delay_sec(self): 
    return self.get_frame_72_delay_sec()
  @frame_72_delay_sec.setter 
  def frame_72_delay_sec(self,value): 
    self.set_frame_72_delay_sec(value)
  @property
  def frame_72_texture(self): 
    return self.get_frame_72_texture()
  @frame_72_texture.setter 
  def frame_72_texture(self,value): 
    self.set_frame_72_texture(value)
  @property
  def frame_73_delay_sec(self): 
    return self.get_frame_73_delay_sec()
  @frame_73_delay_sec.setter 
  def frame_73_delay_sec(self,value): 
    self.set_frame_73_delay_sec(value)
  @property
  def frame_73_texture(self): 
    return self.get_frame_73_texture()
  @frame_73_texture.setter 
  def frame_73_texture(self,value): 
    self.set_frame_73_texture(value)
  @property
  def frame_74_delay_sec(self): 
    return self.get_frame_74_delay_sec()
  @frame_74_delay_sec.setter 
  def frame_74_delay_sec(self,value): 
    self.set_frame_74_delay_sec(value)
  @property
  def frame_74_texture(self): 
    return self.get_frame_74_texture()
  @frame_74_texture.setter 
  def frame_74_texture(self,value): 
    self.set_frame_74_texture(value)
  @property
  def frame_75_delay_sec(self): 
    return self.get_frame_75_delay_sec()
  @frame_75_delay_sec.setter 
  def frame_75_delay_sec(self,value): 
    self.set_frame_75_delay_sec(value)
  @property
  def frame_75_texture(self): 
    return self.get_frame_75_texture()
  @frame_75_texture.setter 
  def frame_75_texture(self,value): 
    self.set_frame_75_texture(value)
  @property
  def frame_76_delay_sec(self): 
    return self.get_frame_76_delay_sec()
  @frame_76_delay_sec.setter 
  def frame_76_delay_sec(self,value): 
    self.set_frame_76_delay_sec(value)
  @property
  def frame_76_texture(self): 
    return self.get_frame_76_texture()
  @frame_76_texture.setter 
  def frame_76_texture(self,value): 
    self.set_frame_76_texture(value)
  @property
  def frame_77_delay_sec(self): 
    return self.get_frame_77_delay_sec()
  @frame_77_delay_sec.setter 
  def frame_77_delay_sec(self,value): 
    self.set_frame_77_delay_sec(value)
  @property
  def frame_77_texture(self): 
    return self.get_frame_77_texture()
  @frame_77_texture.setter 
  def frame_77_texture(self,value): 
    self.set_frame_77_texture(value)
  @property
  def frame_78_delay_sec(self): 
    return self.get_frame_78_delay_sec()
  @frame_78_delay_sec.setter 
  def frame_78_delay_sec(self,value): 
    self.set_frame_78_delay_sec(value)
  @property
  def frame_78_texture(self): 
    return self.get_frame_78_texture()
  @frame_78_texture.setter 
  def frame_78_texture(self,value): 
    self.set_frame_78_texture(value)
  @property
  def frame_79_delay_sec(self): 
    return self.get_frame_79_delay_sec()
  @frame_79_delay_sec.setter 
  def frame_79_delay_sec(self,value): 
    self.set_frame_79_delay_sec(value)
  @property
  def frame_79_texture(self): 
    return self.get_frame_79_texture()
  @frame_79_texture.setter 
  def frame_79_texture(self,value): 
    self.set_frame_79_texture(value)
  @property
  def frame_8_delay_sec(self): 
    return self.get_frame_8_delay_sec()
  @frame_8_delay_sec.setter 
  def frame_8_delay_sec(self,value): 
    self.set_frame_8_delay_sec(value)
  @property
  def frame_8_texture(self): 
    return self.get_frame_8_texture()
  @frame_8_texture.setter 
  def frame_8_texture(self,value): 
    self.set_frame_8_texture(value)
  @property
  def frame_80_delay_sec(self): 
    return self.get_frame_80_delay_sec()
  @frame_80_delay_sec.setter 
  def frame_80_delay_sec(self,value): 
    self.set_frame_80_delay_sec(value)
  @property
  def frame_80_texture(self): 
    return self.get_frame_80_texture()
  @frame_80_texture.setter 
  def frame_80_texture(self,value): 
    self.set_frame_80_texture(value)
  @property
  def frame_81_delay_sec(self): 
    return self.get_frame_81_delay_sec()
  @frame_81_delay_sec.setter 
  def frame_81_delay_sec(self,value): 
    self.set_frame_81_delay_sec(value)
  @property
  def frame_81_texture(self): 
    return self.get_frame_81_texture()
  @frame_81_texture.setter 
  def frame_81_texture(self,value): 
    self.set_frame_81_texture(value)
  @property
  def frame_82_delay_sec(self): 
    return self.get_frame_82_delay_sec()
  @frame_82_delay_sec.setter 
  def frame_82_delay_sec(self,value): 
    self.set_frame_82_delay_sec(value)
  @property
  def frame_82_texture(self): 
    return self.get_frame_82_texture()
  @frame_82_texture.setter 
  def frame_82_texture(self,value): 
    self.set_frame_82_texture(value)
  @property
  def frame_83_delay_sec(self): 
    return self.get_frame_83_delay_sec()
  @frame_83_delay_sec.setter 
  def frame_83_delay_sec(self,value): 
    self.set_frame_83_delay_sec(value)
  @property
  def frame_83_texture(self): 
    return self.get_frame_83_texture()
  @frame_83_texture.setter 
  def frame_83_texture(self,value): 
    self.set_frame_83_texture(value)
  @property
  def frame_84_delay_sec(self): 
    return self.get_frame_84_delay_sec()
  @frame_84_delay_sec.setter 
  def frame_84_delay_sec(self,value): 
    self.set_frame_84_delay_sec(value)
  @property
  def frame_84_texture(self): 
    return self.get_frame_84_texture()
  @frame_84_texture.setter 
  def frame_84_texture(self,value): 
    self.set_frame_84_texture(value)
  @property
  def frame_85_delay_sec(self): 
    return self.get_frame_85_delay_sec()
  @frame_85_delay_sec.setter 
  def frame_85_delay_sec(self,value): 
    self.set_frame_85_delay_sec(value)
  @property
  def frame_85_texture(self): 
    return self.get_frame_85_texture()
  @frame_85_texture.setter 
  def frame_85_texture(self,value): 
    self.set_frame_85_texture(value)
  @property
  def frame_86_delay_sec(self): 
    return self.get_frame_86_delay_sec()
  @frame_86_delay_sec.setter 
  def frame_86_delay_sec(self,value): 
    self.set_frame_86_delay_sec(value)
  @property
  def frame_86_texture(self): 
    return self.get_frame_86_texture()
  @frame_86_texture.setter 
  def frame_86_texture(self,value): 
    self.set_frame_86_texture(value)
  @property
  def frame_87_delay_sec(self): 
    return self.get_frame_87_delay_sec()
  @frame_87_delay_sec.setter 
  def frame_87_delay_sec(self,value): 
    self.set_frame_87_delay_sec(value)
  @property
  def frame_87_texture(self): 
    return self.get_frame_87_texture()
  @frame_87_texture.setter 
  def frame_87_texture(self,value): 
    self.set_frame_87_texture(value)
  @property
  def frame_88_delay_sec(self): 
    return self.get_frame_88_delay_sec()
  @frame_88_delay_sec.setter 
  def frame_88_delay_sec(self,value): 
    self.set_frame_88_delay_sec(value)
  @property
  def frame_88_texture(self): 
    return self.get_frame_88_texture()
  @frame_88_texture.setter 
  def frame_88_texture(self,value): 
    self.set_frame_88_texture(value)
  @property
  def frame_89_delay_sec(self): 
    return self.get_frame_89_delay_sec()
  @frame_89_delay_sec.setter 
  def frame_89_delay_sec(self,value): 
    self.set_frame_89_delay_sec(value)
  @property
  def frame_89_texture(self): 
    return self.get_frame_89_texture()
  @frame_89_texture.setter 
  def frame_89_texture(self,value): 
    self.set_frame_89_texture(value)
  @property
  def frame_9_delay_sec(self): 
    return self.get_frame_9_delay_sec()
  @frame_9_delay_sec.setter 
  def frame_9_delay_sec(self,value): 
    self.set_frame_9_delay_sec(value)
  @property
  def frame_9_texture(self): 
    return self.get_frame_9_texture()
  @frame_9_texture.setter 
  def frame_9_texture(self,value): 
    self.set_frame_9_texture(value)
  @property
  def frame_90_delay_sec(self): 
    return self.get_frame_90_delay_sec()
  @frame_90_delay_sec.setter 
  def frame_90_delay_sec(self,value): 
    self.set_frame_90_delay_sec(value)
  @property
  def frame_90_texture(self): 
    return self.get_frame_90_texture()
  @frame_90_texture.setter 
  def frame_90_texture(self,value): 
    self.set_frame_90_texture(value)
  @property
  def frame_91_delay_sec(self): 
    return self.get_frame_91_delay_sec()
  @frame_91_delay_sec.setter 
  def frame_91_delay_sec(self,value): 
    self.set_frame_91_delay_sec(value)
  @property
  def frame_91_texture(self): 
    return self.get_frame_91_texture()
  @frame_91_texture.setter 
  def frame_91_texture(self,value): 
    self.set_frame_91_texture(value)
  @property
  def frame_92_delay_sec(self): 
    return self.get_frame_92_delay_sec()
  @frame_92_delay_sec.setter 
  def frame_92_delay_sec(self,value): 
    self.set_frame_92_delay_sec(value)
  @property
  def frame_92_texture(self): 
    return self.get_frame_92_texture()
  @frame_92_texture.setter 
  def frame_92_texture(self,value): 
    self.set_frame_92_texture(value)
  @property
  def frame_93_delay_sec(self): 
    return self.get_frame_93_delay_sec()
  @frame_93_delay_sec.setter 
  def frame_93_delay_sec(self,value): 
    self.set_frame_93_delay_sec(value)
  @property
  def frame_93_texture(self): 
    return self.get_frame_93_texture()
  @frame_93_texture.setter 
  def frame_93_texture(self,value): 
    self.set_frame_93_texture(value)
  @property
  def frame_94_delay_sec(self): 
    return self.get_frame_94_delay_sec()
  @frame_94_delay_sec.setter 
  def frame_94_delay_sec(self,value): 
    self.set_frame_94_delay_sec(value)
  @property
  def frame_94_texture(self): 
    return self.get_frame_94_texture()
  @frame_94_texture.setter 
  def frame_94_texture(self,value): 
    self.set_frame_94_texture(value)
  @property
  def frame_95_delay_sec(self): 
    return self.get_frame_95_delay_sec()
  @frame_95_delay_sec.setter 
  def frame_95_delay_sec(self,value): 
    self.set_frame_95_delay_sec(value)
  @property
  def frame_95_texture(self): 
    return self.get_frame_95_texture()
  @frame_95_texture.setter 
  def frame_95_texture(self,value): 
    self.set_frame_95_texture(value)
  @property
  def frame_96_delay_sec(self): 
    return self.get_frame_96_delay_sec()
  @frame_96_delay_sec.setter 
  def frame_96_delay_sec(self,value): 
    self.set_frame_96_delay_sec(value)
  @property
  def frame_96_texture(self): 
    return self.get_frame_96_texture()
  @frame_96_texture.setter 
  def frame_96_texture(self,value): 
    self.set_frame_96_texture(value)
  @property
  def frame_97_delay_sec(self): 
    return self.get_frame_97_delay_sec()
  @frame_97_delay_sec.setter 
  def frame_97_delay_sec(self,value): 
    self.set_frame_97_delay_sec(value)
  @property
  def frame_97_texture(self): 
    return self.get_frame_97_texture()
  @frame_97_texture.setter 
  def frame_97_texture(self,value): 
    self.set_frame_97_texture(value)
  @property
  def frame_98_delay_sec(self): 
    return self.get_frame_98_delay_sec()
  @frame_98_delay_sec.setter 
  def frame_98_delay_sec(self,value): 
    self.set_frame_98_delay_sec(value)
  @property
  def frame_98_texture(self): 
    return self.get_frame_98_texture()
  @frame_98_texture.setter 
  def frame_98_texture(self,value): 
    self.set_frame_98_texture(value)
  @property
  def frame_99_delay_sec(self): 
    return self.get_frame_99_delay_sec()
  @frame_99_delay_sec.setter 
  def frame_99_delay_sec(self,value): 
    self.set_frame_99_delay_sec(value)
  @property
  def frame_99_texture(self): 
    return self.get_frame_99_texture()
  @frame_99_texture.setter 
  def frame_99_texture(self,value): 
    self.set_frame_99_texture(value)
  @property
  def frames(self): 
    return self.get_frames()
  @frames.setter 
  def frames(self,value): 
    self.set_frames(value)

##################################Generated Methods#########################################
  def  _update_proxy(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animatedtexture__update_proxy,self.godot_owner,[NULL,],NULL)
  def  get_fps(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animatedtexture_get_fps,self.godot_owner,[NULL,],&ret)
  def  get_frame_delay(self, frame):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animatedtexture_get_frame_delay,self.godot_owner,[NULL,],&ret)
  def  get_frame_texture(self, frame):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_animatedtexture_get_frame_texture,self.godot_owner,[NULL,],&ret)
  def  get_frames(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animatedtexture_get_frames,self.godot_owner,[NULL,],&ret)
  def  set_fps(self, fps):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animatedtexture_set_fps,self.godot_owner,[NULL,],NULL)
  def  set_frame_delay(self, framedelay):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animatedtexture_set_frame_delay,self.godot_owner,[NULL,],NULL)
  def  set_frame_texture(self, frametexture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animatedtexture_set_frame_texture,self.godot_owner,[NULL,],NULL)
  def  set_frames(self, frames):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animatedtexture_set_frames,self.godot_owner,[NULL,],NULL)
