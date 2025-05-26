# distutils: language=c++
from cpython cimport Py_INCREF, Py_DECREF, PyObject
vals = []
def clear_vals():
    global vals
    vals.clear()
from py4godot.classes.ImageTypedArray cimport *
from py4godot.classes.KinematicCollision3D cimport *
from py4godot.classes.PopupMenu cimport *
from py4godot.classes.ShaderMaterial cimport *
from py4godot.classes.SceneState cimport *
from py4godot.classes.BoxContainer cimport *
from py4godot.classes.InputEventMouseMotion cimport *
from py4godot.classes.GLTFSkeleton cimport *
from py4godot.classes.Light3D cimport *
from py4godot.classes.RDPipelineSpecializationConstant cimport *
from py4godot.classes.Mesh cimport *
from py4godot.classes.CanvasLayer cimport *
from py4godot.classes.BaseButton cimport *
from py4godot.classes.DictionaryTypedArray cimport *
from py4godot.classes.PhysicsBody3D cimport *
from py4godot.classes.CameraAttributesPhysical cimport *
from py4godot.classes.GLTFBufferView cimport *
from py4godot.classes.CanvasItem cimport *
from py4godot.classes.ButtonGroup cimport *
from py4godot.classes.ImporterMesh cimport *
from py4godot.classes.MaterialTypedArray cimport *
from py4godot.classes.Skin cimport *
from py4godot.classes.PhysicsPointQueryParameters3D cimport *
from py4godot.classes.RenderSceneBuffers cimport *
from py4godot.classes.CollisionObject2D cimport *
from py4godot.classes.Range cimport *
from py4godot.classes.Node2D cimport *
from py4godot.classes.PropertyTweener cimport *
from py4godot.classes.ScrollBar cimport *
from py4godot.classes.GLTFTextureSamplerTypedArray cimport *
from py4godot.classes.Node cimport *
from py4godot.classes.World2D cimport *
from py4godot.classes.ArrayMesh cimport *
from py4godot.classes.Object cimport *
from py4godot.classes.PhysicsRayQueryParameters2D cimport *
from py4godot.classes.CompositorEffectTypedArray cimport *
from py4godot.classes.Texture2DTypedArray cimport *
from py4godot.classes.Vector3iTypedArray cimport *
from py4godot.classes.Area2D cimport *
from py4godot.classes.TextEdit cimport *
from py4godot.classes.ArrayTypedArray cimport *
from py4godot.classes.RDUniform cimport *
from py4godot.classes.PhysicsPointQueryParameters2D cimport *
from py4godot.classes.PhysicsDirectSpaceState3D cimport *
from py4godot.classes.GLTFLight cimport *
from py4godot.classes.CompositorEffect cimport *
from py4godot.classes.Node3DGizmo cimport *
from py4godot.classes.PacketPeer cimport *
from py4godot.classes.PhysicsRayQueryParameters3D cimport *
from py4godot.classes.VisualInstance3D cimport *
from py4godot.classes.MainLoop cimport *
from py4godot.classes.RDAttachmentFormat cimport *
from py4godot.classes.Shader cimport *
from py4godot.classes.GLTFCamera cimport *
from py4godot.classes.FontTypedArray cimport *
from py4godot.classes.Tween cimport *
from py4godot.classes.VScrollBar cimport *
from py4godot.classes.ConcavePolygonShape3D cimport *
from py4godot.classes.CollisionObject3D cimport *
from py4godot.classes.Material cimport *
from py4godot.classes.Camera3D cimport *
from py4godot.classes.Font cimport *
from py4godot.classes.RefCounted cimport *
from py4godot.classes.InputEventTypedArray cimport *
from py4godot.classes.MultiMesh cimport *
from py4godot.classes.GLTFAccessor cimport *
from py4godot.classes.AudioListener3D cimport *
from py4godot.classes.PhysicsDirectSpaceState2D cimport *
from py4godot.classes.GLTFMesh cimport *
from py4godot.classes.PhysicsShapeQueryParameters3D cimport *
from py4godot.classes.ConvexPolygonShape3D cimport *
from py4godot.classes.GLTFCameraTypedArray cimport *
from py4godot.classes.CameraAttributes cimport *
from py4godot.classes.RIDTypedArray cimport *
from py4godot.classes.AudioListener2D cimport *
from py4godot.classes.TextureLayered cimport *
from py4godot.classes.InputEventMouseButton cimport *
from py4godot.classes.InputEvent cimport *
from py4godot.classes.StringTypedArray cimport *
from py4godot.classes.StringNameTypedArray cimport *
from py4godot.classes.GLTFMeshTypedArray cimport *
from py4godot.classes.World3D cimport *
from py4godot.classes.Engine cimport *
from py4godot.classes.Tree cimport *
from py4godot.classes.RenderData cimport *
from py4godot.classes.SyntaxHighlighter cimport *
from py4godot.classes.Resource cimport *
from py4godot.classes.RegExMatch cimport *
from py4godot.classes.Compositor cimport *
from py4godot.classes.Texture cimport *
from py4godot.classes.GLTFAnimation cimport *
from py4godot.classes.Animation cimport *
from py4godot.classes.Tweener cimport *
from py4godot.classes.RDFramebufferPass cimport *
from py4godot.classes.GLTFTexture cimport *
from py4godot.classes.ScriptEditorBase cimport *
from py4godot.classes.Camera2D cimport *
from py4godot.classes.HScrollBar cimport *
from py4godot.classes.ScriptLanguage cimport *
from py4godot.classes.AnimationMixer cimport *
from py4godot.classes.Control cimport *
from py4godot.classes.Node2DTypedArray cimport *
from py4godot.classes.Script cimport *
from py4godot.classes.TreeItem cimport *
from py4godot.classes.Theme cimport *
from py4godot.classes.Shortcut cimport *
from py4godot.classes.Input cimport *
from py4godot.classes.GLTFState cimport *
from py4godot.classes.GLTFNode cimport *
from py4godot.classes.CameraFeed cimport *
from py4godot.classes.RDVertexAttribute cimport *
from py4godot.classes.RenderSceneBuffersConfiguration cimport *
from py4godot.classes.GLTFTextureSampler cimport *
from py4godot.classes.SkinReference cimport *
from py4godot.classes.Window cimport *
from py4godot.classes.PackedByteArrayTypedArray cimport *
from py4godot.classes.TweenTypedArray cimport *
from py4godot.classes.RDPipelineColorBlendStateAttachment cimport *
from py4godot.classes.SubtweenTweener cimport *
from py4godot.classes.PlaneTypedArray cimport *
from py4godot.classes.StyleBox cimport *
from py4godot.classes.GLTFBufferViewTypedArray cimport *
from py4godot.classes.MethodTweener cimport *
from py4godot.classes.intTypedArray cimport *
from py4godot.classes.WindowTypedArray cimport *
from py4godot.classes.GLTFSkinTypedArray cimport *
from py4godot.classes.Container cimport *
from py4godot.classes.Popup cimport *
from py4godot.classes.Texture2D cimport *
from py4godot.classes.NodeTypedArray cimport *
from py4godot.classes.GLTFTextureTypedArray cimport *
from py4godot.classes.Transform3DTypedArray cimport *
from py4godot.classes.Vector2iTypedArray cimport *
from py4godot.classes.ViewportTexture cimport *
from py4godot.classes.BaseButtonTypedArray cimport *
from py4godot.classes.IntervalTweener cimport *
from py4godot.classes.CallbackTweener cimport *
from py4godot.classes.Node3D cimport *
from py4godot.classes.Vector2TypedArray cimport *
from py4godot.classes.Vector3TypedArray cimport *
from py4godot.classes.PhysicsBody2DTypedArray cimport *
from py4godot.classes.Area2DTypedArray cimport *
from py4godot.classes.Shape2D cimport *
from py4godot.classes.GLTFAnimationTypedArray cimport *
from py4godot.classes.AnimationPlayer cimport *
from py4godot.classes.Texture3D cimport *
from py4godot.classes.GLTFLightTypedArray cimport *
from py4godot.classes.PhysicsBody3DTypedArray cimport *
from py4godot.classes.SceneTree cimport *
from py4godot.classes.Node3DTypedArray cimport *
from py4godot.classes.GLTFSkeletonTypedArray cimport *
from py4godot.classes.TreeItemTypedArray cimport *
from py4godot.classes.Sky cimport *
from py4godot.classes.VBoxContainer cimport *
from py4godot.classes.PhysicsShapeQueryParameters2D cimport *
from py4godot.classes.GLTFNodeTypedArray cimport *
from py4godot.classes.Area3DTypedArray cimport *
from py4godot.classes.ENetPacketPeer cimport *
from py4godot.classes.PhysicsBody2D cimport *
from py4godot.classes.InputEventMouse cimport *
from py4godot.classes.AnimationLibrary cimport *
from py4godot.classes.MultiplayerAPI cimport *
from py4godot.classes.PackedScene cimport *
from py4godot.classes.InputEventFromWindow cimport *
from py4godot.classes.MultiplayerPeer cimport *
from py4godot.classes.KinematicCollision2D cimport *
from py4godot.classes.GLTFAccessorTypedArray cimport *
from py4godot.classes.Viewport cimport *
from py4godot.classes.TriangleMesh cimport *
from py4godot.classes.BoneAttachment3D cimport *
from py4godot.classes.EditorSyntaxHighlighter cimport *
from py4godot.classes.SceneTreeTimer cimport *
from py4godot.classes.Area3D cimport *
from py4godot.classes.Node3DGizmoTypedArray cimport *
from py4godot.classes.GLTFSkin cimport *
from py4godot.classes.Environment cimport *
from py4godot.classes.RenderSceneData cimport *
from py4godot.classes.Skeleton3D cimport *
from py4godot.classes.Shape3D cimport *
from py4godot.classes.Image cimport *
from py4godot.classes.InputEventWithModifiers cimport *
cdef api PyObject* cast_to_imagetypedarray(PyObject* other):
    cdef ImageTypedArray o = ImageTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_kinematiccollision3d(PyObject* other):
    cdef KinematicCollision3D o = KinematicCollision3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_popupmenu(PyObject* other):
    cdef PopupMenu o = PopupMenu.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shadermaterial(PyObject* other):
    cdef ShaderMaterial o = ShaderMaterial.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scenestate(PyObject* other):
    cdef SceneState o = SceneState.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_boxcontainer(PyObject* other):
    cdef BoxContainer o = BoxContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventmousemotion(PyObject* other):
    cdef InputEventMouseMotion o = InputEventMouseMotion.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfskeleton(PyObject* other):
    cdef GLTFSkeleton o = GLTFSkeleton.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_light3d(PyObject* other):
    cdef Light3D o = Light3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdpipelinespecializationconstant(PyObject* other):
    cdef RDPipelineSpecializationConstant o = RDPipelineSpecializationConstant.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_mesh(PyObject* other):
    cdef Mesh o = Mesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_canvaslayer(PyObject* other):
    cdef CanvasLayer o = CanvasLayer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_basebutton(PyObject* other):
    cdef BaseButton o = BaseButton.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_dictionarytypedarray(PyObject* other):
    cdef DictionaryTypedArray o = DictionaryTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsbody3d(PyObject* other):
    cdef PhysicsBody3D o = PhysicsBody3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cameraattributesphysical(PyObject* other):
    cdef CameraAttributesPhysical o = CameraAttributesPhysical.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfbufferview(PyObject* other):
    cdef GLTFBufferView o = GLTFBufferView.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_canvasitem(PyObject* other):
    cdef CanvasItem o = CanvasItem.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_buttongroup(PyObject* other):
    cdef ButtonGroup o = ButtonGroup.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_importermesh(PyObject* other):
    cdef ImporterMesh o = ImporterMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_materialtypedarray(PyObject* other):
    cdef MaterialTypedArray o = MaterialTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skin(PyObject* other):
    cdef Skin o = Skin.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicspointqueryparameters3d(PyObject* other):
    cdef PhysicsPointQueryParameters3D o = PhysicsPointQueryParameters3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderscenebuffers(PyObject* other):
    cdef RenderSceneBuffers o = RenderSceneBuffers.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_collisionobject2d(PyObject* other):
    cdef CollisionObject2D o = CollisionObject2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_range(PyObject* other):
    cdef Range o = Range.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node2d(PyObject* other):
    cdef Node2D o = Node2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_propertytweener(PyObject* other):
    cdef PropertyTweener o = PropertyTweener.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scrollbar(PyObject* other):
    cdef ScrollBar o = ScrollBar.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltftexturesamplertypedarray(PyObject* other):
    cdef GLTFTextureSamplerTypedArray o = GLTFTextureSamplerTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node(PyObject* other):
    cdef Node o = Node.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_world2d(PyObject* other):
    cdef World2D o = World2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_arraymesh(PyObject* other):
    cdef ArrayMesh o = ArrayMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_object(PyObject* other):
    cdef Object o = Object.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsrayqueryparameters2d(PyObject* other):
    cdef PhysicsRayQueryParameters2D o = PhysicsRayQueryParameters2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_compositoreffecttypedarray(PyObject* other):
    cdef CompositorEffectTypedArray o = CompositorEffectTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture2dtypedarray(PyObject* other):
    cdef Texture2DTypedArray o = Texture2DTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vector3itypedarray(PyObject* other):
    cdef Vector3iTypedArray o = Vector3iTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_area2d(PyObject* other):
    cdef Area2D o = Area2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_textedit(PyObject* other):
    cdef TextEdit o = TextEdit.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_arraytypedarray(PyObject* other):
    cdef ArrayTypedArray o = ArrayTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rduniform(PyObject* other):
    cdef RDUniform o = RDUniform.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicspointqueryparameters2d(PyObject* other):
    cdef PhysicsPointQueryParameters2D o = PhysicsPointQueryParameters2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsdirectspacestate3d(PyObject* other):
    cdef PhysicsDirectSpaceState3D o = PhysicsDirectSpaceState3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltflight(PyObject* other):
    cdef GLTFLight o = GLTFLight.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_compositoreffect(PyObject* other):
    cdef CompositorEffect o = CompositorEffect.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node3dgizmo(PyObject* other):
    cdef Node3DGizmo o = Node3DGizmo.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_packetpeer(PyObject* other):
    cdef PacketPeer o = PacketPeer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsrayqueryparameters3d(PyObject* other):
    cdef PhysicsRayQueryParameters3D o = PhysicsRayQueryParameters3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualinstance3d(PyObject* other):
    cdef VisualInstance3D o = VisualInstance3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_mainloop(PyObject* other):
    cdef MainLoop o = MainLoop.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdattachmentformat(PyObject* other):
    cdef RDAttachmentFormat o = RDAttachmentFormat.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shader(PyObject* other):
    cdef Shader o = Shader.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfcamera(PyObject* other):
    cdef GLTFCamera o = GLTFCamera.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_fonttypedarray(PyObject* other):
    cdef FontTypedArray o = FontTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tween(PyObject* other):
    cdef Tween o = Tween.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vscrollbar(PyObject* other):
    cdef VScrollBar o = VScrollBar.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_concavepolygonshape3d(PyObject* other):
    cdef ConcavePolygonShape3D o = ConcavePolygonShape3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_collisionobject3d(PyObject* other):
    cdef CollisionObject3D o = CollisionObject3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_material(PyObject* other):
    cdef Material o = Material.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_camera3d(PyObject* other):
    cdef Camera3D o = Camera3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_font(PyObject* other):
    cdef Font o = Font.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_refcounted(PyObject* other):
    cdef RefCounted o = RefCounted.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventtypedarray(PyObject* other):
    cdef InputEventTypedArray o = InputEventTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multimesh(PyObject* other):
    cdef MultiMesh o = MultiMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfaccessor(PyObject* other):
    cdef GLTFAccessor o = GLTFAccessor.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiolistener3d(PyObject* other):
    cdef AudioListener3D o = AudioListener3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsdirectspacestate2d(PyObject* other):
    cdef PhysicsDirectSpaceState2D o = PhysicsDirectSpaceState2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfmesh(PyObject* other):
    cdef GLTFMesh o = GLTFMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsshapequeryparameters3d(PyObject* other):
    cdef PhysicsShapeQueryParameters3D o = PhysicsShapeQueryParameters3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_convexpolygonshape3d(PyObject* other):
    cdef ConvexPolygonShape3D o = ConvexPolygonShape3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfcameratypedarray(PyObject* other):
    cdef GLTFCameraTypedArray o = GLTFCameraTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cameraattributes(PyObject* other):
    cdef CameraAttributes o = CameraAttributes.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_ridtypedarray(PyObject* other):
    cdef RIDTypedArray o = RIDTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiolistener2d(PyObject* other):
    cdef AudioListener2D o = AudioListener2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texturelayered(PyObject* other):
    cdef TextureLayered o = TextureLayered.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventmousebutton(PyObject* other):
    cdef InputEventMouseButton o = InputEventMouseButton.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputevent(PyObject* other):
    cdef InputEvent o = InputEvent.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_stringtypedarray(PyObject* other):
    cdef StringTypedArray o = StringTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_stringnametypedarray(PyObject* other):
    cdef StringNameTypedArray o = StringNameTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfmeshtypedarray(PyObject* other):
    cdef GLTFMeshTypedArray o = GLTFMeshTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_world3d(PyObject* other):
    cdef World3D o = World3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_engine(PyObject* other):
    cdef Engine o = Engine.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tree(PyObject* other):
    cdef Tree o = Tree.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderdata(PyObject* other):
    cdef RenderData o = RenderData.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_syntaxhighlighter(PyObject* other):
    cdef SyntaxHighlighter o = SyntaxHighlighter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resource(PyObject* other):
    cdef Resource o = Resource.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_regexmatch(PyObject* other):
    cdef RegExMatch o = RegExMatch.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_compositor(PyObject* other):
    cdef Compositor o = Compositor.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture(PyObject* other):
    cdef Texture o = Texture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfanimation(PyObject* other):
    cdef GLTFAnimation o = GLTFAnimation.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animation(PyObject* other):
    cdef Animation o = Animation.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tweener(PyObject* other):
    cdef Tweener o = Tweener.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdframebufferpass(PyObject* other):
    cdef RDFramebufferPass o = RDFramebufferPass.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltftexture(PyObject* other):
    cdef GLTFTexture o = GLTFTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scripteditorbase(PyObject* other):
    cdef ScriptEditorBase o = ScriptEditorBase.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_camera2d(PyObject* other):
    cdef Camera2D o = Camera2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_hscrollbar(PyObject* other):
    cdef HScrollBar o = HScrollBar.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scriptlanguage(PyObject* other):
    cdef ScriptLanguage o = ScriptLanguage.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationmixer(PyObject* other):
    cdef AnimationMixer o = AnimationMixer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_control(PyObject* other):
    cdef Control o = Control.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node2dtypedarray(PyObject* other):
    cdef Node2DTypedArray o = Node2DTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_script(PyObject* other):
    cdef Script o = Script.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_treeitem(PyObject* other):
    cdef TreeItem o = TreeItem.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_theme(PyObject* other):
    cdef Theme o = Theme.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shortcut(PyObject* other):
    cdef Shortcut o = Shortcut.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_input(PyObject* other):
    cdef Input o = Input.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfstate(PyObject* other):
    cdef GLTFState o = GLTFState.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfnode(PyObject* other):
    cdef GLTFNode o = GLTFNode.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_camerafeed(PyObject* other):
    cdef CameraFeed o = CameraFeed.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdvertexattribute(PyObject* other):
    cdef RDVertexAttribute o = RDVertexAttribute.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderscenebuffersconfiguration(PyObject* other):
    cdef RenderSceneBuffersConfiguration o = RenderSceneBuffersConfiguration.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltftexturesampler(PyObject* other):
    cdef GLTFTextureSampler o = GLTFTextureSampler.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skinreference(PyObject* other):
    cdef SkinReference o = SkinReference.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_window(PyObject* other):
    cdef Window o = Window.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_packedbytearraytypedarray(PyObject* other):
    cdef PackedByteArrayTypedArray o = PackedByteArrayTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tweentypedarray(PyObject* other):
    cdef TweenTypedArray o = TweenTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdpipelinecolorblendstateattachment(PyObject* other):
    cdef RDPipelineColorBlendStateAttachment o = RDPipelineColorBlendStateAttachment.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_subtweentweener(PyObject* other):
    cdef SubtweenTweener o = SubtweenTweener.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_planetypedarray(PyObject* other):
    cdef PlaneTypedArray o = PlaneTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_stylebox(PyObject* other):
    cdef StyleBox o = StyleBox.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfbufferviewtypedarray(PyObject* other):
    cdef GLTFBufferViewTypedArray o = GLTFBufferViewTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_methodtweener(PyObject* other):
    cdef MethodTweener o = MethodTweener.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inttypedarray(PyObject* other):
    cdef intTypedArray o = intTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_windowtypedarray(PyObject* other):
    cdef WindowTypedArray o = WindowTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfskintypedarray(PyObject* other):
    cdef GLTFSkinTypedArray o = GLTFSkinTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_container(PyObject* other):
    cdef Container o = Container.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_popup(PyObject* other):
    cdef Popup o = Popup.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture2d(PyObject* other):
    cdef Texture2D o = Texture2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_nodetypedarray(PyObject* other):
    cdef NodeTypedArray o = NodeTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltftexturetypedarray(PyObject* other):
    cdef GLTFTextureTypedArray o = GLTFTextureTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_transform3dtypedarray(PyObject* other):
    cdef Transform3DTypedArray o = Transform3DTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vector2itypedarray(PyObject* other):
    cdef Vector2iTypedArray o = Vector2iTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_viewporttexture(PyObject* other):
    cdef ViewportTexture o = ViewportTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_basebuttontypedarray(PyObject* other):
    cdef BaseButtonTypedArray o = BaseButtonTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_intervaltweener(PyObject* other):
    cdef IntervalTweener o = IntervalTweener.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_callbacktweener(PyObject* other):
    cdef CallbackTweener o = CallbackTweener.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node3d(PyObject* other):
    cdef Node3D o = Node3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vector2typedarray(PyObject* other):
    cdef Vector2TypedArray o = Vector2TypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vector3typedarray(PyObject* other):
    cdef Vector3TypedArray o = Vector3TypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsbody2dtypedarray(PyObject* other):
    cdef PhysicsBody2DTypedArray o = PhysicsBody2DTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_area2dtypedarray(PyObject* other):
    cdef Area2DTypedArray o = Area2DTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shape2d(PyObject* other):
    cdef Shape2D o = Shape2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfanimationtypedarray(PyObject* other):
    cdef GLTFAnimationTypedArray o = GLTFAnimationTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationplayer(PyObject* other):
    cdef AnimationPlayer o = AnimationPlayer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture3d(PyObject* other):
    cdef Texture3D o = Texture3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltflighttypedarray(PyObject* other):
    cdef GLTFLightTypedArray o = GLTFLightTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsbody3dtypedarray(PyObject* other):
    cdef PhysicsBody3DTypedArray o = PhysicsBody3DTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scenetree(PyObject* other):
    cdef SceneTree o = SceneTree.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node3dtypedarray(PyObject* other):
    cdef Node3DTypedArray o = Node3DTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfskeletontypedarray(PyObject* other):
    cdef GLTFSkeletonTypedArray o = GLTFSkeletonTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_treeitemtypedarray(PyObject* other):
    cdef TreeItemTypedArray o = TreeItemTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_sky(PyObject* other):
    cdef Sky o = Sky.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vboxcontainer(PyObject* other):
    cdef VBoxContainer o = VBoxContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsshapequeryparameters2d(PyObject* other):
    cdef PhysicsShapeQueryParameters2D o = PhysicsShapeQueryParameters2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfnodetypedarray(PyObject* other):
    cdef GLTFNodeTypedArray o = GLTFNodeTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_area3dtypedarray(PyObject* other):
    cdef Area3DTypedArray o = Area3DTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_enetpacketpeer(PyObject* other):
    cdef ENetPacketPeer o = ENetPacketPeer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsbody2d(PyObject* other):
    cdef PhysicsBody2D o = PhysicsBody2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventmouse(PyObject* other):
    cdef InputEventMouse o = InputEventMouse.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationlibrary(PyObject* other):
    cdef AnimationLibrary o = AnimationLibrary.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multiplayerapi(PyObject* other):
    cdef MultiplayerAPI o = MultiplayerAPI.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_packedscene(PyObject* other):
    cdef PackedScene o = PackedScene.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventfromwindow(PyObject* other):
    cdef InputEventFromWindow o = InputEventFromWindow.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multiplayerpeer(PyObject* other):
    cdef MultiplayerPeer o = MultiplayerPeer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_kinematiccollision2d(PyObject* other):
    cdef KinematicCollision2D o = KinematicCollision2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfaccessortypedarray(PyObject* other):
    cdef GLTFAccessorTypedArray o = GLTFAccessorTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_viewport(PyObject* other):
    cdef Viewport o = Viewport.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_trianglemesh(PyObject* other):
    cdef TriangleMesh o = TriangleMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_boneattachment3d(PyObject* other):
    cdef BoneAttachment3D o = BoneAttachment3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorsyntaxhighlighter(PyObject* other):
    cdef EditorSyntaxHighlighter o = EditorSyntaxHighlighter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scenetreetimer(PyObject* other):
    cdef SceneTreeTimer o = SceneTreeTimer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_area3d(PyObject* other):
    cdef Area3D o = Area3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node3dgizmotypedarray(PyObject* other):
    cdef Node3DGizmoTypedArray o = Node3DGizmoTypedArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfskin(PyObject* other):
    cdef GLTFSkin o = GLTFSkin.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_environment(PyObject* other):
    cdef Environment o = Environment.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderscenedata(PyObject* other):
    cdef RenderSceneData o = RenderSceneData.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeleton3d(PyObject* other):
    cdef Skeleton3D o = Skeleton3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shape3d(PyObject* other):
    cdef Shape3D o = Shape3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_image(PyObject* other):
    cdef Image o = Image.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventwithmodifiers(PyObject* other):
    cdef InputEventWithModifiers o = InputEventWithModifiers.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
