
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualInstance
cdef class BakedLightmap(classes.VisualInstance.VisualInstance):
    pass
ctypedef enum BakedLightmap_BakeQuality :BAKE_QUALITY_LOW, BAKE_QUALITY_MEDIUM, BAKE_QUALITY_HIGH, 
ctypedef enum BakedLightmap_BakeError :BAKE_ERROR_OK, BAKE_ERROR_NO_SAVE_PATH, BAKE_ERROR_NO_MESHES, BAKE_ERROR_CANT_CREATE_IMAGE, BAKE_ERROR_USER_ABORTED, 
ctypedef enum BakedLightmap_BakeMode :BAKE_MODE_CONE_TRACE, BAKE_MODE_RAY_TRACE, 
