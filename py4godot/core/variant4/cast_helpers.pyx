# distutils: language=c++
from cpython cimport Py_INCREF, Py_DECREF, PyObject
vals = []
def clear_vals():
    global vals
    vals.clear()
from py4godot.classes.GLTFNode.GLTFNode cimport *
from py4godot.classes.RegExMatch.RegExMatch cimport *
from py4godot.classes.CollisionObject2D.CollisionObject2D cimport *
from py4godot.classes.TextEdit.TextEdit cimport *
from py4godot.classes.ArrayMesh.ArrayMesh cimport *
from py4godot.classes.ScrollBar.ScrollBar cimport *
from py4godot.classes.Shape3D.Shape3D cimport *
from py4godot.classes.PhysicsBody2D.PhysicsBody2D cimport *
from py4godot.classes.GLTFSkin.GLTFSkin cimport *
from py4godot.classes.Camera2D.Camera2D cimport *
from py4godot.classes.PhysicsRayQueryParameters3D.PhysicsRayQueryParameters3D cimport *
from py4godot.classes.Area2D.Area2D cimport *
from py4godot.classes.GLTFAnimation.GLTFAnimation cimport *
from py4godot.classes.VBoxContainer.VBoxContainer cimport *
from py4godot.classes.Animation.Animation cimport *
from py4godot.classes.RenderSceneBuffersConfiguration.RenderSceneBuffersConfiguration cimport *
from py4godot.classes.BaseButton.BaseButton cimport *
from py4godot.classes.Texture3D.Texture3D cimport *
from py4godot.classes.SkinReference.SkinReference cimport *
from py4godot.classes.IntervalTweener.IntervalTweener cimport *
from py4godot.classes.BoneAttachment3D.BoneAttachment3D cimport *
from py4godot.classes.Font.Font cimport *
from py4godot.classes.Viewport.Viewport cimport *
from py4godot.classes.Input.Input cimport *
from py4godot.classes.RenderSceneBuffers.RenderSceneBuffers cimport *
from py4godot.classes.InputEvent.InputEvent cimport *
from py4godot.classes.GLTFSkeleton.GLTFSkeleton cimport *
from py4godot.classes.Shape2D.Shape2D cimport *
from py4godot.classes.CanvasItem.CanvasItem cimport *
from py4godot.classes.Tweener.Tweener cimport *
from py4godot.classes.Image.Image cimport *
from py4godot.classes.ImporterMesh.ImporterMesh cimport *
from py4godot.classes.SceneTreeTimer.SceneTreeTimer cimport *
from py4godot.classes.Popup.Popup cimport *
from py4godot.classes.AnimationLibrary.AnimationLibrary cimport *
from py4godot.classes.RefCounted.RefCounted cimport *
from py4godot.classes.StyleBox.StyleBox cimport *
from py4godot.classes.Skin.Skin cimport *
from py4godot.classes.Control.Control cimport *
from py4godot.classes.CanvasLayer.CanvasLayer cimport *
from py4godot.classes.MultiplayerPeer.MultiplayerPeer cimport *
from py4godot.classes.InputEventMouseMotion.InputEventMouseMotion cimport *
from py4godot.classes.Object.Object cimport *
from py4godot.classes.GLTFCamera.GLTFCamera cimport *
from py4godot.classes.Script.Script cimport *
from py4godot.classes.InputEventWithModifiers.InputEventWithModifiers cimport *
from py4godot.classes.Container.Container cimport *
from py4godot.classes.GLTFMesh.GLTFMesh cimport *
from py4godot.classes.ViewportTexture.ViewportTexture cimport *
from py4godot.classes.TreeItem.TreeItem cimport *
from py4godot.classes.Camera3D.Camera3D cimport *
from py4godot.classes.CameraAttributes.CameraAttributes cimport *
from py4godot.classes.CollisionObject3D.CollisionObject3D cimport *
from py4godot.classes.Tween.Tween cimport *
from py4godot.classes.RDVertexAttribute.RDVertexAttribute cimport *
from py4godot.classes.SyntaxHighlighter.SyntaxHighlighter cimport *
from py4godot.classes.PhysicsRayQueryParameters2D.PhysicsRayQueryParameters2D cimport *
from py4godot.classes.Shortcut.Shortcut cimport *
from py4godot.classes.RDFramebufferPass.RDFramebufferPass cimport *
from py4godot.classes.ConcavePolygonShape3D.ConcavePolygonShape3D cimport *
from py4godot.classes.Window.Window cimport *
from py4godot.classes.Node3D.Node3D cimport *
from py4godot.classes.RenderSceneData.RenderSceneData cimport *
from py4godot.classes.GLTFBufferView.GLTFBufferView cimport *
from py4godot.classes.Range.Range cimport *
from py4godot.classes.GLTFAccessor.GLTFAccessor cimport *
from py4godot.classes.GLTFLight.GLTFLight cimport *
from py4godot.classes.ScriptEditorBase.ScriptEditorBase cimport *
from py4godot.classes.World3D.World3D cimport *
from py4godot.classes.PackedScene.PackedScene cimport *
from py4godot.classes.Light3D.Light3D cimport *
from py4godot.classes.Shader.Shader cimport *
from py4godot.classes.Node3DGizmo.Node3DGizmo cimport *
from py4godot.classes.Compositor.Compositor cimport *
from py4godot.classes.PacketPeer.PacketPeer cimport *
from py4godot.classes.Sky.Sky cimport *
from py4godot.classes.CameraAttributesPhysical.CameraAttributesPhysical cimport *
from py4godot.classes.RDPipelineSpecializationConstant.RDPipelineSpecializationConstant cimport *
from py4godot.classes.Node2D.Node2D cimport *
from py4godot.classes.MultiMesh.MultiMesh cimport *
from py4godot.classes.SceneTree.SceneTree cimport *
from py4godot.classes.MultiplayerAPI.MultiplayerAPI cimport *
from py4godot.classes.World2D.World2D cimport *
from py4godot.classes.RDPipelineColorBlendStateAttachment.RDPipelineColorBlendStateAttachment cimport *
from py4godot.classes.GLTFTextureSampler.GLTFTextureSampler cimport *
from py4godot.classes.PhysicsShapeQueryParameters2D.PhysicsShapeQueryParameters2D cimport *
from py4godot.classes.PopupMenu.PopupMenu cimport *
from py4godot.classes.PhysicsPointQueryParameters2D.PhysicsPointQueryParameters2D cimport *
from py4godot.classes.ENetPacketPeer.ENetPacketPeer cimport *
from py4godot.classes.RDAttachmentFormat.RDAttachmentFormat cimport *
from py4godot.classes.KinematicCollision3D.KinematicCollision3D cimport *
from py4godot.classes.Resource.Resource cimport *
from py4godot.classes.Texture.Texture cimport *
from py4godot.classes.Mesh.Mesh cimport *
from py4godot.classes.HScrollBar.HScrollBar cimport *
from py4godot.classes.Area3D.Area3D cimport *
from py4godot.classes.PropertyTweener.PropertyTweener cimport *
from py4godot.classes.ShaderMaterial.ShaderMaterial cimport *
from py4godot.classes.MethodTweener.MethodTweener cimport *
from py4godot.classes.TriangleMesh.TriangleMesh cimport *
from py4godot.classes.Node.Node cimport *
from py4godot.classes.ConvexPolygonShape3D.ConvexPolygonShape3D cimport *
from py4godot.classes.Skeleton3D.Skeleton3D cimport *
from py4godot.classes.Texture2D.Texture2D cimport *
from py4godot.classes.GLTFTexture.GLTFTexture cimport *
from py4godot.classes.MainLoop.MainLoop cimport *
from py4godot.classes.CompositorEffect.CompositorEffect cimport *
from py4godot.classes.VisualInstance3D.VisualInstance3D cimport *
from py4godot.classes.KinematicCollision2D.KinematicCollision2D cimport *
from py4godot.classes.InputEventMouse.InputEventMouse cimport *
from py4godot.classes.InputEventMouseButton.InputEventMouseButton cimport *
from py4godot.classes.BoxContainer.BoxContainer cimport *
from py4godot.classes.CameraFeed.CameraFeed cimport *
from py4godot.classes.Tree.Tree cimport *
from py4godot.classes.PhysicsShapeQueryParameters3D.PhysicsShapeQueryParameters3D cimport *
from py4godot.classes.RDUniform.RDUniform cimport *
from py4godot.classes.PhysicsDirectSpaceState2D.PhysicsDirectSpaceState2D cimport *
from py4godot.classes.Material.Material cimport *
from py4godot.classes.SceneState.SceneState cimport *
from py4godot.classes.VScrollBar.VScrollBar cimport *
from py4godot.classes.TextureLayered.TextureLayered cimport *
from py4godot.classes.PhysicsPointQueryParameters3D.PhysicsPointQueryParameters3D cimport *
from py4godot.classes.AnimationPlayer.AnimationPlayer cimport *
from py4godot.classes.CallbackTweener.CallbackTweener cimport *
from py4godot.classes.PhysicsDirectSpaceState3D.PhysicsDirectSpaceState3D cimport *
from py4godot.classes.AnimationMixer.AnimationMixer cimport *
from py4godot.classes.Theme.Theme cimport *
from py4godot.classes.Environment.Environment cimport *
from py4godot.classes.RenderData.RenderData cimport *
from py4godot.classes.PhysicsBody3D.PhysicsBody3D cimport *
from py4godot.classes.ButtonGroup.ButtonGroup cimport *
from py4godot.classes.InputEventFromWindow.InputEventFromWindow cimport *
from py4godot.classes.EditorSyntaxHighlighter.EditorSyntaxHighlighter cimport *
from py4godot.classes.GLTFState.GLTFState cimport *
cdef api PyObject* cast_to_gltfnode(PyObject* other):
    cdef GLTFNode o = GLTFNode.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_regexmatch(PyObject* other):
    cdef RegExMatch o = RegExMatch.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_collisionobject2d(PyObject* other):
    cdef CollisionObject2D o = CollisionObject2D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_textedit(PyObject* other):
    cdef TextEdit o = TextEdit.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_arraymesh(PyObject* other):
    cdef ArrayMesh o = ArrayMesh.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scrollbar(PyObject* other):
    cdef ScrollBar o = ScrollBar.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shape3d(PyObject* other):
    cdef Shape3D o = Shape3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsbody2d(PyObject* other):
    cdef PhysicsBody2D o = PhysicsBody2D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfskin(PyObject* other):
    cdef GLTFSkin o = GLTFSkin.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_camera2d(PyObject* other):
    cdef Camera2D o = Camera2D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsrayqueryparameters3d(PyObject* other):
    cdef PhysicsRayQueryParameters3D o = PhysicsRayQueryParameters3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_area2d(PyObject* other):
    cdef Area2D o = Area2D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfanimation(PyObject* other):
    cdef GLTFAnimation o = GLTFAnimation.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vboxcontainer(PyObject* other):
    cdef VBoxContainer o = VBoxContainer.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animation(PyObject* other):
    cdef Animation o = Animation.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderscenebuffersconfiguration(PyObject* other):
    cdef RenderSceneBuffersConfiguration o = RenderSceneBuffersConfiguration.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_basebutton(PyObject* other):
    cdef BaseButton o = BaseButton.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture3d(PyObject* other):
    cdef Texture3D o = Texture3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skinreference(PyObject* other):
    cdef SkinReference o = SkinReference.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_intervaltweener(PyObject* other):
    cdef IntervalTweener o = IntervalTweener.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_boneattachment3d(PyObject* other):
    cdef BoneAttachment3D o = BoneAttachment3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_font(PyObject* other):
    cdef Font o = Font.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_viewport(PyObject* other):
    cdef Viewport o = Viewport.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_input(PyObject* other):
    cdef Input o = Input.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderscenebuffers(PyObject* other):
    cdef RenderSceneBuffers o = RenderSceneBuffers.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputevent(PyObject* other):
    cdef InputEvent o = InputEvent.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfskeleton(PyObject* other):
    cdef GLTFSkeleton o = GLTFSkeleton.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shape2d(PyObject* other):
    cdef Shape2D o = Shape2D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_canvasitem(PyObject* other):
    cdef CanvasItem o = CanvasItem.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tweener(PyObject* other):
    cdef Tweener o = Tweener.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_image(PyObject* other):
    cdef Image o = Image.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_importermesh(PyObject* other):
    cdef ImporterMesh o = ImporterMesh.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scenetreetimer(PyObject* other):
    cdef SceneTreeTimer o = SceneTreeTimer.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_popup(PyObject* other):
    cdef Popup o = Popup.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationlibrary(PyObject* other):
    cdef AnimationLibrary o = AnimationLibrary.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_refcounted(PyObject* other):
    cdef RefCounted o = RefCounted.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_stylebox(PyObject* other):
    cdef StyleBox o = StyleBox.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skin(PyObject* other):
    cdef Skin o = Skin.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_control(PyObject* other):
    cdef Control o = Control.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_canvaslayer(PyObject* other):
    cdef CanvasLayer o = CanvasLayer.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multiplayerpeer(PyObject* other):
    cdef MultiplayerPeer o = MultiplayerPeer.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventmousemotion(PyObject* other):
    cdef InputEventMouseMotion o = InputEventMouseMotion.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_object(PyObject* other):
    cdef Object o = Object.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfcamera(PyObject* other):
    cdef GLTFCamera o = GLTFCamera.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_script(PyObject* other):
    cdef Script o = Script.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventwithmodifiers(PyObject* other):
    cdef InputEventWithModifiers o = InputEventWithModifiers.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_container(PyObject* other):
    cdef Container o = Container.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfmesh(PyObject* other):
    cdef GLTFMesh o = GLTFMesh.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_viewporttexture(PyObject* other):
    cdef ViewportTexture o = ViewportTexture.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_treeitem(PyObject* other):
    cdef TreeItem o = TreeItem.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_camera3d(PyObject* other):
    cdef Camera3D o = Camera3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cameraattributes(PyObject* other):
    cdef CameraAttributes o = CameraAttributes.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_collisionobject3d(PyObject* other):
    cdef CollisionObject3D o = CollisionObject3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tween(PyObject* other):
    cdef Tween o = Tween.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdvertexattribute(PyObject* other):
    cdef RDVertexAttribute o = RDVertexAttribute.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_syntaxhighlighter(PyObject* other):
    cdef SyntaxHighlighter o = SyntaxHighlighter.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsrayqueryparameters2d(PyObject* other):
    cdef PhysicsRayQueryParameters2D o = PhysicsRayQueryParameters2D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shortcut(PyObject* other):
    cdef Shortcut o = Shortcut.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdframebufferpass(PyObject* other):
    cdef RDFramebufferPass o = RDFramebufferPass.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_concavepolygonshape3d(PyObject* other):
    cdef ConcavePolygonShape3D o = ConcavePolygonShape3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_window(PyObject* other):
    cdef Window o = Window.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node3d(PyObject* other):
    cdef Node3D o = Node3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderscenedata(PyObject* other):
    cdef RenderSceneData o = RenderSceneData.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfbufferview(PyObject* other):
    cdef GLTFBufferView o = GLTFBufferView.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_range(PyObject* other):
    cdef Range o = Range.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfaccessor(PyObject* other):
    cdef GLTFAccessor o = GLTFAccessor.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltflight(PyObject* other):
    cdef GLTFLight o = GLTFLight.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scripteditorbase(PyObject* other):
    cdef ScriptEditorBase o = ScriptEditorBase.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_world3d(PyObject* other):
    cdef World3D o = World3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_packedscene(PyObject* other):
    cdef PackedScene o = PackedScene.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_light3d(PyObject* other):
    cdef Light3D o = Light3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shader(PyObject* other):
    cdef Shader o = Shader.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node3dgizmo(PyObject* other):
    cdef Node3DGizmo o = Node3DGizmo.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_compositor(PyObject* other):
    cdef Compositor o = Compositor.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_packetpeer(PyObject* other):
    cdef PacketPeer o = PacketPeer.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_sky(PyObject* other):
    cdef Sky o = Sky.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cameraattributesphysical(PyObject* other):
    cdef CameraAttributesPhysical o = CameraAttributesPhysical.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdpipelinespecializationconstant(PyObject* other):
    cdef RDPipelineSpecializationConstant o = RDPipelineSpecializationConstant.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node2d(PyObject* other):
    cdef Node2D o = Node2D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multimesh(PyObject* other):
    cdef MultiMesh o = MultiMesh.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scenetree(PyObject* other):
    cdef SceneTree o = SceneTree.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multiplayerapi(PyObject* other):
    cdef MultiplayerAPI o = MultiplayerAPI.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_world2d(PyObject* other):
    cdef World2D o = World2D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdpipelinecolorblendstateattachment(PyObject* other):
    cdef RDPipelineColorBlendStateAttachment o = RDPipelineColorBlendStateAttachment.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltftexturesampler(PyObject* other):
    cdef GLTFTextureSampler o = GLTFTextureSampler.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsshapequeryparameters2d(PyObject* other):
    cdef PhysicsShapeQueryParameters2D o = PhysicsShapeQueryParameters2D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_popupmenu(PyObject* other):
    cdef PopupMenu o = PopupMenu.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicspointqueryparameters2d(PyObject* other):
    cdef PhysicsPointQueryParameters2D o = PhysicsPointQueryParameters2D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_enetpacketpeer(PyObject* other):
    cdef ENetPacketPeer o = ENetPacketPeer.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdattachmentformat(PyObject* other):
    cdef RDAttachmentFormat o = RDAttachmentFormat.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_kinematiccollision3d(PyObject* other):
    cdef KinematicCollision3D o = KinematicCollision3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resource(PyObject* other):
    cdef Resource o = Resource.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture(PyObject* other):
    cdef Texture o = Texture.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_mesh(PyObject* other):
    cdef Mesh o = Mesh.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_hscrollbar(PyObject* other):
    cdef HScrollBar o = HScrollBar.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_area3d(PyObject* other):
    cdef Area3D o = Area3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_propertytweener(PyObject* other):
    cdef PropertyTweener o = PropertyTweener.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shadermaterial(PyObject* other):
    cdef ShaderMaterial o = ShaderMaterial.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_methodtweener(PyObject* other):
    cdef MethodTweener o = MethodTweener.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_trianglemesh(PyObject* other):
    cdef TriangleMesh o = TriangleMesh.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node(PyObject* other):
    cdef Node o = Node.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_convexpolygonshape3d(PyObject* other):
    cdef ConvexPolygonShape3D o = ConvexPolygonShape3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeleton3d(PyObject* other):
    cdef Skeleton3D o = Skeleton3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture2d(PyObject* other):
    cdef Texture2D o = Texture2D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltftexture(PyObject* other):
    cdef GLTFTexture o = GLTFTexture.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_mainloop(PyObject* other):
    cdef MainLoop o = MainLoop.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_compositoreffect(PyObject* other):
    cdef CompositorEffect o = CompositorEffect.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualinstance3d(PyObject* other):
    cdef VisualInstance3D o = VisualInstance3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_kinematiccollision2d(PyObject* other):
    cdef KinematicCollision2D o = KinematicCollision2D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventmouse(PyObject* other):
    cdef InputEventMouse o = InputEventMouse.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventmousebutton(PyObject* other):
    cdef InputEventMouseButton o = InputEventMouseButton.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_boxcontainer(PyObject* other):
    cdef BoxContainer o = BoxContainer.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_camerafeed(PyObject* other):
    cdef CameraFeed o = CameraFeed.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tree(PyObject* other):
    cdef Tree o = Tree.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsshapequeryparameters3d(PyObject* other):
    cdef PhysicsShapeQueryParameters3D o = PhysicsShapeQueryParameters3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rduniform(PyObject* other):
    cdef RDUniform o = RDUniform.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsdirectspacestate2d(PyObject* other):
    cdef PhysicsDirectSpaceState2D o = PhysicsDirectSpaceState2D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_material(PyObject* other):
    cdef Material o = Material.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scenestate(PyObject* other):
    cdef SceneState o = SceneState.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vscrollbar(PyObject* other):
    cdef VScrollBar o = VScrollBar.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texturelayered(PyObject* other):
    cdef TextureLayered o = TextureLayered.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicspointqueryparameters3d(PyObject* other):
    cdef PhysicsPointQueryParameters3D o = PhysicsPointQueryParameters3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationplayer(PyObject* other):
    cdef AnimationPlayer o = AnimationPlayer.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_callbacktweener(PyObject* other):
    cdef CallbackTweener o = CallbackTweener.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsdirectspacestate3d(PyObject* other):
    cdef PhysicsDirectSpaceState3D o = PhysicsDirectSpaceState3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationmixer(PyObject* other):
    cdef AnimationMixer o = AnimationMixer.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_theme(PyObject* other):
    cdef Theme o = Theme.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_environment(PyObject* other):
    cdef Environment o = Environment.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderdata(PyObject* other):
    cdef RenderData o = RenderData.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsbody3d(PyObject* other):
    cdef PhysicsBody3D o = PhysicsBody3D.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_buttongroup(PyObject* other):
    cdef ButtonGroup o = ButtonGroup.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventfromwindow(PyObject* other):
    cdef InputEventFromWindow o = InputEventFromWindow.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorsyntaxhighlighter(PyObject* other):
    cdef EditorSyntaxHighlighter o = EditorSyntaxHighlighter.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfstate(PyObject* other):
    cdef GLTFState o = GLTFState.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o
