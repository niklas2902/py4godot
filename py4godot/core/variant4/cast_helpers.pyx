# distutils: language=c++
from cpython cimport Py_INCREF, Py_DECREF, PyObject
vals = []
def clear_vals():
    global vals
    vals.clear()
from py4godot.py_classes.Popup import Popup
from py4godot.py_classes.IntervalTweener import IntervalTweener
from py4godot.py_classes.CanvasItem import CanvasItem
from py4godot.py_classes.InputEventMouseMotion import InputEventMouseMotion
from py4godot.py_classes.PhysicsBody2DTypedArray import PhysicsBody2DTypedArray
from py4godot.py_classes.CameraAttributes import CameraAttributes
from py4godot.py_classes.GLTFBufferView import GLTFBufferView
from py4godot.py_classes.PhysicsPointQueryParameters2D import PhysicsPointQueryParameters2D
from py4godot.py_classes.Area3DTypedArray import Area3DTypedArray
from py4godot.py_classes.CallbackTweener import CallbackTweener
from py4godot.py_classes.RDFramebufferPass import RDFramebufferPass
from py4godot.py_classes.PhysicsDirectSpaceState2D import PhysicsDirectSpaceState2D
from py4godot.py_classes.Texture import Texture
from py4godot.py_classes.PhysicsBody3D import PhysicsBody3D
from py4godot.py_classes.Texture3D import Texture3D
from py4godot.py_classes.Shortcut import Shortcut
from py4godot.py_classes.AnimationPlayer import AnimationPlayer
from py4godot.py_classes.MaterialTypedArray import MaterialTypedArray
from py4godot.py_classes.InputEventMouse import InputEventMouse
from py4godot.py_classes.AnimationLibrary import AnimationLibrary
from py4godot.py_classes.World2D import World2D
from py4godot.py_classes.Object import Object
from py4godot.py_classes.World3D import World3D
from py4godot.py_classes.SceneTree import SceneTree
from py4godot.py_classes.Tree import Tree
from py4godot.py_classes.GLTFAccessorTypedArray import GLTFAccessorTypedArray
from py4godot.py_classes.Camera3D import Camera3D
from py4godot.py_classes.Node3DGizmoTypedArray import Node3DGizmoTypedArray
from py4godot.py_classes.SyntaxHighlighter import SyntaxHighlighter
from py4godot.py_classes.PopupMenu import PopupMenu
from py4godot.py_classes.RenderSceneBuffers import RenderSceneBuffers
from py4godot.py_classes.Window import Window
from py4godot.py_classes.Skin import Skin
from py4godot.py_classes.Script import Script
from py4godot.py_classes.MainLoop import MainLoop
from py4godot.py_classes.Node3D import Node3D
from py4godot.py_classes.intTypedArray import intTypedArray
from py4godot.py_classes.InputEventFromWindow import InputEventFromWindow
from py4godot.py_classes.ScriptLanguage import ScriptLanguage
from py4godot.py_classes.TriangleMesh import TriangleMesh
from py4godot.py_classes.GLTFCameraTypedArray import GLTFCameraTypedArray
from py4godot.py_classes.ENetPacketPeer import ENetPacketPeer
from py4godot.py_classes.GLTFTextureSamplerTypedArray import GLTFTextureSamplerTypedArray
from py4godot.py_classes.CompositorEffectTypedArray import CompositorEffectTypedArray
from py4godot.py_classes.PhysicsShapeQueryParameters2D import PhysicsShapeQueryParameters2D
from py4godot.py_classes.VBoxContainer import VBoxContainer
from py4godot.py_classes.BoxContainer import BoxContainer
from py4godot.py_classes.GLTFNode import GLTFNode
from py4godot.py_classes.PhysicsBody3DTypedArray import PhysicsBody3DTypedArray
from py4godot.py_classes.RegExMatch import RegExMatch
from py4godot.py_classes.Input import Input
from py4godot.py_classes.StringNameTypedArray import StringNameTypedArray
from py4godot.py_classes.WindowTypedArray import WindowTypedArray
from py4godot.py_classes.GLTFMeshTypedArray import GLTFMeshTypedArray
from py4godot.py_classes.Animation import Animation
from py4godot.py_classes.SkinReference import SkinReference
from py4godot.py_classes.GLTFSkinTypedArray import GLTFSkinTypedArray
from py4godot.py_classes.GLTFSkin import GLTFSkin
from py4godot.py_classes.Material import Material
from py4godot.py_classes.ConvexPolygonShape3D import ConvexPolygonShape3D
from py4godot.py_classes.Compositor import Compositor
from py4godot.py_classes.Node3DTypedArray import Node3DTypedArray
from py4godot.py_classes.ViewportTexture import ViewportTexture
from py4godot.py_classes.TweenTypedArray import TweenTypedArray
from py4godot.py_classes.InputEventWithModifiers import InputEventWithModifiers
from py4godot.py_classes.EditorSyntaxHighlighter import EditorSyntaxHighlighter
from py4godot.py_classes.GLTFLightTypedArray import GLTFLightTypedArray
from py4godot.py_classes.Theme import Theme
from py4godot.py_classes.Resource import Resource
from py4godot.py_classes.MultiMesh import MultiMesh
from py4godot.py_classes.InputEventMouseButton import InputEventMouseButton
from py4godot.py_classes.CollisionObject2D import CollisionObject2D
from py4godot.py_classes.RenderData import RenderData
from py4godot.py_classes.RDPipelineColorBlendStateAttachment import RDPipelineColorBlendStateAttachment
from py4godot.py_classes.VScrollBar import VScrollBar
from py4godot.py_classes.Control import Control
from py4godot.py_classes.Range import Range
from py4godot.py_classes.PackedByteArrayTypedArray import PackedByteArrayTypedArray
from py4godot.py_classes.Container import Container
from py4godot.py_classes.ArrayTypedArray import ArrayTypedArray
from py4godot.py_classes.Node2D import Node2D
from py4godot.py_classes.GLTFMesh import GLTFMesh
from py4godot.py_classes.PhysicsShapeQueryParameters3D import PhysicsShapeQueryParameters3D
from py4godot.py_classes.Shape2D import Shape2D
from py4godot.py_classes.GLTFTextureTypedArray import GLTFTextureTypedArray
from py4godot.py_classes.Vector3TypedArray import Vector3TypedArray
from py4godot.py_classes.CompositorEffect import CompositorEffect
from py4godot.py_classes.RDPipelineSpecializationConstant import RDPipelineSpecializationConstant
from py4godot.py_classes.GLTFCamera import GLTFCamera
from py4godot.py_classes.Skeleton3D import Skeleton3D
from py4godot.py_classes.SceneState import SceneState
from py4godot.py_classes.Tween import Tween
from py4godot.py_classes.DictionaryTypedArray import DictionaryTypedArray
from py4godot.py_classes.SubtweenTweener import SubtweenTweener
from py4godot.py_classes.Sky import Sky
from py4godot.py_classes.Node3DGizmo import Node3DGizmo
from py4godot.py_classes.PackedScene import PackedScene
from py4godot.py_classes.GLTFTextureSampler import GLTFTextureSampler
from py4godot.py_classes.ArrayMesh import ArrayMesh
from py4godot.py_classes.Vector2TypedArray import Vector2TypedArray
from py4godot.py_classes.Environment import Environment
from py4godot.py_classes.GLTFSkeletonTypedArray import GLTFSkeletonTypedArray
from py4godot.py_classes.AnimationMixer import AnimationMixer
from py4godot.py_classes.Shape3D import Shape3D
from py4godot.py_classes.Area2DTypedArray import Area2DTypedArray
from py4godot.py_classes.Vector2iTypedArray import Vector2iTypedArray
from py4godot.py_classes.Shader import Shader
from py4godot.py_classes.GLTFAnimation import GLTFAnimation
from py4godot.py_classes.Font import Font
from py4godot.py_classes.RDUniform import RDUniform
from py4godot.py_classes.PacketPeer import PacketPeer
from py4godot.py_classes.PhysicsPointQueryParameters3D import PhysicsPointQueryParameters3D
from py4godot.py_classes.ScriptEditorBase import ScriptEditorBase
from py4godot.py_classes.Image import Image
from py4godot.py_classes.TreeItemTypedArray import TreeItemTypedArray
from py4godot.py_classes.GLTFAnimationTypedArray import GLTFAnimationTypedArray
from py4godot.py_classes.StringTypedArray import StringTypedArray
from py4godot.py_classes.BoneAttachment3D import BoneAttachment3D
from py4godot.py_classes.ButtonGroup import ButtonGroup
from py4godot.py_classes.MultiplayerPeer import MultiplayerPeer
from py4godot.py_classes.BaseButtonTypedArray import BaseButtonTypedArray
from py4godot.py_classes.TreeItem import TreeItem
from py4godot.py_classes.RenderSceneData import RenderSceneData
from py4godot.py_classes.ImporterMesh import ImporterMesh
from py4godot.py_classes.CollisionObject3D import CollisionObject3D
from py4godot.py_classes.Viewport import Viewport
from py4godot.py_classes.Engine import Engine
from py4godot.py_classes.ConcavePolygonShape3D import ConcavePolygonShape3D
from py4godot.py_classes.AudioListener2D import AudioListener2D
from py4godot.py_classes.Mesh import Mesh
from py4godot.py_classes.RDVertexAttribute import RDVertexAttribute
from py4godot.py_classes.PropertyTweener import PropertyTweener
from py4godot.py_classes.Vector3iTypedArray import Vector3iTypedArray
from py4godot.py_classes.AudioListener3D import AudioListener3D
from py4godot.py_classes.ScrollBar import ScrollBar
from py4godot.py_classes.PhysicsBody2D import PhysicsBody2D
from py4godot.py_classes.Texture2D import Texture2D
from py4godot.py_classes.Node2DTypedArray import Node2DTypedArray
from py4godot.py_classes.RDAttachmentFormat import RDAttachmentFormat
from py4godot.py_classes.CameraFeed import CameraFeed
from py4godot.py_classes.RefCounted import RefCounted
from py4godot.py_classes.RIDTypedArray import RIDTypedArray
from py4godot.py_classes.Node import Node
from py4godot.py_classes.CanvasLayer import CanvasLayer
from py4godot.py_classes.PhysicsRayQueryParameters2D import PhysicsRayQueryParameters2D
from py4godot.py_classes.RenderSceneBuffersConfiguration import RenderSceneBuffersConfiguration
from py4godot.py_classes.KinematicCollision2D import KinematicCollision2D
from py4godot.py_classes.Light3D import Light3D
from py4godot.py_classes.GLTFTexture import GLTFTexture
from py4godot.py_classes.SceneTreeTimer import SceneTreeTimer
from py4godot.py_classes.InputEventTypedArray import InputEventTypedArray
from py4godot.py_classes.GLTFState import GLTFState
from py4godot.py_classes.CameraAttributesPhysical import CameraAttributesPhysical
from py4godot.py_classes.GLTFSkeleton import GLTFSkeleton
from py4godot.py_classes.BaseButton import BaseButton
from py4godot.py_classes.GLTFLight import GLTFLight
from py4godot.py_classes.KinematicCollision3D import KinematicCollision3D
from py4godot.py_classes.Area2D import Area2D
from py4godot.py_classes.Tweener import Tweener
from py4godot.py_classes.MultiplayerAPI import MultiplayerAPI
from py4godot.py_classes.ShaderMaterial import ShaderMaterial
from py4godot.py_classes.PhysicsDirectSpaceState3D import PhysicsDirectSpaceState3D
from py4godot.py_classes.InputEvent import InputEvent
from py4godot.py_classes.MethodTweener import MethodTweener
from py4godot.py_classes.TextEdit import TextEdit
from py4godot.py_classes.GLTFBufferViewTypedArray import GLTFBufferViewTypedArray
from py4godot.py_classes.GLTFNodeTypedArray import GLTFNodeTypedArray
from py4godot.py_classes.Camera2D import Camera2D
from py4godot.py_classes.PhysicsRayQueryParameters3D import PhysicsRayQueryParameters3D
from py4godot.py_classes.NodeTypedArray import NodeTypedArray
from py4godot.py_classes.StyleBox import StyleBox
from py4godot.py_classes.FontTypedArray import FontTypedArray
from py4godot.py_classes.VisualInstance3D import VisualInstance3D
from py4godot.py_classes.TextureLayered import TextureLayered
from py4godot.py_classes.PlaneTypedArray import PlaneTypedArray
from py4godot.py_classes.GLTFAccessor import GLTFAccessor
from py4godot.py_classes.Area3D import Area3D
from py4godot.py_classes.HScrollBar import HScrollBar
from py4godot.py_classes.Texture2DTypedArray import Texture2DTypedArray
from py4godot.py_classes.ImageTypedArray import ImageTypedArray
from py4godot.py_classes.Transform3DTypedArray import Transform3DTypedArray
cdef api PyObject* cast_to_popup(PyObject* other):
    cdef object o = Popup.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_intervaltweener(PyObject* other):
    cdef object o = IntervalTweener.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_canvasitem(PyObject* other):
    cdef object o = CanvasItem.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventmousemotion(PyObject* other):
    cdef object o = InputEventMouseMotion.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsbody2dtypedarray(PyObject* other):
    cdef object o = PhysicsBody2DTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cameraattributes(PyObject* other):
    cdef object o = CameraAttributes.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfbufferview(PyObject* other):
    cdef object o = GLTFBufferView.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicspointqueryparameters2d(PyObject* other):
    cdef object o = PhysicsPointQueryParameters2D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_area3dtypedarray(PyObject* other):
    cdef object o = Area3DTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_callbacktweener(PyObject* other):
    cdef object o = CallbackTweener.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdframebufferpass(PyObject* other):
    cdef object o = RDFramebufferPass.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsdirectspacestate2d(PyObject* other):
    cdef object o = PhysicsDirectSpaceState2D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture(PyObject* other):
    cdef object o = Texture.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsbody3d(PyObject* other):
    cdef object o = PhysicsBody3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture3d(PyObject* other):
    cdef object o = Texture3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shortcut(PyObject* other):
    cdef object o = Shortcut.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationplayer(PyObject* other):
    cdef object o = AnimationPlayer.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_materialtypedarray(PyObject* other):
    cdef object o = MaterialTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventmouse(PyObject* other):
    cdef object o = InputEventMouse.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationlibrary(PyObject* other):
    cdef object o = AnimationLibrary.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_world2d(PyObject* other):
    cdef object o = World2D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_object(PyObject* other):
    cdef object o = Object.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_world3d(PyObject* other):
    cdef object o = World3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scenetree(PyObject* other):
    cdef object o = SceneTree.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tree(PyObject* other):
    cdef object o = Tree.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfaccessortypedarray(PyObject* other):
    cdef object o = GLTFAccessorTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_camera3d(PyObject* other):
    cdef object o = Camera3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node3dgizmotypedarray(PyObject* other):
    cdef object o = Node3DGizmoTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_syntaxhighlighter(PyObject* other):
    cdef object o = SyntaxHighlighter.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_popupmenu(PyObject* other):
    cdef object o = PopupMenu.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderscenebuffers(PyObject* other):
    cdef object o = RenderSceneBuffers.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_window(PyObject* other):
    cdef object o = Window.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skin(PyObject* other):
    cdef object o = Skin.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_script(PyObject* other):
    cdef object o = Script.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_mainloop(PyObject* other):
    cdef object o = MainLoop.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node3d(PyObject* other):
    cdef object o = Node3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inttypedarray(PyObject* other):
    cdef object o = intTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventfromwindow(PyObject* other):
    cdef object o = InputEventFromWindow.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scriptlanguage(PyObject* other):
    cdef object o = ScriptLanguage.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_trianglemesh(PyObject* other):
    cdef object o = TriangleMesh.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfcameratypedarray(PyObject* other):
    cdef object o = GLTFCameraTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_enetpacketpeer(PyObject* other):
    cdef object o = ENetPacketPeer.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltftexturesamplertypedarray(PyObject* other):
    cdef object o = GLTFTextureSamplerTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_compositoreffecttypedarray(PyObject* other):
    cdef object o = CompositorEffectTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsshapequeryparameters2d(PyObject* other):
    cdef object o = PhysicsShapeQueryParameters2D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vboxcontainer(PyObject* other):
    cdef object o = VBoxContainer.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_boxcontainer(PyObject* other):
    cdef object o = BoxContainer.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfnode(PyObject* other):
    cdef object o = GLTFNode.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsbody3dtypedarray(PyObject* other):
    cdef object o = PhysicsBody3DTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_regexmatch(PyObject* other):
    cdef object o = RegExMatch.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_input(PyObject* other):
    cdef object o = Input.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_stringnametypedarray(PyObject* other):
    cdef object o = StringNameTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_windowtypedarray(PyObject* other):
    cdef object o = WindowTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfmeshtypedarray(PyObject* other):
    cdef object o = GLTFMeshTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animation(PyObject* other):
    cdef object o = Animation.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skinreference(PyObject* other):
    cdef object o = SkinReference.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfskintypedarray(PyObject* other):
    cdef object o = GLTFSkinTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfskin(PyObject* other):
    cdef object o = GLTFSkin.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_material(PyObject* other):
    cdef object o = Material.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_convexpolygonshape3d(PyObject* other):
    cdef object o = ConvexPolygonShape3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_compositor(PyObject* other):
    cdef object o = Compositor.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node3dtypedarray(PyObject* other):
    cdef object o = Node3DTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_viewporttexture(PyObject* other):
    cdef object o = ViewportTexture.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tweentypedarray(PyObject* other):
    cdef object o = TweenTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventwithmodifiers(PyObject* other):
    cdef object o = InputEventWithModifiers.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorsyntaxhighlighter(PyObject* other):
    cdef object o = EditorSyntaxHighlighter.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltflighttypedarray(PyObject* other):
    cdef object o = GLTFLightTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_theme(PyObject* other):
    cdef object o = Theme.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resource(PyObject* other):
    cdef object o = Resource.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multimesh(PyObject* other):
    cdef object o = MultiMesh.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventmousebutton(PyObject* other):
    cdef object o = InputEventMouseButton.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_collisionobject2d(PyObject* other):
    cdef object o = CollisionObject2D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderdata(PyObject* other):
    cdef object o = RenderData.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdpipelinecolorblendstateattachment(PyObject* other):
    cdef object o = RDPipelineColorBlendStateAttachment.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vscrollbar(PyObject* other):
    cdef object o = VScrollBar.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_control(PyObject* other):
    cdef object o = Control.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_range(PyObject* other):
    cdef object o = Range.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_packedbytearraytypedarray(PyObject* other):
    cdef object o = PackedByteArrayTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_container(PyObject* other):
    cdef object o = Container.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_arraytypedarray(PyObject* other):
    cdef object o = ArrayTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node2d(PyObject* other):
    cdef object o = Node2D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfmesh(PyObject* other):
    cdef object o = GLTFMesh.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsshapequeryparameters3d(PyObject* other):
    cdef object o = PhysicsShapeQueryParameters3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shape2d(PyObject* other):
    cdef object o = Shape2D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltftexturetypedarray(PyObject* other):
    cdef object o = GLTFTextureTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vector3typedarray(PyObject* other):
    cdef object o = Vector3TypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_compositoreffect(PyObject* other):
    cdef object o = CompositorEffect.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdpipelinespecializationconstant(PyObject* other):
    cdef object o = RDPipelineSpecializationConstant.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfcamera(PyObject* other):
    cdef object o = GLTFCamera.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeleton3d(PyObject* other):
    cdef object o = Skeleton3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scenestate(PyObject* other):
    cdef object o = SceneState.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tween(PyObject* other):
    cdef object o = Tween.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_dictionarytypedarray(PyObject* other):
    cdef object o = DictionaryTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_subtweentweener(PyObject* other):
    cdef object o = SubtweenTweener.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_sky(PyObject* other):
    cdef object o = Sky.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node3dgizmo(PyObject* other):
    cdef object o = Node3DGizmo.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_packedscene(PyObject* other):
    cdef object o = PackedScene.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltftexturesampler(PyObject* other):
    cdef object o = GLTFTextureSampler.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_arraymesh(PyObject* other):
    cdef object o = ArrayMesh.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vector2typedarray(PyObject* other):
    cdef object o = Vector2TypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_environment(PyObject* other):
    cdef object o = Environment.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfskeletontypedarray(PyObject* other):
    cdef object o = GLTFSkeletonTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationmixer(PyObject* other):
    cdef object o = AnimationMixer.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shape3d(PyObject* other):
    cdef object o = Shape3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_area2dtypedarray(PyObject* other):
    cdef object o = Area2DTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vector2itypedarray(PyObject* other):
    cdef object o = Vector2iTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shader(PyObject* other):
    cdef object o = Shader.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfanimation(PyObject* other):
    cdef object o = GLTFAnimation.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_font(PyObject* other):
    cdef object o = Font.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rduniform(PyObject* other):
    cdef object o = RDUniform.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_packetpeer(PyObject* other):
    cdef object o = PacketPeer.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicspointqueryparameters3d(PyObject* other):
    cdef object o = PhysicsPointQueryParameters3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scripteditorbase(PyObject* other):
    cdef object o = ScriptEditorBase.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_image(PyObject* other):
    cdef object o = Image.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_treeitemtypedarray(PyObject* other):
    cdef object o = TreeItemTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfanimationtypedarray(PyObject* other):
    cdef object o = GLTFAnimationTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_stringtypedarray(PyObject* other):
    cdef object o = StringTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_boneattachment3d(PyObject* other):
    cdef object o = BoneAttachment3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_buttongroup(PyObject* other):
    cdef object o = ButtonGroup.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multiplayerpeer(PyObject* other):
    cdef object o = MultiplayerPeer.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_basebuttontypedarray(PyObject* other):
    cdef object o = BaseButtonTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_treeitem(PyObject* other):
    cdef object o = TreeItem.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderscenedata(PyObject* other):
    cdef object o = RenderSceneData.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_importermesh(PyObject* other):
    cdef object o = ImporterMesh.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_collisionobject3d(PyObject* other):
    cdef object o = CollisionObject3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_viewport(PyObject* other):
    cdef object o = Viewport.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_engine(PyObject* other):
    cdef object o = Engine.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_concavepolygonshape3d(PyObject* other):
    cdef object o = ConcavePolygonShape3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiolistener2d(PyObject* other):
    cdef object o = AudioListener2D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_mesh(PyObject* other):
    cdef object o = Mesh.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdvertexattribute(PyObject* other):
    cdef object o = RDVertexAttribute.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_propertytweener(PyObject* other):
    cdef object o = PropertyTweener.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vector3itypedarray(PyObject* other):
    cdef object o = Vector3iTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiolistener3d(PyObject* other):
    cdef object o = AudioListener3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scrollbar(PyObject* other):
    cdef object o = ScrollBar.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsbody2d(PyObject* other):
    cdef object o = PhysicsBody2D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture2d(PyObject* other):
    cdef object o = Texture2D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node2dtypedarray(PyObject* other):
    cdef object o = Node2DTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdattachmentformat(PyObject* other):
    cdef object o = RDAttachmentFormat.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_camerafeed(PyObject* other):
    cdef object o = CameraFeed.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_refcounted(PyObject* other):
    cdef object o = RefCounted.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_ridtypedarray(PyObject* other):
    cdef object o = RIDTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node(PyObject* other):
    cdef object o = Node.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_canvaslayer(PyObject* other):
    cdef object o = CanvasLayer.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsrayqueryparameters2d(PyObject* other):
    cdef object o = PhysicsRayQueryParameters2D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderscenebuffersconfiguration(PyObject* other):
    cdef object o = RenderSceneBuffersConfiguration.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_kinematiccollision2d(PyObject* other):
    cdef object o = KinematicCollision2D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_light3d(PyObject* other):
    cdef object o = Light3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltftexture(PyObject* other):
    cdef object o = GLTFTexture.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scenetreetimer(PyObject* other):
    cdef object o = SceneTreeTimer.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventtypedarray(PyObject* other):
    cdef object o = InputEventTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfstate(PyObject* other):
    cdef object o = GLTFState.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cameraattributesphysical(PyObject* other):
    cdef object o = CameraAttributesPhysical.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfskeleton(PyObject* other):
    cdef object o = GLTFSkeleton.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_basebutton(PyObject* other):
    cdef object o = BaseButton.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltflight(PyObject* other):
    cdef object o = GLTFLight.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_kinematiccollision3d(PyObject* other):
    cdef object o = KinematicCollision3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_area2d(PyObject* other):
    cdef object o = Area2D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tweener(PyObject* other):
    cdef object o = Tweener.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multiplayerapi(PyObject* other):
    cdef object o = MultiplayerAPI.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shadermaterial(PyObject* other):
    cdef object o = ShaderMaterial.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsdirectspacestate3d(PyObject* other):
    cdef object o = PhysicsDirectSpaceState3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputevent(PyObject* other):
    cdef object o = InputEvent.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_methodtweener(PyObject* other):
    cdef object o = MethodTweener.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_textedit(PyObject* other):
    cdef object o = TextEdit.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfbufferviewtypedarray(PyObject* other):
    cdef object o = GLTFBufferViewTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfnodetypedarray(PyObject* other):
    cdef object o = GLTFNodeTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_camera2d(PyObject* other):
    cdef object o = Camera2D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsrayqueryparameters3d(PyObject* other):
    cdef object o = PhysicsRayQueryParameters3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_nodetypedarray(PyObject* other):
    cdef object o = NodeTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_stylebox(PyObject* other):
    cdef object o = StyleBox.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_fonttypedarray(PyObject* other):
    cdef object o = FontTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualinstance3d(PyObject* other):
    cdef object o = VisualInstance3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texturelayered(PyObject* other):
    cdef object o = TextureLayered.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_planetypedarray(PyObject* other):
    cdef object o = PlaneTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfaccessor(PyObject* other):
    cdef object o = GLTFAccessor.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_area3d(PyObject* other):
    cdef object o = Area3D.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_hscrollbar(PyObject* other):
    cdef object o = HScrollBar.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture2dtypedarray(PyObject* other):
    cdef object o = Texture2DTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_imagetypedarray(PyObject* other):
    cdef object o = ImageTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_transform3dtypedarray(PyObject* other):
    cdef object o = Transform3DTypedArray.cast_without_reference(<object>other)
    vals.append(o)
    return <PyObject*>o
