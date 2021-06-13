
from enum import *
from godot_api.binding_external cimport *
cimport classes.Reference
cdef class EditorFeatureProfile(classes.Reference.Reference):
    pass
ctypedef enum EditorFeatureProfile_Feature :FEATURE_3D, FEATURE_SCRIPT, FEATURE_ASSET_LIB, FEATURE_SCENE_TREE, FEATURE_IMPORT_DOCK, FEATURE_NODE_DOCK, FEATURE_FILESYSTEM_DOCK, FEATURE_MAX, 
