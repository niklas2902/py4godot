# distutils: language=c++
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from py4godot.classes.GLTFSpecGloss.GLTFSpecGloss cimport *
from py4godot.classes.SphereMesh.SphereMesh cimport *
from py4godot.classes.EditorProperty.EditorProperty cimport *
from py4godot.classes.Polygon2D.Polygon2D cimport *
from py4godot.classes.AudioEffectLimiter.AudioEffectLimiter cimport *
from py4godot.classes.MeshDataTool.MeshDataTool cimport *
from py4godot.classes.ShapeCast2D.ShapeCast2D cimport *
from py4godot.classes.Window.Window cimport *
from py4godot.classes.Shader.Shader cimport *
from py4godot.classes.BitMap.BitMap cimport *
from py4godot.classes.Gradient.Gradient cimport *
from py4godot.classes.RigidBody3D.RigidBody3D cimport *
from py4godot.classes.Cubemap.Cubemap cimport *
from py4godot.classes.RemoteTransform2D.RemoteTransform2D cimport *
from py4godot.classes.Skeleton3D.Skeleton3D cimport *
from py4godot.classes.JSON.JSON cimport *
from py4godot.classes.FlowContainer.FlowContainer cimport *
from py4godot.classes.ImmediateMesh.ImmediateMesh cimport *
from py4godot.classes.NinePatchRect.NinePatchRect cimport *
from py4godot.classes.Marshalls.Marshalls cimport *
from py4godot.classes.EngineProfiler.EngineProfiler cimport *
from py4godot.classes.ZIPReader.ZIPReader cimport *
from py4godot.classes.EncodedObjectAsID.EncodedObjectAsID cimport *
from py4godot.classes.Light2D.Light2D cimport *
from py4godot.classes.OpenXRActionSet.OpenXRActionSet cimport *
from py4godot.classes.HingeJoint3D.HingeJoint3D cimport *
from py4godot.classes.GridContainer.GridContainer cimport *
from py4godot.classes.RDShaderFile.RDShaderFile cimport *
from py4godot.classes.CollisionObject2D.CollisionObject2D cimport *
from py4godot.classes.OS.OS cimport *
from py4godot.classes.Crypto.Crypto cimport *
from py4godot.classes.AudioStreamWAV.AudioStreamWAV cimport *
from py4godot.classes.GDScript.GDScript cimport *
from py4godot.classes.GrooveJoint2D.GrooveJoint2D cimport *
from py4godot.classes.SpotLight3D.SpotLight3D cimport *
from py4godot.classes.RDAttachmentFormat.RDAttachmentFormat cimport *
from py4godot.classes.BackBufferCopy.BackBufferCopy cimport *
from py4godot.classes.EditorVCSInterface.EditorVCSInterface cimport *
from py4godot.classes.GLTFLight.GLTFLight cimport *
from py4godot.classes.HSeparator.HSeparator cimport *
from py4godot.classes.ScriptLanguage.ScriptLanguage cimport *
from py4godot.classes.TextureRect.TextureRect cimport *
from py4godot.classes.Area3D.Area3D cimport *
from py4godot.classes.TranslationServer.TranslationServer cimport *
from py4godot.classes.InputEvent.InputEvent cimport *
from py4godot.classes.GLTFSkin.GLTFSkin cimport *
from py4godot.classes.Skeleton2D.Skeleton2D cimport *
from py4godot.classes.StaticBody3D.StaticBody3D cimport *
from py4godot.classes.Curve.Curve cimport *
from py4godot.classes.StreamPeerTCP.StreamPeerTCP cimport *
from py4godot.classes.Material.Material cimport *
from py4godot.classes.VSeparator.VSeparator cimport *
from py4godot.classes.XRController3D.XRController3D cimport *
from py4godot.classes.ScrollContainer.ScrollContainer cimport *
from py4godot.classes.ClassDB.ClassDB cimport *
from py4godot.classes.AnimationRootNode.AnimationRootNode cimport *
from py4godot.classes.NavigationServer3D.NavigationServer3D cimport *
from py4godot.classes.SkeletonProfile.SkeletonProfile cimport *
from py4godot.classes.EditorScript.EditorScript cimport *
from py4godot.classes.SliderJoint3D.SliderJoint3D cimport *
from py4godot.classes.Animation.Animation cimport *
from py4godot.classes.Sprite2D.Sprite2D cimport *
from py4godot.classes.GraphNode.GraphNode cimport *
from py4godot.classes.ProgressBar.ProgressBar cimport *
from py4godot.classes.ConeTwistJoint3D.ConeTwistJoint3D cimport *
from py4godot.classes.ViewportTexture.ViewportTexture cimport *
from py4godot.classes.Bone2D.Bone2D cimport *
from py4godot.classes.ORMMaterial3D.ORMMaterial3D cimport *
from py4godot.classes.SegmentShape2D.SegmentShape2D cimport *
from py4godot.classes.ResourcePreloader.ResourcePreloader cimport *
from py4godot.classes.Marker2D.Marker2D cimport *
from py4godot.classes.MenuButton.MenuButton cimport *
from py4godot.classes.BoxOccluder3D.BoxOccluder3D cimport *
from py4godot.classes.CharacterBody2D.CharacterBody2D cimport *
from py4godot.classes.NavigationMesh.NavigationMesh cimport *
from py4godot.classes.PhysicsServer3D.PhysicsServer3D cimport *
from py4godot.classes.CSGPolygon3D.CSGPolygon3D cimport *
from py4godot.classes.Panel.Panel cimport *
from py4godot.classes.EditorNode3DGizmo.EditorNode3DGizmo cimport *
from py4godot.classes.GradientTexture1D.GradientTexture1D cimport *
from py4godot.classes.Texture2D.Texture2D cimport *
from py4godot.classes.SphereOccluder3D.SphereOccluder3D cimport *
from py4godot.classes.VehicleBody3D.VehicleBody3D cimport *
from py4godot.classes.AudioStreamMP3.AudioStreamMP3 cimport *
from py4godot.classes.EditorExportPlugin.EditorExportPlugin cimport *
from py4godot.classes.MeshInstance2D.MeshInstance2D cimport *
from py4godot.classes.ColorRect.ColorRect cimport *
from py4godot.classes.QuadOccluder3D.QuadOccluder3D cimport *
from py4godot.classes.RDVertexAttribute.RDVertexAttribute cimport *
from py4godot.classes.TriangleMesh.TriangleMesh cimport *
from py4godot.classes.CSGMesh3D.CSGMesh3D cimport *
from py4godot.classes.CompressedCubemap.CompressedCubemap cimport *
from py4godot.classes.AnimationNode.AnimationNode cimport *
from py4godot.classes.FileDialog.FileDialog cimport *
from py4godot.classes.Joint2D.Joint2D cimport *
from py4godot.classes.Performance.Performance cimport *
from py4godot.classes.SubViewport.SubViewport cimport *
from py4godot.classes.CameraFeed.CameraFeed cimport *
from py4godot.classes.GLTFMesh.GLTFMesh cimport *
from py4godot.classes.XRAnchor3D.XRAnchor3D cimport *
from py4godot.classes.XMLParser.XMLParser cimport *
from py4godot.classes.EditorPaths.EditorPaths cimport *
from py4godot.classes.RootMotionView.RootMotionView cimport *
from py4godot.classes.VideoStreamPlayer.VideoStreamPlayer cimport *
from py4godot.classes.Path2D.Path2D cimport *
from py4godot.classes.PrimitiveMesh.PrimitiveMesh cimport *
from py4godot.classes.TextEdit.TextEdit cimport *
from py4godot.classes.GLTFTextureSampler.GLTFTextureSampler cimport *
from py4godot.classes.VisualInstance3D.VisualInstance3D cimport *
from py4godot.classes.ConfigFile.ConfigFile cimport *
from py4godot.classes.TileSetAtlasSource.TileSetAtlasSource cimport *
from py4godot.classes.PolygonPathFinder.PolygonPathFinder cimport *
from py4godot.classes.GeometryInstance3D.GeometryInstance3D cimport *
from py4godot.classes.CallbackTweener.CallbackTweener cimport *
from py4godot.classes.CircleShape2D.CircleShape2D cimport *
from py4godot.classes.GLTFAccessor.GLTFAccessor cimport *
from py4godot.classes.StaticBody2D.StaticBody2D cimport *
from py4godot.classes.BoneAttachment3D.BoneAttachment3D cimport *
from py4godot.classes.CollisionPolygon3D.CollisionPolygon3D cimport *
from py4godot.classes.StreamPeerBuffer.StreamPeerBuffer cimport *
from py4godot.classes.LinkButton.LinkButton cimport *
from py4godot.classes.GridMap.GridMap cimport *
from py4godot.classes.CanvasTexture.CanvasTexture cimport *
from py4godot.classes.GPUParticles2D.GPUParticles2D cimport *
from py4godot.classes.Geometry2D.Geometry2D cimport *
from py4godot.classes.SpriteFrames.SpriteFrames cimport *
from py4godot.classes.PCKPacker.PCKPacker cimport *
from py4godot.classes.EditorInspector.EditorInspector cimport *
from py4godot.classes.ImporterMesh.ImporterMesh cimport *
from py4godot.classes.NavigationServer2D.NavigationServer2D cimport *
from py4godot.classes.AnimationNodeAdd3.AnimationNodeAdd3 cimport *
from py4godot.classes.VisualShaderNode.VisualShaderNode cimport *
from py4godot.classes.CurveTexture.CurveTexture cimport *
from py4godot.classes.VideoStreamTheora.VideoStreamTheora cimport *
from py4godot.classes.CameraAttributes.CameraAttributes cimport *
from py4godot.classes.GLTFBufferView.GLTFBufferView cimport *
from py4godot.classes.CanvasModulate.CanvasModulate cimport *
from py4godot.classes.CollisionShape3D.CollisionShape3D cimport *
from py4godot.classes.RichTextEffect.RichTextEffect cimport *
from py4godot.classes.DisplayServer.DisplayServer cimport *
from py4godot.classes.StyleBoxLine.StyleBoxLine cimport *
from py4godot.classes.RenderingDevice.RenderingDevice cimport *
from py4godot.classes.TileMap.TileMap cimport *
from py4godot.classes.CapsuleMesh.CapsuleMesh cimport *
from py4godot.classes.JNISingleton.JNISingleton cimport *
from py4godot.classes.RichTextLabel.RichTextLabel cimport *
from py4godot.classes.IP.IP cimport *
from py4godot.classes.PropertyTweener.PropertyTweener cimport *
from py4godot.classes.EditorSelection.EditorSelection cimport *
from py4godot.classes.BaseMaterial3D.BaseMaterial3D cimport *
from py4godot.classes.ParallaxBackground.ParallaxBackground cimport *
from py4godot.classes.PhysicalBone3D.PhysicalBone3D cimport *
from py4godot.classes.MissingResource.MissingResource cimport *
from py4godot.classes.AudioServer.AudioServer cimport *
from py4godot.classes.SphereShape3D.SphereShape3D cimport *
from py4godot.classes.UndoRedo.UndoRedo cimport *
from py4godot.classes.XRPose.XRPose cimport *
from py4godot.classes.RDFramebufferPass.RDFramebufferPass cimport *
from py4godot.classes.ThemeDB.ThemeDB cimport *
from py4godot.classes.MainLoop.MainLoop cimport *
from py4godot.classes.Input.Input cimport *
from py4godot.classes.InputEventMouse.InputEventMouse cimport *
from py4godot.classes.InputEventMouseMotion.InputEventMouseMotion cimport *
from py4godot.classes.InputEventMouseButton.InputEventMouseButton cimport *
from py4godot.classes.ReferenceRect.ReferenceRect cimport *
from py4godot.classes.RDTextureFormat.RDTextureFormat cimport *
from py4godot.classes.VisualShaderNodeIf.VisualShaderNodeIf cimport *
from py4godot.classes.CSGTorus3D.CSGTorus3D cimport *
from py4godot.classes.AudioListener2D.AudioListener2D cimport *
from py4godot.classes.StreamPeer.StreamPeer cimport *
from py4godot.classes.ZIPPacker.ZIPPacker cimport *
from py4godot.classes.GraphEdit.GraphEdit cimport *
from py4godot.classes.TileSetSource.TileSetSource cimport *
from py4godot.classes.GDExtension.GDExtension cimport *
from py4godot.classes.DirectionalLight2D.DirectionalLight2D cimport *
from py4godot.classes.ArrayOccluder3D.ArrayOccluder3D cimport *
from py4godot.classes.AnimatedSprite3D.AnimatedSprite3D cimport *
from py4godot.classes.CapsuleShape2D.CapsuleShape2D cimport *
from py4godot.classes.PolygonOccluder3D.PolygonOccluder3D cimport *
from py4godot.classes.SceneMultiplayer.SceneMultiplayer cimport *
from py4godot.classes.AStar3D.AStar3D cimport *
from py4godot.classes.DTLSServer.DTLSServer cimport *
from py4godot.classes.XRServer.XRServer cimport *
from py4godot.classes.CSGShape3D.CSGShape3D cimport *
from py4godot.classes.InputEventMIDI.InputEventMIDI cimport *
from py4godot.classes.ArrayMesh.ArrayMesh cimport *
from py4godot.classes.CheckBox.CheckBox cimport *
from py4godot.classes.TextServerAdvanced.TextServerAdvanced cimport *
from py4godot.classes.NavigationLink3D.NavigationLink3D cimport *
from py4godot.classes.RegEx.RegEx cimport *
from py4godot.classes.SceneTreeTimer.SceneTreeTimer cimport *
from py4godot.classes.CharFXTransform.CharFXTransform cimport *
from py4godot.classes.RDUniform.RDUniform cimport *
from py4godot.classes.QuadMesh.QuadMesh cimport *
from py4godot.classes.AudioEffectEQ.AudioEffectEQ cimport *
from py4godot.classes.Container.Container cimport *
from py4godot.classes.InputEventGesture.InputEventGesture cimport *
from py4godot.classes.Resource.Resource cimport *
from py4godot.classes.Sky.Sky cimport *
from py4godot.classes.SplitContainer.SplitContainer cimport *
from py4godot.classes.XRNode3D.XRNode3D cimport *
from py4godot.classes.ReflectionProbe.ReflectionProbe cimport *
from py4godot.classes.Marker3D.Marker3D cimport *
from py4godot.classes.AudioEffectCapture.AudioEffectCapture cimport *
from py4godot.classes.CryptoKey.CryptoKey cimport *
from py4godot.classes.NavigationRegion2D.NavigationRegion2D cimport *
from py4godot.classes.UDPServer.UDPServer cimport *
from py4godot.classes.HSlider.HSlider cimport *
from py4godot.classes.VoxelGI.VoxelGI cimport *
from py4godot.classes.SystemFont.SystemFont cimport *
from py4godot.classes.CanvasItemMaterial.CanvasItemMaterial cimport *
from py4godot.classes.RefCounted.RefCounted cimport *
from py4godot.classes.AudioStreamPlayer.AudioStreamPlayer cimport *
from py4godot.classes.ResourceLoader.ResourceLoader cimport *
from py4godot.classes.MultiplayerSpawner.MultiplayerSpawner cimport *
from py4godot.classes.AnimatedTexture.AnimatedTexture cimport *
from py4godot.classes.Separator.Separator cimport *
from py4godot.classes.InputMap.InputMap cimport *
from py4godot.classes.Environment.Environment cimport *
from py4godot.classes.ParallaxLayer.ParallaxLayer cimport *
from py4godot.classes.AnimationNodeSub2.AnimationNodeSub2 cimport *
from py4godot.classes.OggPacketSequence.OggPacketSequence cimport *
from py4godot.classes.OpenXRInterface.OpenXRInterface cimport *
from py4godot.classes.ColorPicker.ColorPicker cimport *
from py4godot.classes.CharacterBody3D.CharacterBody3D cimport *
from py4godot.classes.PathFollow2D.PathFollow2D cimport *
from py4godot.classes.ENetConnection.ENetConnection cimport *
from py4godot.classes.InputEventKey.InputEventKey cimport *
from py4godot.classes.RenderingServer.RenderingServer cimport *
from py4godot.classes.JavaClassWrapper.JavaClassWrapper cimport *
from py4godot.classes.XRInterface.XRInterface cimport *
from py4godot.classes.Popup.Popup cimport *
from py4godot.classes.SpinBox.SpinBox cimport *
from py4godot.classes.PacketPeerDTLS.PacketPeerDTLS cimport *
from py4godot.classes.LightmapGI.LightmapGI cimport *
from py4godot.classes.StyleBoxTexture.StyleBoxTexture cimport *
from py4godot.classes.GLTFDocument.GLTFDocument cimport *
from py4godot.classes.SyntaxHighlighter.SyntaxHighlighter cimport *
from py4godot.classes.CameraServer.CameraServer cimport *
from py4godot.classes.StyleBoxFlat.StyleBoxFlat cimport *
from py4godot.classes.SurfaceTool.SurfaceTool cimport *
from py4godot.classes.TextParagraph.TextParagraph cimport *
from py4godot.classes.ResourceImporter.ResourceImporter cimport *
from py4godot.classes.CheckButton.CheckButton cimport *
from py4godot.classes.NavigationRegion3D.NavigationRegion3D cimport *
from py4godot.classes.PathFollow3D.PathFollow3D cimport *
from py4godot.classes.EditorSettings.EditorSettings cimport *
from py4godot.classes.WeakRef.WeakRef cimport *
from py4godot.classes.Node3DGizmo.Node3DGizmo cimport *
from py4godot.classes.VSlider.VSlider cimport *
from py4godot.classes.FontVariation.FontVariation cimport *
from py4godot.classes.AESContext.AESContext cimport *
from py4godot.classes.JavaScriptBridge.JavaScriptBridge cimport *
from py4godot.classes.PhysicsServer2D.PhysicsServer2D cimport *
from py4godot.classes.TextServer.TextServer cimport *
from py4godot.classes.ColorPickerButton.ColorPickerButton cimport *
from py4godot.classes.PlaceholderCubemap.PlaceholderCubemap cimport *
from py4godot.classes.WebSocketPeer.WebSocketPeer cimport *
from py4godot.classes.OptionButton.OptionButton cimport *
from py4godot.classes.JavaClass.JavaClass cimport *
from py4godot.classes.OccluderInstance3D.OccluderInstance3D cimport *
from py4godot.classes.RayCast2D.RayCast2D cimport *
from py4godot.classes.Path3D.Path3D cimport *
from py4godot.classes.CanvasItem.CanvasItem cimport *
from py4godot.classes.CSGPrimitive3D.CSGPrimitive3D cimport *
from py4godot.classes.MeshTexture.MeshTexture cimport *
from py4godot.classes.OmniLight3D.OmniLight3D cimport *
from py4godot.classes.VBoxContainer.VBoxContainer cimport *
from py4godot.classes.WebRTCDataChannel.WebRTCDataChannel cimport *
from py4godot.classes.MultiplayerPeer.MultiplayerPeer cimport *
from py4godot.classes.PhysicsBody2D.PhysicsBody2D cimport *
from py4godot.classes.MeshInstance3D.MeshInstance3D cimport *
from py4godot.classes.SceneTree.SceneTree cimport *
from py4godot.classes.PhysicsMaterial.PhysicsMaterial cimport *
from py4godot.classes.TextureProgressBar.TextureProgressBar cimport *
from py4godot.classes.WebXRInterface.WebXRInterface cimport *
from py4godot.classes.CollisionPolygon2D.CollisionPolygon2D cimport *
from py4godot.classes.Button.Button cimport *
from py4godot.classes.ScriptEditor.ScriptEditor cimport *
from py4godot.classes.HashingContext.HashingContext cimport *
from py4godot.classes.TouchScreenButton.TouchScreenButton cimport *
from py4godot.classes.Image.Image cimport *
from py4godot.classes.Tweener.Tweener cimport *
from py4godot.classes.Generic6DOFJoint3D.Generic6DOFJoint3D cimport *
from py4godot.classes.LineEdit.LineEdit cimport *
from py4godot.classes.AnimationLibrary.AnimationLibrary cimport *
from py4godot.classes.Shape3D.Shape3D cimport *
from py4godot.classes.TextureButton.TextureButton cimport *
from py4godot.classes.Shortcut.Shortcut cimport *
from py4godot.classes.CubemapArray.CubemapArray cimport *
from py4godot.classes.AnimatableBody2D.AnimatableBody2D cimport *
from py4godot.classes.DirAccess.DirAccess cimport *
from py4godot.classes.OccluderPolygon2D.OccluderPolygon2D cimport *
from py4godot.classes.AtlasTexture.AtlasTexture cimport *
from py4godot.classes.NoiseTexture3D.NoiseTexture3D cimport *
from py4godot.classes.CodeHighlighter.CodeHighlighter cimport *
from py4godot.classes.AStarGrid2D.AStarGrid2D cimport *
from py4godot.classes.Node2D.Node2D cimport *
from py4godot.classes.PopupMenu.PopupMenu cimport *
from py4godot.classes.HSplitContainer.HSplitContainer cimport *
from py4godot.classes.MenuBar.MenuBar cimport *
from py4godot.classes.NavigationAgent2D.NavigationAgent2D cimport *
from py4godot.classes.Translation.Translation cimport *
from py4godot.classes.PackedScene.PackedScene cimport *
from py4godot.classes.SpriteBase3D.SpriteBase3D cimport *
from py4godot.classes.AnimatedSprite2D.AnimatedSprite2D cimport *
from py4godot.classes.SpringArm3D.SpringArm3D cimport *
from py4godot.classes.Tween.Tween cimport *
from py4godot.classes.Semaphore.Semaphore cimport *
from py4godot.classes.Occluder3D.Occluder3D cimport *
from py4godot.classes.AudioListener3D.AudioListener3D cimport *
from py4godot.classes.AnimationNodeAdd2.AnimationNodeAdd2 cimport *
from py4godot.classes.Noise.Noise cimport *
from py4godot.classes.TextServerManager.TextServerManager cimport *
from py4godot.classes.UPNPDevice.UPNPDevice cimport *
from py4godot.classes.EngineDebugger.EngineDebugger cimport *
from py4godot.classes.GPUParticles3D.GPUParticles3D cimport *
from py4godot.classes.ConfirmationDialog.ConfirmationDialog cimport *
from py4godot.classes.GDExtensionManager.GDExtensionManager cimport *
from py4godot.classes.MeshLibrary.MeshLibrary cimport *
from py4godot.classes.PacketPeer.PacketPeer cimport *
from py4godot.classes.StreamPeerTLS.StreamPeerTLS cimport *
from py4godot.classes.IntervalTweener.IntervalTweener cimport *
from py4godot.classes.JSONRPC.JSONRPC cimport *
from py4godot.classes.ENetPacketPeer.ENetPacketPeer cimport *
from py4godot.classes.PrismMesh.PrismMesh cimport *
from py4godot.classes.WorldEnvironment.WorldEnvironment cimport *
from py4godot.classes.NavigationAgent3D.NavigationAgent3D cimport *
from py4godot.classes.JavaScriptObject.JavaScriptObject cimport *
from py4godot.classes.RDTextureView.RDTextureView cimport *
from py4godot.classes.World3D.World3D cimport *
from py4godot.classes.InputEventShortcut.InputEventShortcut cimport *
from py4godot.classes.ImageTexture3D.ImageTexture3D cimport *
from py4godot.classes.GradientTexture2D.GradientTexture2D cimport *
from py4godot.classes.HTTPRequest.HTTPRequest cimport *
from py4godot.classes.DirectionalLight3D.DirectionalLight3D cimport *
from py4godot.classes.FileSystemDock.FileSystemDock cimport *
from py4godot.classes.SkeletonIK3D.SkeletonIK3D cimport *
from py4godot.classes.Sprite3D.Sprite3D cimport *
from py4godot.classes.VideoStream.VideoStream cimport *
from py4godot.classes.BoxShape3D.BoxShape3D cimport *
from py4godot.classes.GLTFTexture.GLTFTexture cimport *
from py4godot.classes.ItemList.ItemList cimport *
from py4godot.classes.LightOccluder2D.LightOccluder2D cimport *
from py4godot.classes.AudioEffectChorus.AudioEffectChorus cimport *
from py4godot.classes.CanvasGroup.CanvasGroup cimport *
from py4godot.classes.Expression.Expression cimport *
from py4godot.classes.EditorInterface.EditorInterface cimport *
from py4godot.classes.HBoxContainer.HBoxContainer cimport *
from py4godot.classes.CurveXYZTexture.CurveXYZTexture cimport *
from py4godot.classes.TLSOptions.TLSOptions cimport *
from py4godot.classes.OpenXRActionMap.OpenXRActionMap cimport *
from py4godot.classes.PinJoint2D.PinJoint2D cimport *
from py4godot.classes.CylinderMesh.CylinderMesh cimport *
from py4godot.classes.Node.Node cimport *
from py4godot.classes.Node3D.Node3D cimport *
from py4godot.classes.BoxMesh.BoxMesh cimport *
from py4godot.classes.RDShaderSource.RDShaderSource cimport *
from py4godot.classes.BoxContainer.BoxContainer cimport *
from py4godot.classes.MethodTweener.MethodTweener cimport *
from py4godot.classes.GLTFCamera.GLTFCamera cimport *
from py4godot.classes.AudioEffectRecord.AudioEffectRecord cimport *
from py4godot.classes.OpenXRAction.OpenXRAction cimport *
from py4godot.classes.NoiseTexture2D.NoiseTexture2D cimport *
from py4godot.classes.PhysicalBone2D.PhysicalBone2D cimport *
from py4godot.classes.NavigationLink2D.NavigationLink2D cimport *
from py4godot.classes.FogMaterial.FogMaterial cimport *
from py4godot.classes.BoneMap.BoneMap cimport *
from py4godot.classes.Label.Label cimport *
from py4godot.classes.Texture3D.Texture3D cimport *
from py4godot.classes.CSGCombiner3D.CSGCombiner3D cimport *
from py4godot.classes.AnimationPlayer.AnimationPlayer cimport *
from py4godot.classes.TileMapPattern.TileMapPattern cimport *
from py4godot.classes.ResourceUID.ResourceUID cimport *
from py4godot.classes.VSplitContainer.VSplitContainer cimport *
from py4godot.classes.CodeEdit.CodeEdit cimport *
from py4godot.classes.MultiplayerAPI.MultiplayerAPI cimport *
from py4godot.classes.TileData.TileData cimport *
from py4godot.classes.GLTFAnimation.GLTFAnimation cimport *
from py4godot.classes.Thread.Thread cimport *
from py4godot.classes.VFlowContainer.VFlowContainer cimport *
from py4godot.classes.Timer.Timer cimport *
from py4godot.classes.VScrollBar.VScrollBar cimport *
from py4godot.classes.PointLight2D.PointLight2D cimport *
from py4godot.classes.Slider.Slider cimport *
from py4godot.classes.Curve2D.Curve2D cimport *
from py4godot.classes.AnimationNodeSync.AnimationNodeSync cimport *
from py4godot.classes.AudioEffectFilter.AudioEffectFilter cimport *
from py4godot.classes.Mutex.Mutex cimport *
from py4godot.classes.TextureLayered.TextureLayered cimport *
from py4godot.classes.Joint3D.Joint3D cimport *
from py4godot.classes.AudioEffectReverb.AudioEffectReverb cimport *
from py4godot.classes.AnimatableBody3D.AnimatableBody3D cimport *
from py4godot.classes.Shape2D.Shape2D cimport *
from py4godot.classes.AcceptDialog.AcceptDialog cimport *
from py4godot.classes.Control.Control cimport *
from py4godot.classes.Lightmapper.Lightmapper cimport *
from py4godot.classes.LightmapperRD.LightmapperRD cimport *
from py4godot.classes.RDSamplerState.RDSamplerState cimport *
from py4godot.classes.PacketPeerUDP.PacketPeerUDP cimport *
from py4godot.classes.AudioBusLayout.AudioBusLayout cimport *
from py4godot.classes.PlaneMesh.PlaneMesh cimport *
from py4godot.classes.StyleBoxEmpty.StyleBoxEmpty cimport *
from py4godot.classes.FastNoiseLite.FastNoiseLite cimport *
from py4godot.classes.AudioEffect.AudioEffect cimport *
from py4godot.classes.Range.Range cimport *
from py4godot.classes.AudioEffectDelay.AudioEffectDelay cimport *
from py4godot.classes.Object.Object cimport *
from py4godot.classes.AStar2D.AStar2D cimport *
from py4godot.classes.CenterContainer.CenterContainer cimport *
from py4godot.classes.GLTFPhysicsBody.GLTFPhysicsBody cimport *
from py4godot.classes.TCPServer.TCPServer cimport *
from py4godot.classes.MissingNode.MissingNode cimport *
from py4godot.classes.TextMesh.TextMesh cimport *
from py4godot.classes.RegExMatch.RegExMatch cimport *
from py4godot.classes.NavigationPolygon.NavigationPolygon cimport *
from py4godot.classes.ScriptCreateDialog.ScriptCreateDialog cimport *
from py4godot.classes.PinJoint3D.PinJoint3D cimport *
from py4godot.classes.Script.Script cimport *
from py4godot.classes.HMACContext.HMACContext cimport *
from py4godot.classes.AudioEffectAmplify.AudioEffectAmplify cimport *
from py4godot.classes.Mesh.Mesh cimport *
from py4godot.classes.XROrigin3D.XROrigin3D cimport *
from py4godot.classes.CanvasLayer.CanvasLayer cimport *
from py4godot.classes.AudioEffectPanner.AudioEffectPanner cimport *
from py4godot.classes.GLTFPhysicsShape.GLTFPhysicsShape cimport *
from py4godot.classes.PanelContainer.PanelContainer cimport *
from py4godot.classes.Camera3D.Camera3D cimport *
from py4godot.classes.OpenXRIPBinding.OpenXRIPBinding cimport *
from py4godot.classes.AudioEffectPhaser.AudioEffectPhaser cimport *
from py4godot.classes.EditorScriptPicker.EditorScriptPicker cimport *
from py4godot.classes.BaseButton.BaseButton cimport *
from py4godot.classes.WorkerThreadPool.WorkerThreadPool cimport *
from py4godot.classes.InputEventAction.InputEventAction cimport *
from py4godot.classes.CPUParticles2D.CPUParticles2D cimport *
from py4godot.classes.CollisionShape2D.CollisionShape2D cimport *
from py4godot.classes.TabBar.TabBar cimport *
from py4godot.classes.AudioEffectEQ10.AudioEffectEQ10 cimport *
from py4godot.classes.ImageFormatLoader.ImageFormatLoader cimport *
from py4godot.classes.Camera2D.Camera2D cimport *
from py4godot.classes.EditorFileSystem.EditorFileSystem cimport *
from py4godot.classes.GLTFNode.GLTFNode cimport *
from py4godot.classes.ScrollBar.ScrollBar cimport *
from py4godot.classes.CameraTexture.CameraTexture cimport *
from py4godot.classes.Font.Font cimport *
from py4godot.classes.RibbonTrailMesh.RibbonTrailMesh cimport *
from py4godot.classes.OpenXRHand.OpenXRHand cimport *
from py4godot.classes.Engine.Engine cimport *
from py4godot.classes.TileSet.TileSet cimport *
from py4godot.classes.VoxelGIData.VoxelGIData cimport *
from py4godot.classes.HeightMapShape3D.HeightMapShape3D cimport *
from py4godot.classes.Area2D.Area2D cimport *
from py4godot.classes.LabelSettings.LabelSettings cimport *
from py4godot.classes.MultiMesh.MultiMesh cimport *
from py4godot.classes.RigidBody2D.RigidBody2D cimport *
from py4godot.classes.AudioEffectEQ21.AudioEffectEQ21 cimport *
from py4godot.classes.FogVolume.FogVolume cimport *
from py4godot.classes.LightmapProbe.LightmapProbe cimport *
from py4godot.classes.VehicleWheel3D.VehicleWheel3D cimport *
from py4godot.classes.GLTFSkeleton.GLTFSkeleton cimport *
from py4godot.classes.PointMesh.PointMesh cimport *
from py4godot.classes.UPNP.UPNP cimport *
from py4godot.classes.EditorImportPlugin.EditorImportPlugin cimport *
from py4godot.classes.FileAccess.FileAccess cimport *
from py4godot.classes.VisualShaderNodeIs.VisualShaderNodeIs cimport *
from py4godot.classes.PopupPanel.PopupPanel cimport *
from py4godot.classes.Curve3D.Curve3D cimport *
from py4godot.classes.LightmapGIData.LightmapGIData cimport *
from py4godot.classes.SkinReference.SkinReference cimport *
from py4godot.classes.ShaderMaterial.ShaderMaterial cimport *
from py4godot.classes.ShaderInclude.ShaderInclude cimport *
from py4godot.classes.CSGSphere3D.CSGSphere3D cimport *
from py4godot.classes.Light3D.Light3D cimport *
from py4godot.classes.GLTFState.GLTFState cimport *
from py4godot.classes.HFlowContainer.HFlowContainer cimport *
from py4godot.classes.SceneState.SceneState cimport *
from py4godot.classes.AudioEffectEQ6.AudioEffectEQ6 cimport *
from py4godot.classes.EditorPlugin.EditorPlugin cimport *
from py4godot.classes.HScrollBar.HScrollBar cimport *
from py4godot.classes.ButtonGroup.ButtonGroup cimport *
from py4godot.classes.CollisionObject3D.CollisionObject3D cimport *
from py4godot.classes.Skin.Skin cimport *
from py4godot.classes.XRCamera3D.XRCamera3D cimport *
from py4godot.classes.AudioStream.AudioStream cimport *
from py4godot.classes.ResourceSaver.ResourceSaver cimport *
from py4godot.classes.Time.Time cimport *
from py4godot.classes.CSGCylinder3D.CSGCylinder3D cimport *
from py4godot.classes.ProjectSettings.ProjectSettings cimport *
from py4godot.classes.Texture.Texture cimport *
from py4godot.classes.AnimationTree.AnimationTree cimport *
from py4godot.classes.CPUParticles3D.CPUParticles3D cimport *
from py4godot.classes.ScriptExtension.ScriptExtension cimport *
from py4godot.classes.ScriptEditorBase.ScriptEditorBase cimport *
from py4godot.classes.X509Certificate.X509Certificate cimport *
from py4godot.classes.CylinderShape3D.CylinderShape3D cimport *
from py4godot.classes.Line2D.Line2D cimport *
from py4godot.classes.StreamPeerGZIP.StreamPeerGZIP cimport *
from py4godot.classes.Tree.Tree cimport *
from py4godot.classes.StandardMaterial3D.StandardMaterial3D cimport *
from py4godot.classes.PacketPeerStream.PacketPeerStream cimport *
from py4godot.classes.SoftBody3D.SoftBody3D cimport *
from py4godot.classes.RectangleShape2D.RectangleShape2D cimport *
from py4godot.classes.World2D.World2D cimport *
from py4godot.classes.Texture2DArray.Texture2DArray cimport *
from py4godot.classes.CSGBox3D.CSGBox3D cimport *
from py4godot.classes.TorusMesh.TorusMesh cimport *
from py4godot.classes.RemoteTransform3D.RemoteTransform3D cimport *
from py4godot.classes.Decal.Decal cimport *
from py4godot.classes.MarginContainer.MarginContainer cimport *
from py4godot.classes.Viewport.Viewport cimport *
from py4godot.classes.PhysicsBody3D.PhysicsBody3D cimport *
from py4godot.classes.FontFile.FontFile cimport *
from py4godot.classes.MovieWriter.MovieWriter cimport *
from py4godot.classes.MobileVRInterface.MobileVRInterface cimport *
from py4godot.classes.PlaceholderMesh.PlaceholderMesh cimport *
from py4godot.classes.TreeItem.TreeItem cimport *
from py4godot.classes.Theme.Theme cimport *
from py4godot.classes.ImageTexture.ImageTexture cimport *
from py4godot.classes.StyleBox.StyleBox cimport *
from py4godot.classes.EditorFileDialog.EditorFileDialog cimport *
from py4godot.classes.ShapeCast3D.ShapeCast3D cimport *
from py4godot.classes.RayCast3D.RayCast3D cimport *
from py4godot.classes.TextServerDummy.TextServerDummy cimport *
from py4godot.classes.TextLine.TextLine cimport *
from py4godot.classes.CapsuleShape3D.CapsuleShape3D cimport *
from py4godot.classes.VisualShader.VisualShader cimport *
from py4godot.classes.RDShaderSPIRV.RDShaderSPIRV cimport *
from py4godot.classes.EditorSpinSlider.EditorSpinSlider cimport *
from py4godot.classes.Geometry3D.Geometry3D cimport *
from py4godot.classes.TabContainer.TabContainer cimport *
from py4godot.classes.HTTPClient.HTTPClient cimport *
from py4godot.classes.TubeTrailMesh.TubeTrailMesh cimport *
vals = []
def clear_vals():
    global vals
    vals.clear()
cdef api PyObject* cast_to_gltfspecgloss(PyObject* other):
  cdef GLTFSpecGloss o = GLTFSpecGloss.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_spheremesh(PyObject* other):
  cdef SphereMesh o = SphereMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_editorproperty(PyObject* other):
  cdef EditorProperty o = EditorProperty.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_polygon2d(PyObject* other):
  cdef Polygon2D o = Polygon2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audioeffectlimiter(PyObject* other):
  cdef AudioEffectLimiter o = AudioEffectLimiter.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_meshdatatool(PyObject* other):
  cdef MeshDataTool o = MeshDataTool.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_shapecast2d(PyObject* other):
  cdef ShapeCast2D o = ShapeCast2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_window(PyObject* other):
  cdef Window o = Window.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_shader(PyObject* other):
  cdef Shader o = Shader.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_bitmap(PyObject* other):
  cdef BitMap o = BitMap.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gradient(PyObject* other):
  cdef Gradient o = Gradient.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_rigidbody3d(PyObject* other):
  cdef RigidBody3D o = RigidBody3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_cubemap(PyObject* other):
  cdef Cubemap o = Cubemap.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_remotetransform2d(PyObject* other):
  cdef RemoteTransform2D o = RemoteTransform2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_skeleton3d(PyObject* other):
  cdef Skeleton3D o = Skeleton3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_json(PyObject* other):
  cdef JSON o = JSON.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_flowcontainer(PyObject* other):
  cdef FlowContainer o = FlowContainer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_immediatemesh(PyObject* other):
  cdef ImmediateMesh o = ImmediateMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_ninepatchrect(PyObject* other):
  cdef NinePatchRect o = NinePatchRect.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_marshalls(PyObject* other):
  cdef Marshalls o = Marshalls.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_engineprofiler(PyObject* other):
  cdef EngineProfiler o = EngineProfiler.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_zipreader(PyObject* other):
  cdef ZIPReader o = ZIPReader.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_encodedobjectasid(PyObject* other):
  cdef EncodedObjectAsID o = EncodedObjectAsID.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_light2d(PyObject* other):
  cdef Light2D o = Light2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_openxractionset(PyObject* other):
  cdef OpenXRActionSet o = OpenXRActionSet.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_hingejoint3d(PyObject* other):
  cdef HingeJoint3D o = HingeJoint3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gridcontainer(PyObject* other):
  cdef GridContainer o = GridContainer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_rdshaderfile(PyObject* other):
  cdef RDShaderFile o = RDShaderFile.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_collisionobject2d(PyObject* other):
  cdef CollisionObject2D o = CollisionObject2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_os(PyObject* other):
  cdef OS o = OS.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_crypto(PyObject* other):
  cdef Crypto o = Crypto.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audiostreamwav(PyObject* other):
  cdef AudioStreamWAV o = AudioStreamWAV.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gdscript(PyObject* other):
  cdef GDScript o = GDScript.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_groovejoint2d(PyObject* other):
  cdef GrooveJoint2D o = GrooveJoint2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_spotlight3d(PyObject* other):
  cdef SpotLight3D o = SpotLight3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_rdattachmentformat(PyObject* other):
  cdef RDAttachmentFormat o = RDAttachmentFormat.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_backbuffercopy(PyObject* other):
  cdef BackBufferCopy o = BackBufferCopy.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_editorvcsinterface(PyObject* other):
  cdef EditorVCSInterface o = EditorVCSInterface.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gltflight(PyObject* other):
  cdef GLTFLight o = GLTFLight.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_hseparator(PyObject* other):
  cdef HSeparator o = HSeparator.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_scriptlanguage(PyObject* other):
  cdef ScriptLanguage o = ScriptLanguage.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_texturerect(PyObject* other):
  cdef TextureRect o = TextureRect.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_area3d(PyObject* other):
  cdef Area3D o = Area3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_translationserver(PyObject* other):
  cdef TranslationServer o = TranslationServer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_inputevent(PyObject* other):
  cdef InputEvent o = InputEvent.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gltfskin(PyObject* other):
  cdef GLTFSkin o = GLTFSkin.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_skeleton2d(PyObject* other):
  cdef Skeleton2D o = Skeleton2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_staticbody3d(PyObject* other):
  cdef StaticBody3D o = StaticBody3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_curve(PyObject* other):
  cdef Curve o = Curve.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_streampeertcp(PyObject* other):
  cdef StreamPeerTCP o = StreamPeerTCP.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_material(PyObject* other):
  cdef Material o = Material.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_vseparator(PyObject* other):
  cdef VSeparator o = VSeparator.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_xrcontroller3d(PyObject* other):
  cdef XRController3D o = XRController3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_scrollcontainer(PyObject* other):
  cdef ScrollContainer o = ScrollContainer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_classdb(PyObject* other):
  cdef ClassDB o = ClassDB.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_animationrootnode(PyObject* other):
  cdef AnimationRootNode o = AnimationRootNode.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_navigationserver3d(PyObject* other):
  cdef NavigationServer3D o = NavigationServer3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_skeletonprofile(PyObject* other):
  cdef SkeletonProfile o = SkeletonProfile.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_editorscript(PyObject* other):
  cdef EditorScript o = EditorScript.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_sliderjoint3d(PyObject* other):
  cdef SliderJoint3D o = SliderJoint3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_animation(PyObject* other):
  cdef Animation o = Animation.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_sprite2d(PyObject* other):
  cdef Sprite2D o = Sprite2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_graphnode(PyObject* other):
  cdef GraphNode o = GraphNode.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_progressbar(PyObject* other):
  cdef ProgressBar o = ProgressBar.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_conetwistjoint3d(PyObject* other):
  cdef ConeTwistJoint3D o = ConeTwistJoint3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_viewporttexture(PyObject* other):
  cdef ViewportTexture o = ViewportTexture.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_bone2d(PyObject* other):
  cdef Bone2D o = Bone2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_ormmaterial3d(PyObject* other):
  cdef ORMMaterial3D o = ORMMaterial3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_segmentshape2d(PyObject* other):
  cdef SegmentShape2D o = SegmentShape2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_resourcepreloader(PyObject* other):
  cdef ResourcePreloader o = ResourcePreloader.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_marker2d(PyObject* other):
  cdef Marker2D o = Marker2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_menubutton(PyObject* other):
  cdef MenuButton o = MenuButton.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_boxoccluder3d(PyObject* other):
  cdef BoxOccluder3D o = BoxOccluder3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_characterbody2d(PyObject* other):
  cdef CharacterBody2D o = CharacterBody2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_navigationmesh(PyObject* other):
  cdef NavigationMesh o = NavigationMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_physicsserver3d(PyObject* other):
  cdef PhysicsServer3D o = PhysicsServer3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_csgpolygon3d(PyObject* other):
  cdef CSGPolygon3D o = CSGPolygon3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_panel(PyObject* other):
  cdef Panel o = Panel.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_editornode3dgizmo(PyObject* other):
  cdef EditorNode3DGizmo o = EditorNode3DGizmo.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gradienttexture1d(PyObject* other):
  cdef GradientTexture1D o = GradientTexture1D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_texture2d(PyObject* other):
  cdef Texture2D o = Texture2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_sphereoccluder3d(PyObject* other):
  cdef SphereOccluder3D o = SphereOccluder3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_vehiclebody3d(PyObject* other):
  cdef VehicleBody3D o = VehicleBody3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audiostreammp3(PyObject* other):
  cdef AudioStreamMP3 o = AudioStreamMP3.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_editorexportplugin(PyObject* other):
  cdef EditorExportPlugin o = EditorExportPlugin.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_meshinstance2d(PyObject* other):
  cdef MeshInstance2D o = MeshInstance2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_colorrect(PyObject* other):
  cdef ColorRect o = ColorRect.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_quadoccluder3d(PyObject* other):
  cdef QuadOccluder3D o = QuadOccluder3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_rdvertexattribute(PyObject* other):
  cdef RDVertexAttribute o = RDVertexAttribute.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_trianglemesh(PyObject* other):
  cdef TriangleMesh o = TriangleMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_csgmesh3d(PyObject* other):
  cdef CSGMesh3D o = CSGMesh3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_compressedcubemap(PyObject* other):
  cdef CompressedCubemap o = CompressedCubemap.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_animationnode(PyObject* other):
  cdef AnimationNode o = AnimationNode.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_filedialog(PyObject* other):
  cdef FileDialog o = FileDialog.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_joint2d(PyObject* other):
  cdef Joint2D o = Joint2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_performance(PyObject* other):
  cdef Performance o = Performance.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_subviewport(PyObject* other):
  cdef SubViewport o = SubViewport.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_camerafeed(PyObject* other):
  cdef CameraFeed o = CameraFeed.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gltfmesh(PyObject* other):
  cdef GLTFMesh o = GLTFMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_xranchor3d(PyObject* other):
  cdef XRAnchor3D o = XRAnchor3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_xmlparser(PyObject* other):
  cdef XMLParser o = XMLParser.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_editorpaths(PyObject* other):
  cdef EditorPaths o = EditorPaths.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_rootmotionview(PyObject* other):
  cdef RootMotionView o = RootMotionView.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_videostreamplayer(PyObject* other):
  cdef VideoStreamPlayer o = VideoStreamPlayer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_path2d(PyObject* other):
  cdef Path2D o = Path2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_primitivemesh(PyObject* other):
  cdef PrimitiveMesh o = PrimitiveMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_textedit(PyObject* other):
  cdef TextEdit o = TextEdit.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gltftexturesampler(PyObject* other):
  cdef GLTFTextureSampler o = GLTFTextureSampler.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_visualinstance3d(PyObject* other):
  cdef VisualInstance3D o = VisualInstance3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_configfile(PyObject* other):
  cdef ConfigFile o = ConfigFile.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_tilesetatlassource(PyObject* other):
  cdef TileSetAtlasSource o = TileSetAtlasSource.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_polygonpathfinder(PyObject* other):
  cdef PolygonPathFinder o = PolygonPathFinder.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_geometryinstance3d(PyObject* other):
  cdef GeometryInstance3D o = GeometryInstance3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_callbacktweener(PyObject* other):
  cdef CallbackTweener o = CallbackTweener.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_circleshape2d(PyObject* other):
  cdef CircleShape2D o = CircleShape2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gltfaccessor(PyObject* other):
  cdef GLTFAccessor o = GLTFAccessor.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_staticbody2d(PyObject* other):
  cdef StaticBody2D o = StaticBody2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_boneattachment3d(PyObject* other):
  cdef BoneAttachment3D o = BoneAttachment3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_collisionpolygon3d(PyObject* other):
  cdef CollisionPolygon3D o = CollisionPolygon3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_streampeerbuffer(PyObject* other):
  cdef StreamPeerBuffer o = StreamPeerBuffer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_linkbutton(PyObject* other):
  cdef LinkButton o = LinkButton.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gridmap(PyObject* other):
  cdef GridMap o = GridMap.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_canvastexture(PyObject* other):
  cdef CanvasTexture o = CanvasTexture.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gpuparticles2d(PyObject* other):
  cdef GPUParticles2D o = GPUParticles2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_geometry2d(PyObject* other):
  cdef Geometry2D o = Geometry2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_spriteframes(PyObject* other):
  cdef SpriteFrames o = SpriteFrames.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_pckpacker(PyObject* other):
  cdef PCKPacker o = PCKPacker.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_editorinspector(PyObject* other):
  cdef EditorInspector o = EditorInspector.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_importermesh(PyObject* other):
  cdef ImporterMesh o = ImporterMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_navigationserver2d(PyObject* other):
  cdef NavigationServer2D o = NavigationServer2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_animationnodeadd3(PyObject* other):
  cdef AnimationNodeAdd3 o = AnimationNodeAdd3.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_visualshadernode(PyObject* other):
  cdef VisualShaderNode o = VisualShaderNode.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_curvetexture(PyObject* other):
  cdef CurveTexture o = CurveTexture.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_videostreamtheora(PyObject* other):
  cdef VideoStreamTheora o = VideoStreamTheora.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_cameraattributes(PyObject* other):
  cdef CameraAttributes o = CameraAttributes.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gltfbufferview(PyObject* other):
  cdef GLTFBufferView o = GLTFBufferView.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_canvasmodulate(PyObject* other):
  cdef CanvasModulate o = CanvasModulate.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_collisionshape3d(PyObject* other):
  cdef CollisionShape3D o = CollisionShape3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_richtexteffect(PyObject* other):
  cdef RichTextEffect o = RichTextEffect.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_displayserver(PyObject* other):
  cdef DisplayServer o = DisplayServer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_styleboxline(PyObject* other):
  cdef StyleBoxLine o = StyleBoxLine.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_renderingdevice(PyObject* other):
  cdef RenderingDevice o = RenderingDevice.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_tilemap(PyObject* other):
  cdef TileMap o = TileMap.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_capsulemesh(PyObject* other):
  cdef CapsuleMesh o = CapsuleMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_jnisingleton(PyObject* other):
  cdef JNISingleton o = JNISingleton.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_richtextlabel(PyObject* other):
  cdef RichTextLabel o = RichTextLabel.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_ip(PyObject* other):
  cdef IP o = IP.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_propertytweener(PyObject* other):
  cdef PropertyTweener o = PropertyTweener.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_editorselection(PyObject* other):
  cdef EditorSelection o = EditorSelection.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_basematerial3d(PyObject* other):
  cdef BaseMaterial3D o = BaseMaterial3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_parallaxbackground(PyObject* other):
  cdef ParallaxBackground o = ParallaxBackground.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_physicalbone3d(PyObject* other):
  cdef PhysicalBone3D o = PhysicalBone3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_missingresource(PyObject* other):
  cdef MissingResource o = MissingResource.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audioserver(PyObject* other):
  cdef AudioServer o = AudioServer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_sphereshape3d(PyObject* other):
  cdef SphereShape3D o = SphereShape3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_undoredo(PyObject* other):
  cdef UndoRedo o = UndoRedo.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_xrpose(PyObject* other):
  cdef XRPose o = XRPose.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_rdframebufferpass(PyObject* other):
  cdef RDFramebufferPass o = RDFramebufferPass.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_themedb(PyObject* other):
  cdef ThemeDB o = ThemeDB.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_mainloop(PyObject* other):
  cdef MainLoop o = MainLoop.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_input(PyObject* other):
  cdef Input o = Input.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_inputeventmouse(PyObject* other):
  cdef InputEventMouse o = InputEventMouse.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_inputeventmousemotion(PyObject* other):
  cdef InputEventMouse o = InputEventMouseMotion.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_inputeventmousebutton(PyObject* other):
  cdef InputEvent o = InputEventMouseButton.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_referencerect(PyObject* other):
  cdef ReferenceRect o = ReferenceRect.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_rdtextureformat(PyObject* other):
  cdef RDTextureFormat o = RDTextureFormat.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeif(PyObject* other):
  cdef VisualShaderNodeIf o = VisualShaderNodeIf.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_csgtorus3d(PyObject* other):
  cdef CSGTorus3D o = CSGTorus3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audiolistener2d(PyObject* other):
  cdef AudioListener2D o = AudioListener2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_streampeer(PyObject* other):
  cdef StreamPeer o = StreamPeer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_zippacker(PyObject* other):
  cdef ZIPPacker o = ZIPPacker.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_graphedit(PyObject* other):
  cdef GraphEdit o = GraphEdit.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_tilesetsource(PyObject* other):
  cdef TileSetSource o = TileSetSource.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gdextension(PyObject* other):
  cdef GDExtension o = GDExtension.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_directionallight2d(PyObject* other):
  cdef DirectionalLight2D o = DirectionalLight2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_arrayoccluder3d(PyObject* other):
  cdef ArrayOccluder3D o = ArrayOccluder3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_animatedsprite3d(PyObject* other):
  cdef AnimatedSprite3D o = AnimatedSprite3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_capsuleshape2d(PyObject* other):
  cdef CapsuleShape2D o = CapsuleShape2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_polygonoccluder3d(PyObject* other):
  cdef PolygonOccluder3D o = PolygonOccluder3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_scenemultiplayer(PyObject* other):
  cdef SceneMultiplayer o = SceneMultiplayer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_astar3d(PyObject* other):
  cdef AStar3D o = AStar3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_dtlsserver(PyObject* other):
  cdef DTLSServer o = DTLSServer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_xrserver(PyObject* other):
  cdef XRServer o = XRServer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_csgshape3d(PyObject* other):
  cdef CSGShape3D o = CSGShape3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_inputeventmidi(PyObject* other):
  cdef InputEventMIDI o = InputEventMIDI.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_arraymesh(PyObject* other):
  cdef ArrayMesh o = ArrayMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_checkbox(PyObject* other):
  cdef CheckBox o = CheckBox.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_textserveradvanced(PyObject* other):
  cdef TextServerAdvanced o = TextServerAdvanced.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_navigationlink3d(PyObject* other):
  cdef NavigationLink3D o = NavigationLink3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_regex(PyObject* other):
  cdef RegEx o = RegEx.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_scenetreetimer(PyObject* other):
  cdef SceneTreeTimer o = SceneTreeTimer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_charfxtransform(PyObject* other):
  cdef CharFXTransform o = CharFXTransform.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_rduniform(PyObject* other):
  cdef RDUniform o = RDUniform.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_quadmesh(PyObject* other):
  cdef QuadMesh o = QuadMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audioeffecteq(PyObject* other):
  cdef AudioEffectEQ o = AudioEffectEQ.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_container(PyObject* other):
  cdef Container o = Container.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_inputeventgesture(PyObject* other):
  cdef InputEventGesture o = InputEventGesture.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_resource(PyObject* other):
  cdef Resource o = Resource.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_sky(PyObject* other):
  cdef Sky o = Sky.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_splitcontainer(PyObject* other):
  cdef SplitContainer o = SplitContainer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_xrnode3d(PyObject* other):
  cdef XRNode3D o = XRNode3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_reflectionprobe(PyObject* other):
  cdef ReflectionProbe o = ReflectionProbe.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_marker3d(PyObject* other):
  cdef Marker3D o = Marker3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audioeffectcapture(PyObject* other):
  cdef AudioEffectCapture o = AudioEffectCapture.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_cryptokey(PyObject* other):
  cdef CryptoKey o = CryptoKey.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_navigationregion2d(PyObject* other):
  cdef NavigationRegion2D o = NavigationRegion2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_udpserver(PyObject* other):
  cdef UDPServer o = UDPServer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_hslider(PyObject* other):
  cdef HSlider o = HSlider.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_voxelgi(PyObject* other):
  cdef VoxelGI o = VoxelGI.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_systemfont(PyObject* other):
  cdef SystemFont o = SystemFont.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_canvasitemmaterial(PyObject* other):
  cdef CanvasItemMaterial o = CanvasItemMaterial.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_refcounted(PyObject* other):
  cdef RefCounted o = RefCounted.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audiostreamplayer(PyObject* other):
  cdef AudioStreamPlayer o = AudioStreamPlayer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_resourceloader(PyObject* other):
  cdef ResourceLoader o = ResourceLoader.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_multiplayerspawner(PyObject* other):
  cdef MultiplayerSpawner o = MultiplayerSpawner.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_animatedtexture(PyObject* other):
  cdef AnimatedTexture o = AnimatedTexture.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_separator(PyObject* other):
  cdef Separator o = Separator.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_inputmap(PyObject* other):
  cdef InputMap o = InputMap.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_environment(PyObject* other):
  cdef Environment o = Environment.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_parallaxlayer(PyObject* other):
  cdef ParallaxLayer o = ParallaxLayer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_animationnodesub2(PyObject* other):
  cdef AnimationNodeSub2 o = AnimationNodeSub2.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_oggpacketsequence(PyObject* other):
  cdef OggPacketSequence o = OggPacketSequence.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_openxrinterface(PyObject* other):
  cdef OpenXRInterface o = OpenXRInterface.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_colorpicker(PyObject* other):
  cdef ColorPicker o = ColorPicker.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_characterbody3d(PyObject* other):
  cdef CharacterBody3D o = CharacterBody3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_pathfollow2d(PyObject* other):
  cdef PathFollow2D o = PathFollow2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_enetconnection(PyObject* other):
  cdef ENetConnection o = ENetConnection.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_inputeventkey(PyObject* other):
  cdef InputEventKey o = InputEventKey.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_renderingserver(PyObject* other):
  cdef RenderingServer o = RenderingServer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_javaclasswrapper(PyObject* other):
  cdef JavaClassWrapper o = JavaClassWrapper.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_xrinterface(PyObject* other):
  cdef XRInterface o = XRInterface.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_popup(PyObject* other):
  cdef Popup o = Popup.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_spinbox(PyObject* other):
  cdef SpinBox o = SpinBox.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_packetpeerdtls(PyObject* other):
  cdef PacketPeerDTLS o = PacketPeerDTLS.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_lightmapgi(PyObject* other):
  cdef LightmapGI o = LightmapGI.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_styleboxtexture(PyObject* other):
  cdef StyleBoxTexture o = StyleBoxTexture.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gltfdocument(PyObject* other):
  cdef GLTFDocument o = GLTFDocument.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_syntaxhighlighter(PyObject* other):
  cdef SyntaxHighlighter o = SyntaxHighlighter.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_cameraserver(PyObject* other):
  cdef CameraServer o = CameraServer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_styleboxflat(PyObject* other):
  cdef StyleBoxFlat o = StyleBoxFlat.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_surfacetool(PyObject* other):
  cdef SurfaceTool o = SurfaceTool.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_textparagraph(PyObject* other):
  cdef TextParagraph o = TextParagraph.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_resourceimporter(PyObject* other):
  cdef ResourceImporter o = ResourceImporter.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_checkbutton(PyObject* other):
  cdef CheckButton o = CheckButton.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_navigationregion3d(PyObject* other):
  cdef NavigationRegion3D o = NavigationRegion3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_pathfollow3d(PyObject* other):
  cdef PathFollow3D o = PathFollow3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_editorsettings(PyObject* other):
  cdef EditorSettings o = EditorSettings.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_weakref(PyObject* other):
  cdef WeakRef o = WeakRef.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_node3dgizmo(PyObject* other):
  cdef Node3DGizmo o = Node3DGizmo.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_vslider(PyObject* other):
  cdef VSlider o = VSlider.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_fontvariation(PyObject* other):
  cdef FontVariation o = FontVariation.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_aescontext(PyObject* other):
  cdef AESContext o = AESContext.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_javascriptbridge(PyObject* other):
  cdef JavaScriptBridge o = JavaScriptBridge.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_physicsserver2d(PyObject* other):
  cdef PhysicsServer2D o = PhysicsServer2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_textserver(PyObject* other):
  cdef TextServer o = TextServer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_colorpickerbutton(PyObject* other):
  cdef ColorPickerButton o = ColorPickerButton.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_placeholdercubemap(PyObject* other):
  cdef PlaceholderCubemap o = PlaceholderCubemap.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_websocketpeer(PyObject* other):
  cdef WebSocketPeer o = WebSocketPeer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_optionbutton(PyObject* other):
  cdef OptionButton o = OptionButton.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_javaclass(PyObject* other):
  cdef JavaClass o = JavaClass.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_occluderinstance3d(PyObject* other):
  cdef OccluderInstance3D o = OccluderInstance3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_raycast2d(PyObject* other):
  cdef RayCast2D o = RayCast2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_path3d(PyObject* other):
  cdef Path3D o = Path3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_canvasitem(PyObject* other):
  cdef CanvasItem o = CanvasItem.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_csgprimitive3d(PyObject* other):
  cdef CSGPrimitive3D o = CSGPrimitive3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_meshtexture(PyObject* other):
  cdef MeshTexture o = MeshTexture.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_omnilight3d(PyObject* other):
  cdef OmniLight3D o = OmniLight3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_vboxcontainer(PyObject* other):
  cdef VBoxContainer o = VBoxContainer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_webrtcdatachannel(PyObject* other):
  cdef WebRTCDataChannel o = WebRTCDataChannel.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_multiplayerpeer(PyObject* other):
  cdef MultiplayerPeer o = MultiplayerPeer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_physicsbody2d(PyObject* other):
  cdef PhysicsBody2D o = PhysicsBody2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_meshinstance3d(PyObject* other):
  cdef MeshInstance3D o = MeshInstance3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_scenetree(PyObject* other):
  cdef SceneTree o = SceneTree.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_physicsmaterial(PyObject* other):
  cdef PhysicsMaterial o = PhysicsMaterial.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_textureprogressbar(PyObject* other):
  cdef TextureProgressBar o = TextureProgressBar.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_webxrinterface(PyObject* other):
  cdef WebXRInterface o = WebXRInterface.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_collisionpolygon2d(PyObject* other):
  cdef CollisionPolygon2D o = CollisionPolygon2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_button(PyObject* other):
  cdef Button o = Button.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_scripteditor(PyObject* other):
  cdef ScriptEditor o = ScriptEditor.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_hashingcontext(PyObject* other):
  cdef HashingContext o = HashingContext.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_touchscreenbutton(PyObject* other):
  cdef TouchScreenButton o = TouchScreenButton.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_image(PyObject* other):
  cdef Image o = Image.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_tweener(PyObject* other):
  cdef Tweener o = Tweener.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_generic6dofjoint3d(PyObject* other):
  cdef Generic6DOFJoint3D o = Generic6DOFJoint3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_lineedit(PyObject* other):
  cdef LineEdit o = LineEdit.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_animationlibrary(PyObject* other):
  cdef AnimationLibrary o = AnimationLibrary.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_shape3d(PyObject* other):
  cdef Shape3D o = Shape3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_texturebutton(PyObject* other):
  cdef TextureButton o = TextureButton.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_shortcut(PyObject* other):
  cdef Shortcut o = Shortcut.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_cubemaparray(PyObject* other):
  cdef CubemapArray o = CubemapArray.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_animatablebody2d(PyObject* other):
  cdef AnimatableBody2D o = AnimatableBody2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_diraccess(PyObject* other):
  cdef DirAccess o = DirAccess.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_occluderpolygon2d(PyObject* other):
  cdef OccluderPolygon2D o = OccluderPolygon2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_atlastexture(PyObject* other):
  cdef AtlasTexture o = AtlasTexture.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_noisetexture3d(PyObject* other):
  cdef NoiseTexture3D o = NoiseTexture3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_codehighlighter(PyObject* other):
  cdef CodeHighlighter o = CodeHighlighter.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_astargrid2d(PyObject* other):
  cdef AStarGrid2D o = AStarGrid2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_node2d(PyObject* other):
  cdef Node2D o = Node2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_popupmenu(PyObject* other):
  cdef PopupMenu o = PopupMenu.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_hsplitcontainer(PyObject* other):
  cdef HSplitContainer o = HSplitContainer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_menubar(PyObject* other):
  cdef MenuBar o = MenuBar.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_navigationagent2d(PyObject* other):
  cdef NavigationAgent2D o = NavigationAgent2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_translation(PyObject* other):
  cdef Translation o = Translation.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_packedscene(PyObject* other):
  cdef PackedScene o = PackedScene.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_spritebase3d(PyObject* other):
  cdef SpriteBase3D o = SpriteBase3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_animatedsprite2d(PyObject* other):
  cdef AnimatedSprite2D o = AnimatedSprite2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_springarm3d(PyObject* other):
  cdef SpringArm3D o = SpringArm3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_tween(PyObject* other):
  cdef Tween o = Tween.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_semaphore(PyObject* other):
  cdef Semaphore o = Semaphore.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_occluder3d(PyObject* other):
  cdef Occluder3D o = Occluder3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audiolistener3d(PyObject* other):
  cdef AudioListener3D o = AudioListener3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_animationnodeadd2(PyObject* other):
  cdef AnimationNodeAdd2 o = AnimationNodeAdd2.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_noise(PyObject* other):
  cdef Noise o = Noise.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_textservermanager(PyObject* other):
  cdef TextServerManager o = TextServerManager.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_upnpdevice(PyObject* other):
  cdef UPNPDevice o = UPNPDevice.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_enginedebugger(PyObject* other):
  cdef EngineDebugger o = EngineDebugger.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gpuparticles3d(PyObject* other):
  cdef GPUParticles3D o = GPUParticles3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_confirmationdialog(PyObject* other):
  cdef ConfirmationDialog o = ConfirmationDialog.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gdextensionmanager(PyObject* other):
  cdef GDExtensionManager o = GDExtensionManager.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_meshlibrary(PyObject* other):
  cdef MeshLibrary o = MeshLibrary.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_packetpeer(PyObject* other):
  cdef PacketPeer o = PacketPeer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_streampeertls(PyObject* other):
  cdef StreamPeerTLS o = StreamPeerTLS.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_intervaltweener(PyObject* other):
  cdef IntervalTweener o = IntervalTweener.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_jsonrpc(PyObject* other):
  cdef JSONRPC o = JSONRPC.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_enetpacketpeer(PyObject* other):
  cdef ENetPacketPeer o = ENetPacketPeer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_prismmesh(PyObject* other):
  cdef PrismMesh o = PrismMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_worldenvironment(PyObject* other):
  cdef WorldEnvironment o = WorldEnvironment.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_navigationagent3d(PyObject* other):
  cdef NavigationAgent3D o = NavigationAgent3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_javascriptobject(PyObject* other):
  cdef JavaScriptObject o = JavaScriptObject.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_rdtextureview(PyObject* other):
  cdef RDTextureView o = RDTextureView.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_world3d(PyObject* other):
  cdef World3D o = World3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_inputeventshortcut(PyObject* other):
  cdef InputEventShortcut o = InputEventShortcut.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_imagetexture3d(PyObject* other):
  cdef ImageTexture3D o = ImageTexture3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gradienttexture2d(PyObject* other):
  cdef GradientTexture2D o = GradientTexture2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_httprequest(PyObject* other):
  cdef HTTPRequest o = HTTPRequest.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_directionallight3d(PyObject* other):
  cdef DirectionalLight3D o = DirectionalLight3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_filesystemdock(PyObject* other):
  cdef FileSystemDock o = FileSystemDock.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_skeletonik3d(PyObject* other):
  cdef SkeletonIK3D o = SkeletonIK3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_sprite3d(PyObject* other):
  cdef Sprite3D o = Sprite3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_videostream(PyObject* other):
  cdef VideoStream o = VideoStream.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_boxshape3d(PyObject* other):
  cdef BoxShape3D o = BoxShape3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gltftexture(PyObject* other):
  cdef GLTFTexture o = GLTFTexture.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_itemlist(PyObject* other):
  cdef ItemList o = ItemList.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_lightoccluder2d(PyObject* other):
  cdef LightOccluder2D o = LightOccluder2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audioeffectchorus(PyObject* other):
  cdef AudioEffectChorus o = AudioEffectChorus.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_canvasgroup(PyObject* other):
  cdef CanvasGroup o = CanvasGroup.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_expression(PyObject* other):
  cdef Expression o = Expression.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_editorinterface(PyObject* other):
  cdef EditorInterface o = EditorInterface.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_hboxcontainer(PyObject* other):
  cdef HBoxContainer o = HBoxContainer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_curvexyztexture(PyObject* other):
  cdef CurveXYZTexture o = CurveXYZTexture.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_tlsoptions(PyObject* other):
  cdef TLSOptions o = TLSOptions.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_openxractionmap(PyObject* other):
  cdef OpenXRActionMap o = OpenXRActionMap.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_pinjoint2d(PyObject* other):
  cdef PinJoint2D o = PinJoint2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_cylindermesh(PyObject* other):
  cdef CylinderMesh o = CylinderMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_node(PyObject* other):
  cdef Node o = Node.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_node3d(PyObject* other):
  cdef Node3D o = Node3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_boxmesh(PyObject* other):
  cdef BoxMesh o = BoxMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_rdshadersource(PyObject* other):
  cdef RDShaderSource o = RDShaderSource.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_boxcontainer(PyObject* other):
  cdef BoxContainer o = BoxContainer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_methodtweener(PyObject* other):
  cdef MethodTweener o = MethodTweener.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gltfcamera(PyObject* other):
  cdef GLTFCamera o = GLTFCamera.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audioeffectrecord(PyObject* other):
  cdef AudioEffectRecord o = AudioEffectRecord.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_openxraction(PyObject* other):
  cdef OpenXRAction o = OpenXRAction.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_noisetexture2d(PyObject* other):
  cdef NoiseTexture2D o = NoiseTexture2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_physicalbone2d(PyObject* other):
  cdef PhysicalBone2D o = PhysicalBone2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_navigationlink2d(PyObject* other):
  cdef NavigationLink2D o = NavigationLink2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_fogmaterial(PyObject* other):
  cdef FogMaterial o = FogMaterial.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_bonemap(PyObject* other):
  cdef BoneMap o = BoneMap.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_label(PyObject* other):
  cdef Label o = Label.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_texture3d(PyObject* other):
  cdef Texture3D o = Texture3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_csgcombiner3d(PyObject* other):
  cdef CSGCombiner3D o = CSGCombiner3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_animationplayer(PyObject* other):
  cdef AnimationPlayer o = AnimationPlayer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_tilemappattern(PyObject* other):
  cdef TileMapPattern o = TileMapPattern.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_resourceuid(PyObject* other):
  cdef ResourceUID o = ResourceUID.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_vsplitcontainer(PyObject* other):
  cdef VSplitContainer o = VSplitContainer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_codeedit(PyObject* other):
  cdef CodeEdit o = CodeEdit.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_multiplayerapi(PyObject* other):
  cdef MultiplayerAPI o = MultiplayerAPI.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_tiledata(PyObject* other):
  cdef TileData o = TileData.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gltfanimation(PyObject* other):
  cdef GLTFAnimation o = GLTFAnimation.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_thread(PyObject* other):
  cdef Thread o = Thread.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_vflowcontainer(PyObject* other):
  cdef VFlowContainer o = VFlowContainer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_timer(PyObject* other):
  cdef Timer o = Timer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_vscrollbar(PyObject* other):
  cdef VScrollBar o = VScrollBar.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_pointlight2d(PyObject* other):
  cdef PointLight2D o = PointLight2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_slider(PyObject* other):
  cdef Slider o = Slider.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_curve2d(PyObject* other):
  cdef Curve2D o = Curve2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_animationnodesync(PyObject* other):
  cdef AnimationNodeSync o = AnimationNodeSync.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audioeffectfilter(PyObject* other):
  cdef AudioEffectFilter o = AudioEffectFilter.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_mutex(PyObject* other):
  cdef Mutex o = Mutex.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_texturelayered(PyObject* other):
  cdef TextureLayered o = TextureLayered.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_joint3d(PyObject* other):
  cdef Joint3D o = Joint3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audioeffectreverb(PyObject* other):
  cdef AudioEffectReverb o = AudioEffectReverb.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_animatablebody3d(PyObject* other):
  cdef AnimatableBody3D o = AnimatableBody3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_shape2d(PyObject* other):
  cdef Shape2D o = Shape2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_acceptdialog(PyObject* other):
  cdef AcceptDialog o = AcceptDialog.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_control(PyObject* other):
  cdef Control o = Control.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_lightmapper(PyObject* other):
  cdef Lightmapper o = Lightmapper.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_lightmapperrd(PyObject* other):
  cdef LightmapperRD o = LightmapperRD.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_rdsamplerstate(PyObject* other):
  cdef RDSamplerState o = RDSamplerState.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_packetpeerudp(PyObject* other):
  cdef PacketPeerUDP o = PacketPeerUDP.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audiobuslayout(PyObject* other):
  cdef AudioBusLayout o = AudioBusLayout.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_planemesh(PyObject* other):
  cdef PlaneMesh o = PlaneMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_styleboxempty(PyObject* other):
  cdef StyleBoxEmpty o = StyleBoxEmpty.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_fastnoiselite(PyObject* other):
  cdef FastNoiseLite o = FastNoiseLite.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audioeffect(PyObject* other):
  cdef AudioEffect o = AudioEffect.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_range(PyObject* other):
  cdef Range o = Range.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audioeffectdelay(PyObject* other):
  cdef AudioEffectDelay o = AudioEffectDelay.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_object(PyObject* other):
  cdef Object o = Object.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_astar2d(PyObject* other):
  cdef AStar2D o = AStar2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_centercontainer(PyObject* other):
  cdef CenterContainer o = CenterContainer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gltfphysicsbody(PyObject* other):
  cdef GLTFPhysicsBody o = GLTFPhysicsBody.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_tcpserver(PyObject* other):
  cdef TCPServer o = TCPServer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_missingnode(PyObject* other):
  cdef MissingNode o = MissingNode.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_textmesh(PyObject* other):
  cdef TextMesh o = TextMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_regexmatch(PyObject* other):
  cdef RegExMatch o = RegExMatch.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_navigationpolygon(PyObject* other):
  cdef NavigationPolygon o = NavigationPolygon.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_scriptcreatedialog(PyObject* other):
  cdef ScriptCreateDialog o = ScriptCreateDialog.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_pinjoint3d(PyObject* other):
  cdef PinJoint3D o = PinJoint3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_script(PyObject* other):
  cdef Script o = Script.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_hmaccontext(PyObject* other):
  cdef HMACContext o = HMACContext.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audioeffectamplify(PyObject* other):
  cdef AudioEffectAmplify o = AudioEffectAmplify.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_mesh(PyObject* other):
  cdef Mesh o = Mesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_xrorigin3d(PyObject* other):
  cdef XROrigin3D o = XROrigin3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_canvaslayer(PyObject* other):
  cdef CanvasLayer o = CanvasLayer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audioeffectpanner(PyObject* other):
  cdef AudioEffectPanner o = AudioEffectPanner.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gltfphysicsshape(PyObject* other):
  cdef GLTFPhysicsShape o = GLTFPhysicsShape.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_panelcontainer(PyObject* other):
  cdef PanelContainer o = PanelContainer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_camera3d(PyObject* other):
  cdef Camera3D o = Camera3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_openxripbinding(PyObject* other):
  cdef OpenXRIPBinding o = OpenXRIPBinding.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audioeffectphaser(PyObject* other):
  cdef AudioEffectPhaser o = AudioEffectPhaser.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_editorscriptpicker(PyObject* other):
  cdef EditorScriptPicker o = EditorScriptPicker.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_basebutton(PyObject* other):
  cdef BaseButton o = BaseButton.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_workerthreadpool(PyObject* other):
  cdef WorkerThreadPool o = WorkerThreadPool.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_inputeventaction(PyObject* other):
  cdef InputEventAction o = InputEventAction.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_cpuparticles2d(PyObject* other):
  cdef CPUParticles2D o = CPUParticles2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_collisionshape2d(PyObject* other):
  cdef CollisionShape2D o = CollisionShape2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_tabbar(PyObject* other):
  cdef TabBar o = TabBar.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audioeffecteq10(PyObject* other):
  cdef AudioEffectEQ10 o = AudioEffectEQ10.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_imageformatloader(PyObject* other):
  cdef ImageFormatLoader o = ImageFormatLoader.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_camera2d(PyObject* other):
  cdef Camera2D o = Camera2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_editorfilesystem(PyObject* other):
  cdef EditorFileSystem o = EditorFileSystem.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gltfnode(PyObject* other):
  cdef GLTFNode o = GLTFNode.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_scrollbar(PyObject* other):
  cdef ScrollBar o = ScrollBar.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_cameratexture(PyObject* other):
  cdef CameraTexture o = CameraTexture.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_font(PyObject* other):
  cdef Font o = Font.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_ribbontrailmesh(PyObject* other):
  cdef RibbonTrailMesh o = RibbonTrailMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_openxrhand(PyObject* other):
  cdef OpenXRHand o = OpenXRHand.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_engine(PyObject* other):
  cdef Engine o = Engine.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_tileset(PyObject* other):
  cdef TileSet o = TileSet.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_voxelgidata(PyObject* other):
  cdef VoxelGIData o = VoxelGIData.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_heightmapshape3d(PyObject* other):
  cdef HeightMapShape3D o = HeightMapShape3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_area2d(PyObject* other):
  cdef Area2D o = Area2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_labelsettings(PyObject* other):
  cdef LabelSettings o = LabelSettings.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_multimesh(PyObject* other):
  cdef MultiMesh o = MultiMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_rigidbody2d(PyObject* other):
  cdef RigidBody2D o = RigidBody2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audioeffecteq21(PyObject* other):
  cdef AudioEffectEQ21 o = AudioEffectEQ21.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_fogvolume(PyObject* other):
  cdef FogVolume o = FogVolume.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_lightmapprobe(PyObject* other):
  cdef LightmapProbe o = LightmapProbe.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_vehiclewheel3d(PyObject* other):
  cdef VehicleWheel3D o = VehicleWheel3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gltfskeleton(PyObject* other):
  cdef GLTFSkeleton o = GLTFSkeleton.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_pointmesh(PyObject* other):
  cdef PointMesh o = PointMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_upnp(PyObject* other):
  cdef UPNP o = UPNP.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_editorimportplugin(PyObject* other):
  cdef EditorImportPlugin o = EditorImportPlugin.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_fileaccess(PyObject* other):
  cdef FileAccess o = FileAccess.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeis(PyObject* other):
  cdef VisualShaderNodeIs o = VisualShaderNodeIs.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_popuppanel(PyObject* other):
  cdef PopupPanel o = PopupPanel.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_curve3d(PyObject* other):
  cdef Curve3D o = Curve3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_lightmapgidata(PyObject* other):
  cdef LightmapGIData o = LightmapGIData.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_skinreference(PyObject* other):
  cdef SkinReference o = SkinReference.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_shadermaterial(PyObject* other):
  cdef ShaderMaterial o = ShaderMaterial.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_shaderinclude(PyObject* other):
  cdef ShaderInclude o = ShaderInclude.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_csgsphere3d(PyObject* other):
  cdef CSGSphere3D o = CSGSphere3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_light3d(PyObject* other):
  cdef Light3D o = Light3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_gltfstate(PyObject* other):
  cdef GLTFState o = GLTFState.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_hflowcontainer(PyObject* other):
  cdef HFlowContainer o = HFlowContainer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_scenestate(PyObject* other):
  cdef SceneState o = SceneState.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audioeffecteq6(PyObject* other):
  cdef AudioEffectEQ6 o = AudioEffectEQ6.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_editorplugin(PyObject* other):
  cdef EditorPlugin o = EditorPlugin.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_hscrollbar(PyObject* other):
  cdef HScrollBar o = HScrollBar.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_buttongroup(PyObject* other):
  cdef ButtonGroup o = ButtonGroup.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_collisionobject3d(PyObject* other):
  cdef CollisionObject3D o = CollisionObject3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_skin(PyObject* other):
  cdef Skin o = Skin.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_xrcamera3d(PyObject* other):
  cdef XRCamera3D o = XRCamera3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_audiostream(PyObject* other):
  cdef AudioStream o = AudioStream.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_resourcesaver(PyObject* other):
  cdef ResourceSaver o = ResourceSaver.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_time(PyObject* other):
  cdef Time o = Time.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_csgcylinder3d(PyObject* other):
  cdef CSGCylinder3D o = CSGCylinder3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_projectsettings(PyObject* other):
  cdef ProjectSettings o = ProjectSettings.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_texture(PyObject* other):
  cdef Texture o = Texture.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_animationtree(PyObject* other):
  cdef AnimationTree o = AnimationTree.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_cpuparticles3d(PyObject* other):
  cdef CPUParticles3D o = CPUParticles3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_scriptextension(PyObject* other):
  cdef ScriptExtension o = ScriptExtension.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_scripteditorbase(PyObject* other):
  cdef ScriptEditorBase o = ScriptEditorBase.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_x509certificate(PyObject* other):
  cdef X509Certificate o = X509Certificate.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_cylindershape3d(PyObject* other):
  cdef CylinderShape3D o = CylinderShape3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_line2d(PyObject* other):
  cdef Line2D o = Line2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_streampeergzip(PyObject* other):
  cdef StreamPeerGZIP o = StreamPeerGZIP.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_tree(PyObject* other):
  cdef Tree o = Tree.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_standardmaterial3d(PyObject* other):
  cdef StandardMaterial3D o = StandardMaterial3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_packetpeerstream(PyObject* other):
  cdef PacketPeerStream o = PacketPeerStream.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_softbody3d(PyObject* other):
  cdef SoftBody3D o = SoftBody3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_rectangleshape2d(PyObject* other):
  cdef RectangleShape2D o = RectangleShape2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_world2d(PyObject* other):
  cdef World2D o = World2D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_texture2darray(PyObject* other):
  cdef Texture2DArray o = Texture2DArray.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_csgbox3d(PyObject* other):
  cdef CSGBox3D o = CSGBox3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_torusmesh(PyObject* other):
  cdef TorusMesh o = TorusMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_remotetransform3d(PyObject* other):
  cdef RemoteTransform3D o = RemoteTransform3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_decal(PyObject* other):
  cdef Decal o = Decal.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_margincontainer(PyObject* other):
  cdef MarginContainer o = MarginContainer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_viewport(PyObject* other):
  cdef Viewport o = Viewport.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_physicsbody3d(PyObject* other):
  cdef PhysicsBody3D o = PhysicsBody3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_fontfile(PyObject* other):
  cdef FontFile o = FontFile.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_moviewriter(PyObject* other):
  cdef MovieWriter o = MovieWriter.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_mobilevrinterface(PyObject* other):
  cdef MobileVRInterface o = MobileVRInterface.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_placeholdermesh(PyObject* other):
  cdef PlaceholderMesh o = PlaceholderMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_treeitem(PyObject* other):
  cdef TreeItem o = TreeItem.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_theme(PyObject* other):
  cdef Theme o = Theme.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_imagetexture(PyObject* other):
  cdef ImageTexture o = ImageTexture.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_stylebox(PyObject* other):
  cdef StyleBox o = StyleBox.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_editorfiledialog(PyObject* other):
  cdef EditorFileDialog o = EditorFileDialog.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_shapecast3d(PyObject* other):
  cdef ShapeCast3D o = ShapeCast3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_raycast3d(PyObject* other):
  cdef RayCast3D o = RayCast3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_textserverdummy(PyObject* other):
  cdef TextServerDummy o = TextServerDummy.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_textline(PyObject* other):
  cdef TextLine o = TextLine.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_capsuleshape3d(PyObject* other):
  cdef CapsuleShape3D o = CapsuleShape3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_visualshader(PyObject* other):
  cdef VisualShader o = VisualShader.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_rdshaderspirv(PyObject* other):
  cdef RDShaderSPIRV o = RDShaderSPIRV.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_editorspinslider(PyObject* other):
  cdef EditorSpinSlider o = EditorSpinSlider.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_geometry3d(PyObject* other):
  cdef Geometry3D o = Geometry3D.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_tabcontainer(PyObject* other):
  cdef TabContainer o = TabContainer.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_httpclient(PyObject* other):
  cdef HTTPClient o = HTTPClient.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o
cdef api PyObject* cast_to_tubetrailmesh(PyObject* other):
  cdef TubeTrailMesh o = TubeTrailMesh.cast(<Object>other)
  vals.append(o)
  return <PyObject*>o