# distutils: language=c++
from cpython cimport Py_INCREF, Py_DECREF, PyObject
vals = []
def clear_vals():
    global vals
    vals.clear()
from py4godot.classes.AESContext cimport *
from py4godot.classes.AStar2D cimport *
from py4godot.classes.AStar3D cimport *
from py4godot.classes.AStarGrid2D cimport *
from py4godot.classes.AcceptDialog cimport *
from py4godot.classes.AnimatableBody2D cimport *
from py4godot.classes.AnimatableBody3D cimport *
from py4godot.classes.AnimatedSprite2D cimport *
from py4godot.classes.AnimatedSprite3D cimport *
from py4godot.classes.AnimatedTexture cimport *
from py4godot.classes.Animation cimport *
from py4godot.classes.AnimationLibrary cimport *
from py4godot.classes.AnimationMixer cimport *
from py4godot.classes.AnimationNode cimport *
from py4godot.classes.AnimationNodeAdd2 cimport *
from py4godot.classes.AnimationNodeAdd3 cimport *
from py4godot.classes.AnimationNodeAnimation cimport *
from py4godot.classes.AnimationNodeBlend2 cimport *
from py4godot.classes.AnimationNodeBlend3 cimport *
from py4godot.classes.AnimationNodeBlendSpace1D cimport *
from py4godot.classes.AnimationNodeBlendSpace2D cimport *
from py4godot.classes.AnimationNodeBlendTree cimport *
from py4godot.classes.AnimationNodeExtension cimport *
from py4godot.classes.AnimationNodeOneShot cimport *
from py4godot.classes.AnimationNodeOutput cimport *
from py4godot.classes.AnimationNodeStateMachine cimport *
from py4godot.classes.AnimationNodeStateMachinePlayback cimport *
from py4godot.classes.AnimationNodeStateMachineTransition cimport *
from py4godot.classes.AnimationNodeSub2 cimport *
from py4godot.classes.AnimationNodeSync cimport *
from py4godot.classes.AnimationNodeTimeScale cimport *
from py4godot.classes.AnimationNodeTimeSeek cimport *
from py4godot.classes.AnimationNodeTransition cimport *
from py4godot.classes.AnimationPlayer cimport *
from py4godot.classes.AnimationRootNode cimport *
from py4godot.classes.AnimationTree cimport *
from py4godot.classes.Area2D cimport *
from py4godot.classes.Area3D cimport *
from py4godot.classes.ArrayMesh cimport *
from py4godot.classes.ArrayOccluder3D cimport *
from py4godot.classes.AspectRatioContainer cimport *
from py4godot.classes.AtlasTexture cimport *
from py4godot.classes.AudioBusLayout cimport *
from py4godot.classes.AudioEffect cimport *
from py4godot.classes.AudioEffectAmplify cimport *
from py4godot.classes.AudioEffectBandLimitFilter cimport *
from py4godot.classes.AudioEffectBandPassFilter cimport *
from py4godot.classes.AudioEffectCapture cimport *
from py4godot.classes.AudioEffectChorus cimport *
from py4godot.classes.AudioEffectCompressor cimport *
from py4godot.classes.AudioEffectDelay cimport *
from py4godot.classes.AudioEffectDistortion cimport *
from py4godot.classes.AudioEffectEQ cimport *
from py4godot.classes.AudioEffectEQ10 cimport *
from py4godot.classes.AudioEffectEQ21 cimport *
from py4godot.classes.AudioEffectEQ6 cimport *
from py4godot.classes.AudioEffectFilter cimport *
from py4godot.classes.AudioEffectHardLimiter cimport *
from py4godot.classes.AudioEffectHighPassFilter cimport *
from py4godot.classes.AudioEffectHighShelfFilter cimport *
from py4godot.classes.AudioEffectInstance cimport *
from py4godot.classes.AudioEffectLimiter cimport *
from py4godot.classes.AudioEffectLowPassFilter cimport *
from py4godot.classes.AudioEffectLowShelfFilter cimport *
from py4godot.classes.AudioEffectNotchFilter cimport *
from py4godot.classes.AudioEffectPanner cimport *
from py4godot.classes.AudioEffectPhaser cimport *
from py4godot.classes.AudioEffectPitchShift cimport *
from py4godot.classes.AudioEffectRecord cimport *
from py4godot.classes.AudioEffectReverb cimport *
from py4godot.classes.AudioEffectSpectrumAnalyzer cimport *
from py4godot.classes.AudioEffectSpectrumAnalyzerInstance cimport *
from py4godot.classes.AudioEffectStereoEnhance cimport *
from py4godot.classes.AudioListener2D cimport *
from py4godot.classes.AudioListener3D cimport *
from py4godot.classes.AudioSample cimport *
from py4godot.classes.AudioSamplePlayback cimport *
from py4godot.classes.AudioServer cimport *
from py4godot.classes.AudioStream cimport *
from py4godot.classes.AudioStreamGenerator cimport *
from py4godot.classes.AudioStreamGeneratorPlayback cimport *
from py4godot.classes.AudioStreamInteractive cimport *
from py4godot.classes.AudioStreamMP3 cimport *
from py4godot.classes.AudioStreamMicrophone cimport *
from py4godot.classes.AudioStreamOggVorbis cimport *
from py4godot.classes.AudioStreamPlayback cimport *
from py4godot.classes.AudioStreamPlaybackInteractive cimport *
from py4godot.classes.AudioStreamPlaybackOggVorbis cimport *
from py4godot.classes.AudioStreamPlaybackPlaylist cimport *
from py4godot.classes.AudioStreamPlaybackPolyphonic cimport *
from py4godot.classes.AudioStreamPlaybackResampled cimport *
from py4godot.classes.AudioStreamPlaybackSynchronized cimport *
from py4godot.classes.AudioStreamPlayer cimport *
from py4godot.classes.AudioStreamPlayer2D cimport *
from py4godot.classes.AudioStreamPlayer3D cimport *
from py4godot.classes.AudioStreamPlaylist cimport *
from py4godot.classes.AudioStreamPolyphonic cimport *
from py4godot.classes.AudioStreamRandomizer cimport *
from py4godot.classes.AudioStreamSynchronized cimport *
from py4godot.classes.AudioStreamWAV cimport *
from py4godot.classes.BackBufferCopy cimport *
from py4godot.classes.BaseButton cimport *
from py4godot.classes.BaseMaterial3D cimport *
from py4godot.classes.BitMap cimport *
from py4godot.classes.Bone2D cimport *
from py4godot.classes.BoneAttachment3D cimport *
from py4godot.classes.BoneMap cimport *
from py4godot.classes.BoxContainer cimport *
from py4godot.classes.BoxMesh cimport *
from py4godot.classes.BoxOccluder3D cimport *
from py4godot.classes.BoxShape3D cimport *
from py4godot.classes.Button cimport *
from py4godot.classes.ButtonGroup cimport *
from py4godot.classes.CPUParticles2D cimport *
from py4godot.classes.CPUParticles3D cimport *
from py4godot.classes.CSGBox3D cimport *
from py4godot.classes.CSGCombiner3D cimport *
from py4godot.classes.CSGCylinder3D cimport *
from py4godot.classes.CSGMesh3D cimport *
from py4godot.classes.CSGPolygon3D cimport *
from py4godot.classes.CSGPrimitive3D cimport *
from py4godot.classes.CSGShape3D cimport *
from py4godot.classes.CSGSphere3D cimport *
from py4godot.classes.CSGTorus3D cimport *
from py4godot.classes.CallbackTweener cimport *
from py4godot.classes.Camera2D cimport *
from py4godot.classes.Camera3D cimport *
from py4godot.classes.CameraAttributes cimport *
from py4godot.classes.CameraAttributesPhysical cimport *
from py4godot.classes.CameraAttributesPractical cimport *
from py4godot.classes.CameraFeed cimport *
from py4godot.classes.CameraServer cimport *
from py4godot.classes.CameraTexture cimport *
from py4godot.classes.CanvasGroup cimport *
from py4godot.classes.CanvasItem cimport *
from py4godot.classes.CanvasItemMaterial cimport *
from py4godot.classes.CanvasLayer cimport *
from py4godot.classes.CanvasModulate cimport *
from py4godot.classes.CanvasTexture cimport *
from py4godot.classes.CapsuleMesh cimport *
from py4godot.classes.CapsuleShape2D cimport *
from py4godot.classes.CapsuleShape3D cimport *
from py4godot.classes.CenterContainer cimport *
from py4godot.classes.CharFXTransform cimport *
from py4godot.classes.CharacterBody2D cimport *
from py4godot.classes.CharacterBody3D cimport *
from py4godot.classes.CheckBox cimport *
from py4godot.classes.CheckButton cimport *
from py4godot.classes.CircleShape2D cimport *
from py4godot.classes.ClassDB cimport *
from py4godot.classes.CodeEdit cimport *
from py4godot.classes.CodeHighlighter cimport *
from py4godot.classes.CollisionObject2D cimport *
from py4godot.classes.CollisionObject3D cimport *
from py4godot.classes.CollisionPolygon2D cimport *
from py4godot.classes.CollisionPolygon3D cimport *
from py4godot.classes.CollisionShape2D cimport *
from py4godot.classes.CollisionShape3D cimport *
from py4godot.classes.ColorPalette cimport *
from py4godot.classes.ColorPicker cimport *
from py4godot.classes.ColorPickerButton cimport *
from py4godot.classes.ColorRect cimport *
from py4godot.classes.Compositor cimport *
from py4godot.classes.CompositorEffect cimport *
from py4godot.classes.CompressedCubemap cimport *
from py4godot.classes.CompressedCubemapArray cimport *
from py4godot.classes.CompressedTexture2D cimport *
from py4godot.classes.CompressedTexture2DArray cimport *
from py4godot.classes.CompressedTexture3D cimport *
from py4godot.classes.CompressedTextureLayered cimport *
from py4godot.classes.ConcavePolygonShape2D cimport *
from py4godot.classes.ConcavePolygonShape3D cimport *
from py4godot.classes.ConeTwistJoint3D cimport *
from py4godot.classes.ConfigFile cimport *
from py4godot.classes.ConfirmationDialog cimport *
from py4godot.classes.Container cimport *
from py4godot.classes.Control cimport *
from py4godot.classes.ConvexPolygonShape2D cimport *
from py4godot.classes.ConvexPolygonShape3D cimport *
from py4godot.classes.Crypto cimport *
from py4godot.classes.CryptoKey cimport *
from py4godot.classes.Cubemap cimport *
from py4godot.classes.CubemapArray cimport *
from py4godot.classes.Curve cimport *
from py4godot.classes.Curve2D cimport *
from py4godot.classes.Curve3D cimport *
from py4godot.classes.CurveTexture cimport *
from py4godot.classes.CurveXYZTexture cimport *
from py4godot.classes.CylinderMesh cimport *
from py4godot.classes.CylinderShape3D cimport *
from py4godot.classes.DTLSServer cimport *
from py4godot.classes.DampedSpringJoint2D cimport *
from py4godot.classes.Decal cimport *
from py4godot.classes.DirAccess cimport *
from py4godot.classes.DirectionalLight2D cimport *
from py4godot.classes.DirectionalLight3D cimport *
from py4godot.classes.DisplayServer cimport *
from py4godot.classes.ENetConnection cimport *
from py4godot.classes.ENetMultiplayerPeer cimport *
from py4godot.classes.ENetPacketPeer cimport *
from py4godot.classes.EditorCommandPalette cimport *
from py4godot.classes.EditorContextMenuPlugin cimport *
from py4godot.classes.EditorDebuggerPlugin cimport *
from py4godot.classes.EditorDebuggerSession cimport *
from py4godot.classes.EditorExportPlatform cimport *
from py4godot.classes.EditorExportPlatformAndroid cimport *
from py4godot.classes.EditorExportPlatformExtension cimport *
from py4godot.classes.EditorExportPlatformIOS cimport *
from py4godot.classes.EditorExportPlatformLinuxBSD cimport *
from py4godot.classes.EditorExportPlatformMacOS cimport *
from py4godot.classes.EditorExportPlatformPC cimport *
from py4godot.classes.EditorExportPlatformWeb cimport *
from py4godot.classes.EditorExportPlatformWindows cimport *
from py4godot.classes.EditorExportPlugin cimport *
from py4godot.classes.EditorExportPreset cimport *
from py4godot.classes.EditorFeatureProfile cimport *
from py4godot.classes.EditorFileDialog cimport *
from py4godot.classes.EditorFileSystem cimport *
from py4godot.classes.EditorFileSystemDirectory cimport *
from py4godot.classes.EditorFileSystemImportFormatSupportQuery cimport *
from py4godot.classes.EditorImportPlugin cimport *
from py4godot.classes.EditorInspector cimport *
from py4godot.classes.EditorInspectorPlugin cimport *
from py4godot.classes.EditorInterface cimport *
from py4godot.classes.EditorNode3DGizmo cimport *
from py4godot.classes.EditorNode3DGizmoPlugin cimport *
from py4godot.classes.EditorPaths cimport *
from py4godot.classes.EditorPlugin cimport *
from py4godot.classes.EditorProperty cimport *
from py4godot.classes.EditorResourceConversionPlugin cimport *
from py4godot.classes.EditorResourcePicker cimport *
from py4godot.classes.EditorResourcePreview cimport *
from py4godot.classes.EditorResourcePreviewGenerator cimport *
from py4godot.classes.EditorResourceTooltipPlugin cimport *
from py4godot.classes.EditorSceneFormatImporter cimport *
from py4godot.classes.EditorSceneFormatImporterBlend cimport *
from py4godot.classes.EditorSceneFormatImporterFBX2GLTF cimport *
from py4godot.classes.EditorSceneFormatImporterGLTF cimport *
from py4godot.classes.EditorSceneFormatImporterUFBX cimport *
from py4godot.classes.EditorScenePostImport cimport *
from py4godot.classes.EditorScenePostImportPlugin cimport *
from py4godot.classes.EditorScript cimport *
from py4godot.classes.EditorScriptPicker cimport *
from py4godot.classes.EditorSelection cimport *
from py4godot.classes.EditorSettings cimport *
from py4godot.classes.EditorSpinSlider cimport *
from py4godot.classes.EditorSyntaxHighlighter cimport *
from py4godot.classes.EditorToaster cimport *
from py4godot.classes.EditorTranslationParserPlugin cimport *
from py4godot.classes.EditorUndoRedoManager cimport *
from py4godot.classes.EditorVCSInterface cimport *
from py4godot.classes.EncodedObjectAsID cimport *
from py4godot.classes.Engine cimport *
from py4godot.classes.EngineDebugger cimport *
from py4godot.classes.EngineProfiler cimport *
from py4godot.classes.Environment cimport *
from py4godot.classes.Expression cimport *
from py4godot.classes.ExternalTexture cimport *
from py4godot.classes.FBXDocument cimport *
from py4godot.classes.FBXState cimport *
from py4godot.classes.FastNoiseLite cimport *
from py4godot.classes.FileAccess cimport *
from py4godot.classes.FileDialog cimport *
from py4godot.classes.FileSystemDock cimport *
from py4godot.classes.FlowContainer cimport *
from py4godot.classes.FogMaterial cimport *
from py4godot.classes.FogVolume cimport *
from py4godot.classes.Font cimport *
from py4godot.classes.FontFile cimport *
from py4godot.classes.FontVariation cimport *
from py4godot.classes.FramebufferCacheRD cimport *
from py4godot.classes.GDExtension cimport *
from py4godot.classes.GDExtensionManager cimport *
from py4godot.classes.GDScript cimport *
from py4godot.classes.GDScriptSyntaxHighlighter cimport *
from py4godot.classes.GLTFAccessor cimport *
from py4godot.classes.GLTFAnimation cimport *
from py4godot.classes.GLTFBufferView cimport *
from py4godot.classes.GLTFCamera cimport *
from py4godot.classes.GLTFDocument cimport *
from py4godot.classes.GLTFDocumentExtension cimport *
from py4godot.classes.GLTFDocumentExtensionConvertImporterMesh cimport *
from py4godot.classes.GLTFLight cimport *
from py4godot.classes.GLTFMesh cimport *
from py4godot.classes.GLTFNode cimport *
from py4godot.classes.GLTFObjectModelProperty cimport *
from py4godot.classes.GLTFPhysicsBody cimport *
from py4godot.classes.GLTFPhysicsShape cimport *
from py4godot.classes.GLTFSkeleton cimport *
from py4godot.classes.GLTFSkin cimport *
from py4godot.classes.GLTFSpecGloss cimport *
from py4godot.classes.GLTFState cimport *
from py4godot.classes.GLTFTexture cimport *
from py4godot.classes.GLTFTextureSampler cimport *
from py4godot.classes.GPUParticles2D cimport *
from py4godot.classes.GPUParticles3D cimport *
from py4godot.classes.GPUParticlesAttractor3D cimport *
from py4godot.classes.GPUParticlesAttractorBox3D cimport *
from py4godot.classes.GPUParticlesAttractorSphere3D cimport *
from py4godot.classes.GPUParticlesAttractorVectorField3D cimport *
from py4godot.classes.GPUParticlesCollision3D cimport *
from py4godot.classes.GPUParticlesCollisionBox3D cimport *
from py4godot.classes.GPUParticlesCollisionHeightField3D cimport *
from py4godot.classes.GPUParticlesCollisionSDF3D cimport *
from py4godot.classes.GPUParticlesCollisionSphere3D cimport *
from py4godot.classes.Generic6DOFJoint3D cimport *
from py4godot.classes.Geometry2D cimport *
from py4godot.classes.Geometry3D cimport *
from py4godot.classes.GeometryInstance3D cimport *
from py4godot.classes.Gradient cimport *
from py4godot.classes.GradientTexture1D cimport *
from py4godot.classes.GradientTexture2D cimport *
from py4godot.classes.GraphEdit cimport *
from py4godot.classes.GraphElement cimport *
from py4godot.classes.GraphFrame cimport *
from py4godot.classes.GraphNode cimport *
from py4godot.classes.GridContainer cimport *
from py4godot.classes.GridMap cimport *
from py4godot.classes.GridMapEditorPlugin cimport *
from py4godot.classes.GrooveJoint2D cimport *
from py4godot.classes.HBoxContainer cimport *
from py4godot.classes.HFlowContainer cimport *
from py4godot.classes.HMACContext cimport *
from py4godot.classes.HScrollBar cimport *
from py4godot.classes.HSeparator cimport *
from py4godot.classes.HSlider cimport *
from py4godot.classes.HSplitContainer cimport *
from py4godot.classes.HTTPClient cimport *
from py4godot.classes.HTTPRequest cimport *
from py4godot.classes.HashingContext cimport *
from py4godot.classes.HeightMapShape3D cimport *
from py4godot.classes.HingeJoint3D cimport *
from py4godot.classes.IP cimport *
from py4godot.classes.Image cimport *
from py4godot.classes.ImageFormatLoader cimport *
from py4godot.classes.ImageFormatLoaderExtension cimport *
from py4godot.classes.ImageTexture cimport *
from py4godot.classes.ImageTexture3D cimport *
from py4godot.classes.ImageTextureLayered cimport *
from py4godot.classes.ImmediateMesh cimport *
from py4godot.classes.ImporterMesh cimport *
from py4godot.classes.ImporterMeshInstance3D cimport *
from py4godot.classes.Input cimport *
from py4godot.classes.InputEvent cimport *
from py4godot.classes.InputEventAction cimport *
from py4godot.classes.InputEventFromWindow cimport *
from py4godot.classes.InputEventGesture cimport *
from py4godot.classes.InputEventJoypadButton cimport *
from py4godot.classes.InputEventJoypadMotion cimport *
from py4godot.classes.InputEventKey cimport *
from py4godot.classes.InputEventMIDI cimport *
from py4godot.classes.InputEventMagnifyGesture cimport *
from py4godot.classes.InputEventMouse cimport *
from py4godot.classes.InputEventMouseButton cimport *
from py4godot.classes.InputEventMouseMotion cimport *
from py4godot.classes.InputEventPanGesture cimport *
from py4godot.classes.InputEventScreenDrag cimport *
from py4godot.classes.InputEventScreenTouch cimport *
from py4godot.classes.InputEventShortcut cimport *
from py4godot.classes.InputEventWithModifiers cimport *
from py4godot.classes.InputMap cimport *
from py4godot.classes.InstancePlaceholder cimport *
from py4godot.classes.IntervalTweener cimport *
from py4godot.classes.ItemList cimport *
from py4godot.classes.JNISingleton cimport *
from py4godot.classes.JSON cimport *
from py4godot.classes.JSONRPC cimport *
from py4godot.classes.JavaClass cimport *
from py4godot.classes.JavaClassWrapper cimport *
from py4godot.classes.JavaObject cimport *
from py4godot.classes.JavaScriptBridge cimport *
from py4godot.classes.JavaScriptObject cimport *
from py4godot.classes.Joint2D cimport *
from py4godot.classes.Joint3D cimport *
from py4godot.classes.KinematicCollision2D cimport *
from py4godot.classes.KinematicCollision3D cimport *
from py4godot.classes.Label cimport *
from py4godot.classes.Label3D cimport *
from py4godot.classes.LabelSettings cimport *
from py4godot.classes.Light2D cimport *
from py4godot.classes.Light3D cimport *
from py4godot.classes.LightOccluder2D cimport *
from py4godot.classes.LightmapGI cimport *
from py4godot.classes.LightmapGIData cimport *
from py4godot.classes.LightmapProbe cimport *
from py4godot.classes.Lightmapper cimport *
from py4godot.classes.LightmapperRD cimport *
from py4godot.classes.Line2D cimport *
from py4godot.classes.LineEdit cimport *
from py4godot.classes.LinkButton cimport *
from py4godot.classes.LookAtModifier3D cimport *
from py4godot.classes.MainLoop cimport *
from py4godot.classes.MarginContainer cimport *
from py4godot.classes.Marker2D cimport *
from py4godot.classes.Marker3D cimport *
from py4godot.classes.Marshalls cimport *
from py4godot.classes.Material cimport *
from py4godot.classes.MenuBar cimport *
from py4godot.classes.MenuButton cimport *
from py4godot.classes.Mesh cimport *
from py4godot.classes.MeshConvexDecompositionSettings cimport *
from py4godot.classes.MeshDataTool cimport *
from py4godot.classes.MeshInstance2D cimport *
from py4godot.classes.MeshInstance3D cimport *
from py4godot.classes.MeshLibrary cimport *
from py4godot.classes.MeshTexture cimport *
from py4godot.classes.MethodTweener cimport *
from py4godot.classes.MissingNode cimport *
from py4godot.classes.MissingResource cimport *
from py4godot.classes.MobileVRInterface cimport *
from py4godot.classes.MovieWriter cimport *
from py4godot.classes.MultiMesh cimport *
from py4godot.classes.MultiMeshInstance2D cimport *
from py4godot.classes.MultiMeshInstance3D cimport *
from py4godot.classes.MultiplayerAPI cimport *
from py4godot.classes.MultiplayerAPIExtension cimport *
from py4godot.classes.MultiplayerPeer cimport *
from py4godot.classes.MultiplayerPeerExtension cimport *
from py4godot.classes.MultiplayerSpawner cimport *
from py4godot.classes.MultiplayerSynchronizer cimport *
from py4godot.classes.Mutex cimport *
from py4godot.classes.NativeMenu cimport *
from py4godot.classes.NavigationAgent2D cimport *
from py4godot.classes.NavigationAgent3D cimport *
from py4godot.classes.NavigationLink2D cimport *
from py4godot.classes.NavigationLink3D cimport *
from py4godot.classes.NavigationMesh cimport *
from py4godot.classes.NavigationMeshGenerator cimport *
from py4godot.classes.NavigationMeshSourceGeometryData2D cimport *
from py4godot.classes.NavigationMeshSourceGeometryData3D cimport *
from py4godot.classes.NavigationObstacle2D cimport *
from py4godot.classes.NavigationObstacle3D cimport *
from py4godot.classes.NavigationPathQueryParameters2D cimport *
from py4godot.classes.NavigationPathQueryParameters3D cimport *
from py4godot.classes.NavigationPathQueryResult2D cimport *
from py4godot.classes.NavigationPathQueryResult3D cimport *
from py4godot.classes.NavigationPolygon cimport *
from py4godot.classes.NavigationRegion2D cimport *
from py4godot.classes.NavigationRegion3D cimport *
from py4godot.classes.NavigationServer2D cimport *
from py4godot.classes.NavigationServer3D cimport *
from py4godot.classes.NinePatchRect cimport *
from py4godot.classes.Node cimport *
from py4godot.classes.Node2D cimport *
from py4godot.classes.Node3D cimport *
from py4godot.classes.Node3DGizmo cimport *
from py4godot.classes.Noise cimport *
from py4godot.classes.NoiseTexture2D cimport *
from py4godot.classes.NoiseTexture3D cimport *
from py4godot.classes.ORMMaterial3D cimport *
from py4godot.classes.OS cimport *
from py4godot.classes.Object cimport *
from py4godot.classes.Occluder3D cimport *
from py4godot.classes.OccluderInstance3D cimport *
from py4godot.classes.OccluderPolygon2D cimport *
from py4godot.classes.OfflineMultiplayerPeer cimport *
from py4godot.classes.OggPacketSequence cimport *
from py4godot.classes.OggPacketSequencePlayback cimport *
from py4godot.classes.OmniLight3D cimport *
from py4godot.classes.OpenXRAPIExtension cimport *
from py4godot.classes.OpenXRAction cimport *
from py4godot.classes.OpenXRActionBindingModifier cimport *
from py4godot.classes.OpenXRActionMap cimport *
from py4godot.classes.OpenXRActionSet cimport *
from py4godot.classes.OpenXRAnalogThresholdModifier cimport *
from py4godot.classes.OpenXRBindingModifier cimport *
from py4godot.classes.OpenXRBindingModifierEditor cimport *
from py4godot.classes.OpenXRCompositionLayer cimport *
from py4godot.classes.OpenXRCompositionLayerCylinder cimport *
from py4godot.classes.OpenXRCompositionLayerEquirect cimport *
from py4godot.classes.OpenXRCompositionLayerQuad cimport *
from py4godot.classes.OpenXRDpadBindingModifier cimport *
from py4godot.classes.OpenXRExtensionWrapperExtension cimport *
from py4godot.classes.OpenXRHand cimport *
from py4godot.classes.OpenXRHapticBase cimport *
from py4godot.classes.OpenXRHapticVibration cimport *
from py4godot.classes.OpenXRIPBinding cimport *
from py4godot.classes.OpenXRIPBindingModifier cimport *
from py4godot.classes.OpenXRInteractionProfile cimport *
from py4godot.classes.OpenXRInteractionProfileEditor cimport *
from py4godot.classes.OpenXRInteractionProfileEditorBase cimport *
from py4godot.classes.OpenXRInteractionProfileMetadata cimport *
from py4godot.classes.OpenXRInterface cimport *
from py4godot.classes.OpenXRVisibilityMask cimport *
from py4godot.classes.OptimizedTranslation cimport *
from py4godot.classes.OptionButton cimport *
from py4godot.classes.PCKPacker cimport *
from py4godot.classes.PackedDataContainer cimport *
from py4godot.classes.PackedDataContainerRef cimport *
from py4godot.classes.PackedScene cimport *
from py4godot.classes.PacketPeer cimport *
from py4godot.classes.PacketPeerDTLS cimport *
from py4godot.classes.PacketPeerExtension cimport *
from py4godot.classes.PacketPeerStream cimport *
from py4godot.classes.PacketPeerUDP cimport *
from py4godot.classes.Panel cimport *
from py4godot.classes.PanelContainer cimport *
from py4godot.classes.PanoramaSkyMaterial cimport *
from py4godot.classes.Parallax2D cimport *
from py4godot.classes.ParallaxBackground cimport *
from py4godot.classes.ParallaxLayer cimport *
from py4godot.classes.ParticleProcessMaterial cimport *
from py4godot.classes.Path2D cimport *
from py4godot.classes.Path3D cimport *
from py4godot.classes.PathFollow2D cimport *
from py4godot.classes.PathFollow3D cimport *
from py4godot.classes.Performance cimport *
from py4godot.classes.PhysicalBone2D cimport *
from py4godot.classes.PhysicalBone3D cimport *
from py4godot.classes.PhysicalBoneSimulator3D cimport *
from py4godot.classes.PhysicalSkyMaterial cimport *
from py4godot.classes.PhysicsBody2D cimport *
from py4godot.classes.PhysicsBody3D cimport *
from py4godot.classes.PhysicsDirectBodyState2D cimport *
from py4godot.classes.PhysicsDirectBodyState2DExtension cimport *
from py4godot.classes.PhysicsDirectBodyState3D cimport *
from py4godot.classes.PhysicsDirectBodyState3DExtension cimport *
from py4godot.classes.PhysicsDirectSpaceState2D cimport *
from py4godot.classes.PhysicsDirectSpaceState2DExtension cimport *
from py4godot.classes.PhysicsDirectSpaceState3D cimport *
from py4godot.classes.PhysicsDirectSpaceState3DExtension cimport *
from py4godot.classes.PhysicsMaterial cimport *
from py4godot.classes.PhysicsPointQueryParameters2D cimport *
from py4godot.classes.PhysicsPointQueryParameters3D cimport *
from py4godot.classes.PhysicsRayQueryParameters2D cimport *
from py4godot.classes.PhysicsRayQueryParameters3D cimport *
from py4godot.classes.PhysicsServer2D cimport *
from py4godot.classes.PhysicsServer2DExtension cimport *
from py4godot.classes.PhysicsServer2DManager cimport *
from py4godot.classes.PhysicsServer3D cimport *
from py4godot.classes.PhysicsServer3DExtension cimport *
from py4godot.classes.PhysicsServer3DManager cimport *
from py4godot.classes.PhysicsServer3DRenderingServerHandler cimport *
from py4godot.classes.PhysicsShapeQueryParameters2D cimport *
from py4godot.classes.PhysicsShapeQueryParameters3D cimport *
from py4godot.classes.PhysicsTestMotionParameters2D cimport *
from py4godot.classes.PhysicsTestMotionParameters3D cimport *
from py4godot.classes.PhysicsTestMotionResult2D cimport *
from py4godot.classes.PhysicsTestMotionResult3D cimport *
from py4godot.classes.PinJoint2D cimport *
from py4godot.classes.PinJoint3D cimport *
from py4godot.classes.PlaceholderCubemap cimport *
from py4godot.classes.PlaceholderCubemapArray cimport *
from py4godot.classes.PlaceholderMaterial cimport *
from py4godot.classes.PlaceholderMesh cimport *
from py4godot.classes.PlaceholderTexture2D cimport *
from py4godot.classes.PlaceholderTexture2DArray cimport *
from py4godot.classes.PlaceholderTexture3D cimport *
from py4godot.classes.PlaceholderTextureLayered cimport *
from py4godot.classes.PlaneMesh cimport *
from py4godot.classes.PointLight2D cimport *
from py4godot.classes.PointMesh cimport *
from py4godot.classes.Polygon2D cimport *
from py4godot.classes.PolygonOccluder3D cimport *
from py4godot.classes.PolygonPathFinder cimport *
from py4godot.classes.Popup cimport *
from py4godot.classes.PopupMenu cimport *
from py4godot.classes.PopupPanel cimport *
from py4godot.classes.PortableCompressedTexture2D cimport *
from py4godot.classes.PrimitiveMesh cimport *
from py4godot.classes.PrismMesh cimport *
from py4godot.classes.ProceduralSkyMaterial cimport *
from py4godot.classes.ProgressBar cimport *
from py4godot.classes.ProjectSettings cimport *
from py4godot.classes.PropertyTweener cimport *
from py4godot.classes.QuadMesh cimport *
from py4godot.classes.QuadOccluder3D cimport *
from py4godot.classes.RDAttachmentFormat cimport *
from py4godot.classes.RDFramebufferPass cimport *
from py4godot.classes.RDPipelineColorBlendState cimport *
from py4godot.classes.RDPipelineColorBlendStateAttachment cimport *
from py4godot.classes.RDPipelineDepthStencilState cimport *
from py4godot.classes.RDPipelineMultisampleState cimport *
from py4godot.classes.RDPipelineRasterizationState cimport *
from py4godot.classes.RDPipelineSpecializationConstant cimport *
from py4godot.classes.RDSamplerState cimport *
from py4godot.classes.RDShaderFile cimport *
from py4godot.classes.RDShaderSPIRV cimport *
from py4godot.classes.RDShaderSource cimport *
from py4godot.classes.RDTextureFormat cimport *
from py4godot.classes.RDTextureView cimport *
from py4godot.classes.RDUniform cimport *
from py4godot.classes.RDVertexAttribute cimport *
from py4godot.classes.RandomNumberGenerator cimport *
from py4godot.classes.Range cimport *
from py4godot.classes.RayCast2D cimport *
from py4godot.classes.RayCast3D cimport *
from py4godot.classes.RectangleShape2D cimport *
from py4godot.classes.RefCounted cimport *
from py4godot.classes.ReferenceRect cimport *
from py4godot.classes.ReflectionProbe cimport *
from py4godot.classes.RegEx cimport *
from py4godot.classes.RegExMatch cimport *
from py4godot.classes.RemoteTransform2D cimport *
from py4godot.classes.RemoteTransform3D cimport *
from py4godot.classes.RenderData cimport *
from py4godot.classes.RenderDataExtension cimport *
from py4godot.classes.RenderDataRD cimport *
from py4godot.classes.RenderSceneBuffers cimport *
from py4godot.classes.RenderSceneBuffersConfiguration cimport *
from py4godot.classes.RenderSceneBuffersExtension cimport *
from py4godot.classes.RenderSceneBuffersRD cimport *
from py4godot.classes.RenderSceneData cimport *
from py4godot.classes.RenderSceneDataExtension cimport *
from py4godot.classes.RenderSceneDataRD cimport *
from py4godot.classes.RenderingDevice cimport *
from py4godot.classes.RenderingServer cimport *
from py4godot.classes.Resource cimport *
from py4godot.classes.ResourceFormatLoader cimport *
from py4godot.classes.ResourceFormatSaver cimport *
from py4godot.classes.ResourceImporter cimport *
from py4godot.classes.ResourceImporterBMFont cimport *
from py4godot.classes.ResourceImporterBitMap cimport *
from py4godot.classes.ResourceImporterCSVTranslation cimport *
from py4godot.classes.ResourceImporterDynamicFont cimport *
from py4godot.classes.ResourceImporterImage cimport *
from py4godot.classes.ResourceImporterImageFont cimport *
from py4godot.classes.ResourceImporterLayeredTexture cimport *
from py4godot.classes.ResourceImporterMP3 cimport *
from py4godot.classes.ResourceImporterOBJ cimport *
from py4godot.classes.ResourceImporterOggVorbis cimport *
from py4godot.classes.ResourceImporterScene cimport *
from py4godot.classes.ResourceImporterShaderFile cimport *
from py4godot.classes.ResourceImporterTexture cimport *
from py4godot.classes.ResourceImporterTextureAtlas cimport *
from py4godot.classes.ResourceImporterWAV cimport *
from py4godot.classes.ResourceLoader cimport *
from py4godot.classes.ResourcePreloader cimport *
from py4godot.classes.ResourceSaver cimport *
from py4godot.classes.ResourceUID cimport *
from py4godot.classes.RetargetModifier3D cimport *
from py4godot.classes.RibbonTrailMesh cimport *
from py4godot.classes.RichTextEffect cimport *
from py4godot.classes.RichTextLabel cimport *
from py4godot.classes.RigidBody2D cimport *
from py4godot.classes.RigidBody3D cimport *
from py4godot.classes.RootMotionView cimport *
from py4godot.classes.SceneMultiplayer cimport *
from py4godot.classes.SceneReplicationConfig cimport *
from py4godot.classes.SceneState cimport *
from py4godot.classes.SceneTree cimport *
from py4godot.classes.SceneTreeTimer cimport *
from py4godot.classes.Script cimport *
from py4godot.classes.ScriptCreateDialog cimport *
from py4godot.classes.ScriptEditor cimport *
from py4godot.classes.ScriptEditorBase cimport *
from py4godot.classes.ScriptExtension cimport *
from py4godot.classes.ScriptLanguage cimport *
from py4godot.classes.ScriptLanguageExtension cimport *
from py4godot.classes.ScrollBar cimport *
from py4godot.classes.ScrollContainer cimport *
from py4godot.classes.SegmentShape2D cimport *
from py4godot.classes.Semaphore cimport *
from py4godot.classes.SeparationRayShape2D cimport *
from py4godot.classes.SeparationRayShape3D cimport *
from py4godot.classes.Separator cimport *
from py4godot.classes.Shader cimport *
from py4godot.classes.ShaderGlobalsOverride cimport *
from py4godot.classes.ShaderInclude cimport *
from py4godot.classes.ShaderIncludeDB cimport *
from py4godot.classes.ShaderMaterial cimport *
from py4godot.classes.Shape2D cimport *
from py4godot.classes.Shape3D cimport *
from py4godot.classes.ShapeCast2D cimport *
from py4godot.classes.ShapeCast3D cimport *
from py4godot.classes.Shortcut cimport *
from py4godot.classes.Skeleton2D cimport *
from py4godot.classes.Skeleton3D cimport *
from py4godot.classes.SkeletonIK3D cimport *
from py4godot.classes.SkeletonModification2D cimport *
from py4godot.classes.SkeletonModification2DCCDIK cimport *
from py4godot.classes.SkeletonModification2DFABRIK cimport *
from py4godot.classes.SkeletonModification2DJiggle cimport *
from py4godot.classes.SkeletonModification2DLookAt cimport *
from py4godot.classes.SkeletonModification2DPhysicalBones cimport *
from py4godot.classes.SkeletonModification2DStackHolder cimport *
from py4godot.classes.SkeletonModification2DTwoBoneIK cimport *
from py4godot.classes.SkeletonModificationStack2D cimport *
from py4godot.classes.SkeletonModifier3D cimport *
from py4godot.classes.SkeletonProfile cimport *
from py4godot.classes.SkeletonProfileHumanoid cimport *
from py4godot.classes.Skin cimport *
from py4godot.classes.SkinReference cimport *
from py4godot.classes.Sky cimport *
from py4godot.classes.Slider cimport *
from py4godot.classes.SliderJoint3D cimport *
from py4godot.classes.SoftBody3D cimport *
from py4godot.classes.SphereMesh cimport *
from py4godot.classes.SphereOccluder3D cimport *
from py4godot.classes.SphereShape3D cimport *
from py4godot.classes.SpinBox cimport *
from py4godot.classes.SplitContainer cimport *
from py4godot.classes.SpotLight3D cimport *
from py4godot.classes.SpringArm3D cimport *
from py4godot.classes.SpringBoneCollision3D cimport *
from py4godot.classes.SpringBoneCollisionCapsule3D cimport *
from py4godot.classes.SpringBoneCollisionPlane3D cimport *
from py4godot.classes.SpringBoneCollisionSphere3D cimport *
from py4godot.classes.SpringBoneSimulator3D cimport *
from py4godot.classes.Sprite2D cimport *
from py4godot.classes.Sprite3D cimport *
from py4godot.classes.SpriteBase3D cimport *
from py4godot.classes.SpriteFrames cimport *
from py4godot.classes.StandardMaterial3D cimport *
from py4godot.classes.StaticBody2D cimport *
from py4godot.classes.StaticBody3D cimport *
from py4godot.classes.StatusIndicator cimport *
from py4godot.classes.StreamPeer cimport *
from py4godot.classes.StreamPeerBuffer cimport *
from py4godot.classes.StreamPeerExtension cimport *
from py4godot.classes.StreamPeerGZIP cimport *
from py4godot.classes.StreamPeerTCP cimport *
from py4godot.classes.StreamPeerTLS cimport *
from py4godot.classes.StyleBox cimport *
from py4godot.classes.StyleBoxEmpty cimport *
from py4godot.classes.StyleBoxFlat cimport *
from py4godot.classes.StyleBoxLine cimport *
from py4godot.classes.StyleBoxTexture cimport *
from py4godot.classes.SubViewport cimport *
from py4godot.classes.SubViewportContainer cimport *
from py4godot.classes.SubtweenTweener cimport *
from py4godot.classes.SurfaceTool cimport *
from py4godot.classes.SyntaxHighlighter cimport *
from py4godot.classes.SystemFont cimport *
from py4godot.classes.TCPServer cimport *
from py4godot.classes.TLSOptions cimport *
from py4godot.classes.TabBar cimport *
from py4godot.classes.TabContainer cimport *
from py4godot.classes.TextEdit cimport *
from py4godot.classes.TextLine cimport *
from py4godot.classes.TextMesh cimport *
from py4godot.classes.TextParagraph cimport *
from py4godot.classes.TextServer cimport *
from py4godot.classes.TextServerAdvanced cimport *
from py4godot.classes.TextServerDummy cimport *
from py4godot.classes.TextServerExtension cimport *
from py4godot.classes.TextServerManager cimport *
from py4godot.classes.Texture cimport *
from py4godot.classes.Texture2D cimport *
from py4godot.classes.Texture2DArray cimport *
from py4godot.classes.Texture2DArrayRD cimport *
from py4godot.classes.Texture2DRD cimport *
from py4godot.classes.Texture3D cimport *
from py4godot.classes.Texture3DRD cimport *
from py4godot.classes.TextureButton cimport *
from py4godot.classes.TextureCubemapArrayRD cimport *
from py4godot.classes.TextureCubemapRD cimport *
from py4godot.classes.TextureLayered cimport *
from py4godot.classes.TextureLayeredRD cimport *
from py4godot.classes.TextureProgressBar cimport *
from py4godot.classes.TextureRect cimport *
from py4godot.classes.Theme cimport *
from py4godot.classes.ThemeDB cimport *
from py4godot.classes.Thread cimport *
from py4godot.classes.TileData cimport *
from py4godot.classes.TileMap cimport *
from py4godot.classes.TileMapLayer cimport *
from py4godot.classes.TileMapPattern cimport *
from py4godot.classes.TileSet cimport *
from py4godot.classes.TileSetAtlasSource cimport *
from py4godot.classes.TileSetScenesCollectionSource cimport *
from py4godot.classes.TileSetSource cimport *
from py4godot.classes.Time cimport *
from py4godot.classes.Timer cimport *
from py4godot.classes.TorusMesh cimport *
from py4godot.classes.TouchScreenButton cimport *
from py4godot.classes.Translation cimport *
from py4godot.classes.TranslationDomain cimport *
from py4godot.classes.TranslationServer cimport *
from py4godot.classes.Tree cimport *
from py4godot.classes.TreeItem cimport *
from py4godot.classes.TriangleMesh cimport *
from py4godot.classes.TubeTrailMesh cimport *
from py4godot.classes.Tween cimport *
from py4godot.classes.Tweener cimport *
from py4godot.classes.UDPServer cimport *
from py4godot.classes.UPNP cimport *
from py4godot.classes.UPNPDevice cimport *
from py4godot.classes.UndoRedo cimport *
from py4godot.classes.UniformSetCacheRD cimport *
from py4godot.classes.VBoxContainer cimport *
from py4godot.classes.VFlowContainer cimport *
from py4godot.classes.VScrollBar cimport *
from py4godot.classes.VSeparator cimport *
from py4godot.classes.VSlider cimport *
from py4godot.classes.VSplitContainer cimport *
from py4godot.classes.VehicleBody3D cimport *
from py4godot.classes.VehicleWheel3D cimport *
from py4godot.classes.VideoStream cimport *
from py4godot.classes.VideoStreamPlayback cimport *
from py4godot.classes.VideoStreamPlayer cimport *
from py4godot.classes.VideoStreamTheora cimport *
from py4godot.classes.Viewport cimport *
from py4godot.classes.ViewportTexture cimport *
from py4godot.classes.VisibleOnScreenEnabler2D cimport *
from py4godot.classes.VisibleOnScreenEnabler3D cimport *
from py4godot.classes.VisibleOnScreenNotifier2D cimport *
from py4godot.classes.VisibleOnScreenNotifier3D cimport *
from py4godot.classes.VisualInstance3D cimport *
from py4godot.classes.VisualShader cimport *
from py4godot.classes.VisualShaderNode cimport *
from py4godot.classes.VisualShaderNodeBillboard cimport *
from py4godot.classes.VisualShaderNodeBooleanConstant cimport *
from py4godot.classes.VisualShaderNodeBooleanParameter cimport *
from py4godot.classes.VisualShaderNodeClamp cimport *
from py4godot.classes.VisualShaderNodeColorConstant cimport *
from py4godot.classes.VisualShaderNodeColorFunc cimport *
from py4godot.classes.VisualShaderNodeColorOp cimport *
from py4godot.classes.VisualShaderNodeColorParameter cimport *
from py4godot.classes.VisualShaderNodeComment cimport *
from py4godot.classes.VisualShaderNodeCompare cimport *
from py4godot.classes.VisualShaderNodeConstant cimport *
from py4godot.classes.VisualShaderNodeCubemap cimport *
from py4godot.classes.VisualShaderNodeCubemapParameter cimport *
from py4godot.classes.VisualShaderNodeCurveTexture cimport *
from py4godot.classes.VisualShaderNodeCurveXYZTexture cimport *
from py4godot.classes.VisualShaderNodeCustom cimport *
from py4godot.classes.VisualShaderNodeDerivativeFunc cimport *
from py4godot.classes.VisualShaderNodeDeterminant cimport *
from py4godot.classes.VisualShaderNodeDistanceFade cimport *
from py4godot.classes.VisualShaderNodeDotProduct cimport *
from py4godot.classes.VisualShaderNodeExpression cimport *
from py4godot.classes.VisualShaderNodeFaceForward cimport *
from py4godot.classes.VisualShaderNodeFloatConstant cimport *
from py4godot.classes.VisualShaderNodeFloatFunc cimport *
from py4godot.classes.VisualShaderNodeFloatOp cimport *
from py4godot.classes.VisualShaderNodeFloatParameter cimport *
from py4godot.classes.VisualShaderNodeFrame cimport *
from py4godot.classes.VisualShaderNodeFresnel cimport *
from py4godot.classes.VisualShaderNodeGlobalExpression cimport *
from py4godot.classes.VisualShaderNodeGroupBase cimport *
from py4godot.classes.VisualShaderNodeIf cimport *
from py4godot.classes.VisualShaderNodeInput cimport *
from py4godot.classes.VisualShaderNodeIntConstant cimport *
from py4godot.classes.VisualShaderNodeIntFunc cimport *
from py4godot.classes.VisualShaderNodeIntOp cimport *
from py4godot.classes.VisualShaderNodeIntParameter cimport *
from py4godot.classes.VisualShaderNodeIs cimport *
from py4godot.classes.VisualShaderNodeLinearSceneDepth cimport *
from py4godot.classes.VisualShaderNodeMix cimport *
from py4godot.classes.VisualShaderNodeMultiplyAdd cimport *
from py4godot.classes.VisualShaderNodeOuterProduct cimport *
from py4godot.classes.VisualShaderNodeOutput cimport *
from py4godot.classes.VisualShaderNodeParameter cimport *
from py4godot.classes.VisualShaderNodeParameterRef cimport *
from py4godot.classes.VisualShaderNodeParticleAccelerator cimport *
from py4godot.classes.VisualShaderNodeParticleBoxEmitter cimport *
from py4godot.classes.VisualShaderNodeParticleConeVelocity cimport *
from py4godot.classes.VisualShaderNodeParticleEmit cimport *
from py4godot.classes.VisualShaderNodeParticleEmitter cimport *
from py4godot.classes.VisualShaderNodeParticleMeshEmitter cimport *
from py4godot.classes.VisualShaderNodeParticleMultiplyByAxisAngle cimport *
from py4godot.classes.VisualShaderNodeParticleOutput cimport *
from py4godot.classes.VisualShaderNodeParticleRandomness cimport *
from py4godot.classes.VisualShaderNodeParticleRingEmitter cimport *
from py4godot.classes.VisualShaderNodeParticleSphereEmitter cimport *
from py4godot.classes.VisualShaderNodeProximityFade cimport *
from py4godot.classes.VisualShaderNodeRandomRange cimport *
from py4godot.classes.VisualShaderNodeRemap cimport *
from py4godot.classes.VisualShaderNodeReroute cimport *
from py4godot.classes.VisualShaderNodeResizableBase cimport *
from py4godot.classes.VisualShaderNodeRotationByAxis cimport *
from py4godot.classes.VisualShaderNodeSDFRaymarch cimport *
from py4godot.classes.VisualShaderNodeSDFToScreenUV cimport *
from py4godot.classes.VisualShaderNodeSample3D cimport *
from py4godot.classes.VisualShaderNodeScreenNormalWorldSpace cimport *
from py4godot.classes.VisualShaderNodeScreenUVToSDF cimport *
from py4godot.classes.VisualShaderNodeSmoothStep cimport *
from py4godot.classes.VisualShaderNodeStep cimport *
from py4godot.classes.VisualShaderNodeSwitch cimport *
from py4godot.classes.VisualShaderNodeTexture cimport *
from py4godot.classes.VisualShaderNodeTexture2DArray cimport *
from py4godot.classes.VisualShaderNodeTexture2DArrayParameter cimport *
from py4godot.classes.VisualShaderNodeTexture2DParameter cimport *
from py4godot.classes.VisualShaderNodeTexture3D cimport *
from py4godot.classes.VisualShaderNodeTexture3DParameter cimport *
from py4godot.classes.VisualShaderNodeTextureParameter cimport *
from py4godot.classes.VisualShaderNodeTextureParameterTriplanar cimport *
from py4godot.classes.VisualShaderNodeTextureSDF cimport *
from py4godot.classes.VisualShaderNodeTextureSDFNormal cimport *
from py4godot.classes.VisualShaderNodeTransformCompose cimport *
from py4godot.classes.VisualShaderNodeTransformConstant cimport *
from py4godot.classes.VisualShaderNodeTransformDecompose cimport *
from py4godot.classes.VisualShaderNodeTransformFunc cimport *
from py4godot.classes.VisualShaderNodeTransformOp cimport *
from py4godot.classes.VisualShaderNodeTransformParameter cimport *
from py4godot.classes.VisualShaderNodeTransformVecMult cimport *
from py4godot.classes.VisualShaderNodeUIntConstant cimport *
from py4godot.classes.VisualShaderNodeUIntFunc cimport *
from py4godot.classes.VisualShaderNodeUIntOp cimport *
from py4godot.classes.VisualShaderNodeUIntParameter cimport *
from py4godot.classes.VisualShaderNodeUVFunc cimport *
from py4godot.classes.VisualShaderNodeUVPolarCoord cimport *
from py4godot.classes.VisualShaderNodeVarying cimport *
from py4godot.classes.VisualShaderNodeVaryingGetter cimport *
from py4godot.classes.VisualShaderNodeVaryingSetter cimport *
from py4godot.classes.VisualShaderNodeVec2Constant cimport *
from py4godot.classes.VisualShaderNodeVec2Parameter cimport *
from py4godot.classes.VisualShaderNodeVec3Constant cimport *
from py4godot.classes.VisualShaderNodeVec3Parameter cimport *
from py4godot.classes.VisualShaderNodeVec4Constant cimport *
from py4godot.classes.VisualShaderNodeVec4Parameter cimport *
from py4godot.classes.VisualShaderNodeVectorBase cimport *
from py4godot.classes.VisualShaderNodeVectorCompose cimport *
from py4godot.classes.VisualShaderNodeVectorDecompose cimport *
from py4godot.classes.VisualShaderNodeVectorDistance cimport *
from py4godot.classes.VisualShaderNodeVectorFunc cimport *
from py4godot.classes.VisualShaderNodeVectorLen cimport *
from py4godot.classes.VisualShaderNodeVectorOp cimport *
from py4godot.classes.VisualShaderNodeVectorRefract cimport *
from py4godot.classes.VisualShaderNodeWorldPositionFromDepth cimport *
from py4godot.classes.VoxelGI cimport *
from py4godot.classes.VoxelGIData cimport *
from py4godot.classes.WeakRef cimport *
from py4godot.classes.WebRTCDataChannel cimport *
from py4godot.classes.WebRTCDataChannelExtension cimport *
from py4godot.classes.WebRTCMultiplayerPeer cimport *
from py4godot.classes.WebRTCPeerConnection cimport *
from py4godot.classes.WebRTCPeerConnectionExtension cimport *
from py4godot.classes.WebSocketMultiplayerPeer cimport *
from py4godot.classes.WebSocketPeer cimport *
from py4godot.classes.WebXRInterface cimport *
from py4godot.classes.Window cimport *
from py4godot.classes.WorkerThreadPool cimport *
from py4godot.classes.World2D cimport *
from py4godot.classes.World3D cimport *
from py4godot.classes.WorldBoundaryShape2D cimport *
from py4godot.classes.WorldBoundaryShape3D cimport *
from py4godot.classes.WorldEnvironment cimport *
from py4godot.classes.X509Certificate cimport *
from py4godot.classes.XMLParser cimport *
from py4godot.classes.XRAnchor3D cimport *
from py4godot.classes.XRBodyModifier3D cimport *
from py4godot.classes.XRBodyTracker cimport *
from py4godot.classes.XRCamera3D cimport *
from py4godot.classes.XRController3D cimport *
from py4godot.classes.XRControllerTracker cimport *
from py4godot.classes.XRFaceModifier3D cimport *
from py4godot.classes.XRFaceTracker cimport *
from py4godot.classes.XRHandModifier3D cimport *
from py4godot.classes.XRHandTracker cimport *
from py4godot.classes.XRInterface cimport *
from py4godot.classes.XRInterfaceExtension cimport *
from py4godot.classes.XRNode3D cimport *
from py4godot.classes.XROrigin3D cimport *
from py4godot.classes.XRPose cimport *
from py4godot.classes.XRPositionalTracker cimport *
from py4godot.classes.XRServer cimport *
from py4godot.classes.XRTracker cimport *
from py4godot.classes.XRVRS cimport *
from py4godot.classes.ZIPPacker cimport *
from py4godot.classes.ZIPReader cimport *
cdef api PyObject* cast_to_aescontext(PyObject* other):
    cdef AESContext o = AESContext.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_astar2d(PyObject* other):
    cdef AStar2D o = AStar2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_astar3d(PyObject* other):
    cdef AStar3D o = AStar3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_astargrid2d(PyObject* other):
    cdef AStarGrid2D o = AStarGrid2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_acceptdialog(PyObject* other):
    cdef AcceptDialog o = AcceptDialog.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animatablebody2d(PyObject* other):
    cdef AnimatableBody2D o = AnimatableBody2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animatablebody3d(PyObject* other):
    cdef AnimatableBody3D o = AnimatableBody3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animatedsprite2d(PyObject* other):
    cdef AnimatedSprite2D o = AnimatedSprite2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animatedsprite3d(PyObject* other):
    cdef AnimatedSprite3D o = AnimatedSprite3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animatedtexture(PyObject* other):
    cdef AnimatedTexture o = AnimatedTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animation(PyObject* other):
    cdef Animation o = Animation.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationlibrary(PyObject* other):
    cdef AnimationLibrary o = AnimationLibrary.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationmixer(PyObject* other):
    cdef AnimationMixer o = AnimationMixer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnode(PyObject* other):
    cdef AnimationNode o = AnimationNode.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodeadd2(PyObject* other):
    cdef AnimationNodeAdd2 o = AnimationNodeAdd2.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodeadd3(PyObject* other):
    cdef AnimationNodeAdd3 o = AnimationNodeAdd3.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodeanimation(PyObject* other):
    cdef AnimationNodeAnimation o = AnimationNodeAnimation.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodeblend2(PyObject* other):
    cdef AnimationNodeBlend2 o = AnimationNodeBlend2.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodeblend3(PyObject* other):
    cdef AnimationNodeBlend3 o = AnimationNodeBlend3.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodeblendspace1d(PyObject* other):
    cdef AnimationNodeBlendSpace1D o = AnimationNodeBlendSpace1D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodeblendspace2d(PyObject* other):
    cdef AnimationNodeBlendSpace2D o = AnimationNodeBlendSpace2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodeblendtree(PyObject* other):
    cdef AnimationNodeBlendTree o = AnimationNodeBlendTree.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodeextension(PyObject* other):
    cdef AnimationNodeExtension o = AnimationNodeExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodeoneshot(PyObject* other):
    cdef AnimationNodeOneShot o = AnimationNodeOneShot.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodeoutput(PyObject* other):
    cdef AnimationNodeOutput o = AnimationNodeOutput.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodestatemachine(PyObject* other):
    cdef AnimationNodeStateMachine o = AnimationNodeStateMachine.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodestatemachineplayback(PyObject* other):
    cdef AnimationNodeStateMachinePlayback o = AnimationNodeStateMachinePlayback.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodestatemachinetransition(PyObject* other):
    cdef AnimationNodeStateMachineTransition o = AnimationNodeStateMachineTransition.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodesub2(PyObject* other):
    cdef AnimationNodeSub2 o = AnimationNodeSub2.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodesync(PyObject* other):
    cdef AnimationNodeSync o = AnimationNodeSync.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodetimescale(PyObject* other):
    cdef AnimationNodeTimeScale o = AnimationNodeTimeScale.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodetimeseek(PyObject* other):
    cdef AnimationNodeTimeSeek o = AnimationNodeTimeSeek.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationnodetransition(PyObject* other):
    cdef AnimationNodeTransition o = AnimationNodeTransition.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationplayer(PyObject* other):
    cdef AnimationPlayer o = AnimationPlayer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationrootnode(PyObject* other):
    cdef AnimationRootNode o = AnimationRootNode.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_animationtree(PyObject* other):
    cdef AnimationTree o = AnimationTree.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_area2d(PyObject* other):
    cdef Area2D o = Area2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_area3d(PyObject* other):
    cdef Area3D o = Area3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_arraymesh(PyObject* other):
    cdef ArrayMesh o = ArrayMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_arrayoccluder3d(PyObject* other):
    cdef ArrayOccluder3D o = ArrayOccluder3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_aspectratiocontainer(PyObject* other):
    cdef AspectRatioContainer o = AspectRatioContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_atlastexture(PyObject* other):
    cdef AtlasTexture o = AtlasTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiobuslayout(PyObject* other):
    cdef AudioBusLayout o = AudioBusLayout.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffect(PyObject* other):
    cdef AudioEffect o = AudioEffect.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectamplify(PyObject* other):
    cdef AudioEffectAmplify o = AudioEffectAmplify.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectbandlimitfilter(PyObject* other):
    cdef AudioEffectBandLimitFilter o = AudioEffectBandLimitFilter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectbandpassfilter(PyObject* other):
    cdef AudioEffectBandPassFilter o = AudioEffectBandPassFilter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectcapture(PyObject* other):
    cdef AudioEffectCapture o = AudioEffectCapture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectchorus(PyObject* other):
    cdef AudioEffectChorus o = AudioEffectChorus.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectcompressor(PyObject* other):
    cdef AudioEffectCompressor o = AudioEffectCompressor.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectdelay(PyObject* other):
    cdef AudioEffectDelay o = AudioEffectDelay.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectdistortion(PyObject* other):
    cdef AudioEffectDistortion o = AudioEffectDistortion.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffecteq(PyObject* other):
    cdef AudioEffectEQ o = AudioEffectEQ.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffecteq10(PyObject* other):
    cdef AudioEffectEQ10 o = AudioEffectEQ10.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffecteq21(PyObject* other):
    cdef AudioEffectEQ21 o = AudioEffectEQ21.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffecteq6(PyObject* other):
    cdef AudioEffectEQ6 o = AudioEffectEQ6.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectfilter(PyObject* other):
    cdef AudioEffectFilter o = AudioEffectFilter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffecthardlimiter(PyObject* other):
    cdef AudioEffectHardLimiter o = AudioEffectHardLimiter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffecthighpassfilter(PyObject* other):
    cdef AudioEffectHighPassFilter o = AudioEffectHighPassFilter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffecthighshelffilter(PyObject* other):
    cdef AudioEffectHighShelfFilter o = AudioEffectHighShelfFilter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectinstance(PyObject* other):
    cdef AudioEffectInstance o = AudioEffectInstance.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectlimiter(PyObject* other):
    cdef AudioEffectLimiter o = AudioEffectLimiter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectlowpassfilter(PyObject* other):
    cdef AudioEffectLowPassFilter o = AudioEffectLowPassFilter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectlowshelffilter(PyObject* other):
    cdef AudioEffectLowShelfFilter o = AudioEffectLowShelfFilter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectnotchfilter(PyObject* other):
    cdef AudioEffectNotchFilter o = AudioEffectNotchFilter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectpanner(PyObject* other):
    cdef AudioEffectPanner o = AudioEffectPanner.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectphaser(PyObject* other):
    cdef AudioEffectPhaser o = AudioEffectPhaser.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectpitchshift(PyObject* other):
    cdef AudioEffectPitchShift o = AudioEffectPitchShift.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectrecord(PyObject* other):
    cdef AudioEffectRecord o = AudioEffectRecord.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectreverb(PyObject* other):
    cdef AudioEffectReverb o = AudioEffectReverb.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectspectrumanalyzer(PyObject* other):
    cdef AudioEffectSpectrumAnalyzer o = AudioEffectSpectrumAnalyzer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectspectrumanalyzerinstance(PyObject* other):
    cdef AudioEffectSpectrumAnalyzerInstance o = AudioEffectSpectrumAnalyzerInstance.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioeffectstereoenhance(PyObject* other):
    cdef AudioEffectStereoEnhance o = AudioEffectStereoEnhance.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiolistener2d(PyObject* other):
    cdef AudioListener2D o = AudioListener2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiolistener3d(PyObject* other):
    cdef AudioListener3D o = AudioListener3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiosample(PyObject* other):
    cdef AudioSample o = AudioSample.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiosampleplayback(PyObject* other):
    cdef AudioSamplePlayback o = AudioSamplePlayback.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audioserver(PyObject* other):
    cdef AudioServer o = AudioServer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostream(PyObject* other):
    cdef AudioStream o = AudioStream.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreamgenerator(PyObject* other):
    cdef AudioStreamGenerator o = AudioStreamGenerator.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreamgeneratorplayback(PyObject* other):
    cdef AudioStreamGeneratorPlayback o = AudioStreamGeneratorPlayback.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreaminteractive(PyObject* other):
    cdef AudioStreamInteractive o = AudioStreamInteractive.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreammp3(PyObject* other):
    cdef AudioStreamMP3 o = AudioStreamMP3.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreammicrophone(PyObject* other):
    cdef AudioStreamMicrophone o = AudioStreamMicrophone.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreamoggvorbis(PyObject* other):
    cdef AudioStreamOggVorbis o = AudioStreamOggVorbis.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreamplayback(PyObject* other):
    cdef AudioStreamPlayback o = AudioStreamPlayback.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreamplaybackinteractive(PyObject* other):
    cdef AudioStreamPlaybackInteractive o = AudioStreamPlaybackInteractive.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreamplaybackoggvorbis(PyObject* other):
    cdef AudioStreamPlaybackOggVorbis o = AudioStreamPlaybackOggVorbis.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreamplaybackplaylist(PyObject* other):
    cdef AudioStreamPlaybackPlaylist o = AudioStreamPlaybackPlaylist.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreamplaybackpolyphonic(PyObject* other):
    cdef AudioStreamPlaybackPolyphonic o = AudioStreamPlaybackPolyphonic.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreamplaybackresampled(PyObject* other):
    cdef AudioStreamPlaybackResampled o = AudioStreamPlaybackResampled.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreamplaybacksynchronized(PyObject* other):
    cdef AudioStreamPlaybackSynchronized o = AudioStreamPlaybackSynchronized.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreamplayer(PyObject* other):
    cdef AudioStreamPlayer o = AudioStreamPlayer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreamplayer2d(PyObject* other):
    cdef AudioStreamPlayer2D o = AudioStreamPlayer2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreamplayer3d(PyObject* other):
    cdef AudioStreamPlayer3D o = AudioStreamPlayer3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreamplaylist(PyObject* other):
    cdef AudioStreamPlaylist o = AudioStreamPlaylist.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreampolyphonic(PyObject* other):
    cdef AudioStreamPolyphonic o = AudioStreamPolyphonic.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreamrandomizer(PyObject* other):
    cdef AudioStreamRandomizer o = AudioStreamRandomizer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreamsynchronized(PyObject* other):
    cdef AudioStreamSynchronized o = AudioStreamSynchronized.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_audiostreamwav(PyObject* other):
    cdef AudioStreamWAV o = AudioStreamWAV.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_backbuffercopy(PyObject* other):
    cdef BackBufferCopy o = BackBufferCopy.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_basebutton(PyObject* other):
    cdef BaseButton o = BaseButton.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_basematerial3d(PyObject* other):
    cdef BaseMaterial3D o = BaseMaterial3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_bitmap(PyObject* other):
    cdef BitMap o = BitMap.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_bone2d(PyObject* other):
    cdef Bone2D o = Bone2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_boneattachment3d(PyObject* other):
    cdef BoneAttachment3D o = BoneAttachment3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_bonemap(PyObject* other):
    cdef BoneMap o = BoneMap.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_boxcontainer(PyObject* other):
    cdef BoxContainer o = BoxContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_boxmesh(PyObject* other):
    cdef BoxMesh o = BoxMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_boxoccluder3d(PyObject* other):
    cdef BoxOccluder3D o = BoxOccluder3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_boxshape3d(PyObject* other):
    cdef BoxShape3D o = BoxShape3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_button(PyObject* other):
    cdef Button o = Button.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_buttongroup(PyObject* other):
    cdef ButtonGroup o = ButtonGroup.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cpuparticles2d(PyObject* other):
    cdef CPUParticles2D o = CPUParticles2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cpuparticles3d(PyObject* other):
    cdef CPUParticles3D o = CPUParticles3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_csgbox3d(PyObject* other):
    cdef CSGBox3D o = CSGBox3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_csgcombiner3d(PyObject* other):
    cdef CSGCombiner3D o = CSGCombiner3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_csgcylinder3d(PyObject* other):
    cdef CSGCylinder3D o = CSGCylinder3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_csgmesh3d(PyObject* other):
    cdef CSGMesh3D o = CSGMesh3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_csgpolygon3d(PyObject* other):
    cdef CSGPolygon3D o = CSGPolygon3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_csgprimitive3d(PyObject* other):
    cdef CSGPrimitive3D o = CSGPrimitive3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_csgshape3d(PyObject* other):
    cdef CSGShape3D o = CSGShape3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_csgsphere3d(PyObject* other):
    cdef CSGSphere3D o = CSGSphere3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_csgtorus3d(PyObject* other):
    cdef CSGTorus3D o = CSGTorus3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_callbacktweener(PyObject* other):
    cdef CallbackTweener o = CallbackTweener.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_camera2d(PyObject* other):
    cdef Camera2D o = Camera2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_camera3d(PyObject* other):
    cdef Camera3D o = Camera3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cameraattributes(PyObject* other):
    cdef CameraAttributes o = CameraAttributes.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cameraattributesphysical(PyObject* other):
    cdef CameraAttributesPhysical o = CameraAttributesPhysical.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cameraattributespractical(PyObject* other):
    cdef CameraAttributesPractical o = CameraAttributesPractical.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_camerafeed(PyObject* other):
    cdef CameraFeed o = CameraFeed.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cameraserver(PyObject* other):
    cdef CameraServer o = CameraServer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cameratexture(PyObject* other):
    cdef CameraTexture o = CameraTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_canvasgroup(PyObject* other):
    cdef CanvasGroup o = CanvasGroup.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_canvasitem(PyObject* other):
    cdef CanvasItem o = CanvasItem.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_canvasitemmaterial(PyObject* other):
    cdef CanvasItemMaterial o = CanvasItemMaterial.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_canvaslayer(PyObject* other):
    cdef CanvasLayer o = CanvasLayer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_canvasmodulate(PyObject* other):
    cdef CanvasModulate o = CanvasModulate.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_canvastexture(PyObject* other):
    cdef CanvasTexture o = CanvasTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_capsulemesh(PyObject* other):
    cdef CapsuleMesh o = CapsuleMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_capsuleshape2d(PyObject* other):
    cdef CapsuleShape2D o = CapsuleShape2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_capsuleshape3d(PyObject* other):
    cdef CapsuleShape3D o = CapsuleShape3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_centercontainer(PyObject* other):
    cdef CenterContainer o = CenterContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_charfxtransform(PyObject* other):
    cdef CharFXTransform o = CharFXTransform.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_characterbody2d(PyObject* other):
    cdef CharacterBody2D o = CharacterBody2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_characterbody3d(PyObject* other):
    cdef CharacterBody3D o = CharacterBody3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_checkbox(PyObject* other):
    cdef CheckBox o = CheckBox.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_checkbutton(PyObject* other):
    cdef CheckButton o = CheckButton.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_circleshape2d(PyObject* other):
    cdef CircleShape2D o = CircleShape2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_classdb(PyObject* other):
    cdef ClassDB o = ClassDB.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_codeedit(PyObject* other):
    cdef CodeEdit o = CodeEdit.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_codehighlighter(PyObject* other):
    cdef CodeHighlighter o = CodeHighlighter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_collisionobject2d(PyObject* other):
    cdef CollisionObject2D o = CollisionObject2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_collisionobject3d(PyObject* other):
    cdef CollisionObject3D o = CollisionObject3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_collisionpolygon2d(PyObject* other):
    cdef CollisionPolygon2D o = CollisionPolygon2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_collisionpolygon3d(PyObject* other):
    cdef CollisionPolygon3D o = CollisionPolygon3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_collisionshape2d(PyObject* other):
    cdef CollisionShape2D o = CollisionShape2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_collisionshape3d(PyObject* other):
    cdef CollisionShape3D o = CollisionShape3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_colorpalette(PyObject* other):
    cdef ColorPalette o = ColorPalette.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_colorpicker(PyObject* other):
    cdef ColorPicker o = ColorPicker.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_colorpickerbutton(PyObject* other):
    cdef ColorPickerButton o = ColorPickerButton.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_colorrect(PyObject* other):
    cdef ColorRect o = ColorRect.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_compositor(PyObject* other):
    cdef Compositor o = Compositor.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_compositoreffect(PyObject* other):
    cdef CompositorEffect o = CompositorEffect.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_compressedcubemap(PyObject* other):
    cdef CompressedCubemap o = CompressedCubemap.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_compressedcubemaparray(PyObject* other):
    cdef CompressedCubemapArray o = CompressedCubemapArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_compressedtexture2d(PyObject* other):
    cdef CompressedTexture2D o = CompressedTexture2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_compressedtexture2darray(PyObject* other):
    cdef CompressedTexture2DArray o = CompressedTexture2DArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_compressedtexture3d(PyObject* other):
    cdef CompressedTexture3D o = CompressedTexture3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_compressedtexturelayered(PyObject* other):
    cdef CompressedTextureLayered o = CompressedTextureLayered.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_concavepolygonshape2d(PyObject* other):
    cdef ConcavePolygonShape2D o = ConcavePolygonShape2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_concavepolygonshape3d(PyObject* other):
    cdef ConcavePolygonShape3D o = ConcavePolygonShape3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_conetwistjoint3d(PyObject* other):
    cdef ConeTwistJoint3D o = ConeTwistJoint3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_configfile(PyObject* other):
    cdef ConfigFile o = ConfigFile.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_confirmationdialog(PyObject* other):
    cdef ConfirmationDialog o = ConfirmationDialog.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_container(PyObject* other):
    cdef Container o = Container.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_control(PyObject* other):
    cdef Control o = Control.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_convexpolygonshape2d(PyObject* other):
    cdef ConvexPolygonShape2D o = ConvexPolygonShape2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_convexpolygonshape3d(PyObject* other):
    cdef ConvexPolygonShape3D o = ConvexPolygonShape3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_crypto(PyObject* other):
    cdef Crypto o = Crypto.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cryptokey(PyObject* other):
    cdef CryptoKey o = CryptoKey.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cubemap(PyObject* other):
    cdef Cubemap o = Cubemap.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cubemaparray(PyObject* other):
    cdef CubemapArray o = CubemapArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_curve(PyObject* other):
    cdef Curve o = Curve.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_curve2d(PyObject* other):
    cdef Curve2D o = Curve2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_curve3d(PyObject* other):
    cdef Curve3D o = Curve3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_curvetexture(PyObject* other):
    cdef CurveTexture o = CurveTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_curvexyztexture(PyObject* other):
    cdef CurveXYZTexture o = CurveXYZTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cylindermesh(PyObject* other):
    cdef CylinderMesh o = CylinderMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_cylindershape3d(PyObject* other):
    cdef CylinderShape3D o = CylinderShape3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_dtlsserver(PyObject* other):
    cdef DTLSServer o = DTLSServer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_dampedspringjoint2d(PyObject* other):
    cdef DampedSpringJoint2D o = DampedSpringJoint2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_decal(PyObject* other):
    cdef Decal o = Decal.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_diraccess(PyObject* other):
    cdef DirAccess o = DirAccess.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_directionallight2d(PyObject* other):
    cdef DirectionalLight2D o = DirectionalLight2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_directionallight3d(PyObject* other):
    cdef DirectionalLight3D o = DirectionalLight3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_displayserver(PyObject* other):
    cdef DisplayServer o = DisplayServer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_enetconnection(PyObject* other):
    cdef ENetConnection o = ENetConnection.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_enetmultiplayerpeer(PyObject* other):
    cdef ENetMultiplayerPeer o = ENetMultiplayerPeer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_enetpacketpeer(PyObject* other):
    cdef ENetPacketPeer o = ENetPacketPeer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorcommandpalette(PyObject* other):
    cdef EditorCommandPalette o = EditorCommandPalette.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorcontextmenuplugin(PyObject* other):
    cdef EditorContextMenuPlugin o = EditorContextMenuPlugin.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editordebuggerplugin(PyObject* other):
    cdef EditorDebuggerPlugin o = EditorDebuggerPlugin.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editordebuggersession(PyObject* other):
    cdef EditorDebuggerSession o = EditorDebuggerSession.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorexportplatform(PyObject* other):
    cdef EditorExportPlatform o = EditorExportPlatform.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorexportplatformandroid(PyObject* other):
    cdef EditorExportPlatformAndroid o = EditorExportPlatformAndroid.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorexportplatformextension(PyObject* other):
    cdef EditorExportPlatformExtension o = EditorExportPlatformExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorexportplatformios(PyObject* other):
    cdef EditorExportPlatformIOS o = EditorExportPlatformIOS.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorexportplatformlinuxbsd(PyObject* other):
    cdef EditorExportPlatformLinuxBSD o = EditorExportPlatformLinuxBSD.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorexportplatformmacos(PyObject* other):
    cdef EditorExportPlatformMacOS o = EditorExportPlatformMacOS.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorexportplatformpc(PyObject* other):
    cdef EditorExportPlatformPC o = EditorExportPlatformPC.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorexportplatformweb(PyObject* other):
    cdef EditorExportPlatformWeb o = EditorExportPlatformWeb.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorexportplatformwindows(PyObject* other):
    cdef EditorExportPlatformWindows o = EditorExportPlatformWindows.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorexportplugin(PyObject* other):
    cdef EditorExportPlugin o = EditorExportPlugin.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorexportpreset(PyObject* other):
    cdef EditorExportPreset o = EditorExportPreset.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorfeatureprofile(PyObject* other):
    cdef EditorFeatureProfile o = EditorFeatureProfile.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorfiledialog(PyObject* other):
    cdef EditorFileDialog o = EditorFileDialog.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorfilesystem(PyObject* other):
    cdef EditorFileSystem o = EditorFileSystem.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorfilesystemdirectory(PyObject* other):
    cdef EditorFileSystemDirectory o = EditorFileSystemDirectory.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorfilesystemimportformatsupportquery(PyObject* other):
    cdef EditorFileSystemImportFormatSupportQuery o = EditorFileSystemImportFormatSupportQuery.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorimportplugin(PyObject* other):
    cdef EditorImportPlugin o = EditorImportPlugin.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorinspector(PyObject* other):
    cdef EditorInspector o = EditorInspector.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorinspectorplugin(PyObject* other):
    cdef EditorInspectorPlugin o = EditorInspectorPlugin.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorinterface(PyObject* other):
    cdef EditorInterface o = EditorInterface.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editornode3dgizmo(PyObject* other):
    cdef EditorNode3DGizmo o = EditorNode3DGizmo.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editornode3dgizmoplugin(PyObject* other):
    cdef EditorNode3DGizmoPlugin o = EditorNode3DGizmoPlugin.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorpaths(PyObject* other):
    cdef EditorPaths o = EditorPaths.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorplugin(PyObject* other):
    cdef EditorPlugin o = EditorPlugin.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorproperty(PyObject* other):
    cdef EditorProperty o = EditorProperty.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorresourceconversionplugin(PyObject* other):
    cdef EditorResourceConversionPlugin o = EditorResourceConversionPlugin.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorresourcepicker(PyObject* other):
    cdef EditorResourcePicker o = EditorResourcePicker.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorresourcepreview(PyObject* other):
    cdef EditorResourcePreview o = EditorResourcePreview.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorresourcepreviewgenerator(PyObject* other):
    cdef EditorResourcePreviewGenerator o = EditorResourcePreviewGenerator.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorresourcetooltipplugin(PyObject* other):
    cdef EditorResourceTooltipPlugin o = EditorResourceTooltipPlugin.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorsceneformatimporter(PyObject* other):
    cdef EditorSceneFormatImporter o = EditorSceneFormatImporter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorsceneformatimporterblend(PyObject* other):
    cdef EditorSceneFormatImporterBlend o = EditorSceneFormatImporterBlend.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorsceneformatimporterfbx2gltf(PyObject* other):
    cdef EditorSceneFormatImporterFBX2GLTF o = EditorSceneFormatImporterFBX2GLTF.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorsceneformatimportergltf(PyObject* other):
    cdef EditorSceneFormatImporterGLTF o = EditorSceneFormatImporterGLTF.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorsceneformatimporterufbx(PyObject* other):
    cdef EditorSceneFormatImporterUFBX o = EditorSceneFormatImporterUFBX.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorscenepostimport(PyObject* other):
    cdef EditorScenePostImport o = EditorScenePostImport.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorscenepostimportplugin(PyObject* other):
    cdef EditorScenePostImportPlugin o = EditorScenePostImportPlugin.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorscript(PyObject* other):
    cdef EditorScript o = EditorScript.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorscriptpicker(PyObject* other):
    cdef EditorScriptPicker o = EditorScriptPicker.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorselection(PyObject* other):
    cdef EditorSelection o = EditorSelection.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorsettings(PyObject* other):
    cdef EditorSettings o = EditorSettings.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorspinslider(PyObject* other):
    cdef EditorSpinSlider o = EditorSpinSlider.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorsyntaxhighlighter(PyObject* other):
    cdef EditorSyntaxHighlighter o = EditorSyntaxHighlighter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editortoaster(PyObject* other):
    cdef EditorToaster o = EditorToaster.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editortranslationparserplugin(PyObject* other):
    cdef EditorTranslationParserPlugin o = EditorTranslationParserPlugin.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorundoredomanager(PyObject* other):
    cdef EditorUndoRedoManager o = EditorUndoRedoManager.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_editorvcsinterface(PyObject* other):
    cdef EditorVCSInterface o = EditorVCSInterface.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_encodedobjectasid(PyObject* other):
    cdef EncodedObjectAsID o = EncodedObjectAsID.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_engine(PyObject* other):
    cdef Engine o = Engine.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_enginedebugger(PyObject* other):
    cdef EngineDebugger o = EngineDebugger.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_engineprofiler(PyObject* other):
    cdef EngineProfiler o = EngineProfiler.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_environment(PyObject* other):
    cdef Environment o = Environment.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_expression(PyObject* other):
    cdef Expression o = Expression.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_externaltexture(PyObject* other):
    cdef ExternalTexture o = ExternalTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_fbxdocument(PyObject* other):
    cdef FBXDocument o = FBXDocument.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_fbxstate(PyObject* other):
    cdef FBXState o = FBXState.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_fastnoiselite(PyObject* other):
    cdef FastNoiseLite o = FastNoiseLite.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_fileaccess(PyObject* other):
    cdef FileAccess o = FileAccess.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_filedialog(PyObject* other):
    cdef FileDialog o = FileDialog.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_filesystemdock(PyObject* other):
    cdef FileSystemDock o = FileSystemDock.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_flowcontainer(PyObject* other):
    cdef FlowContainer o = FlowContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_fogmaterial(PyObject* other):
    cdef FogMaterial o = FogMaterial.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_fogvolume(PyObject* other):
    cdef FogVolume o = FogVolume.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_font(PyObject* other):
    cdef Font o = Font.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_fontfile(PyObject* other):
    cdef FontFile o = FontFile.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_fontvariation(PyObject* other):
    cdef FontVariation o = FontVariation.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_framebuffercacherd(PyObject* other):
    cdef FramebufferCacheRD o = FramebufferCacheRD.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gdextension(PyObject* other):
    cdef GDExtension o = GDExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gdextensionmanager(PyObject* other):
    cdef GDExtensionManager o = GDExtensionManager.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gdscript(PyObject* other):
    cdef GDScript o = GDScript.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gdscriptsyntaxhighlighter(PyObject* other):
    cdef GDScriptSyntaxHighlighter o = GDScriptSyntaxHighlighter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfaccessor(PyObject* other):
    cdef GLTFAccessor o = GLTFAccessor.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfanimation(PyObject* other):
    cdef GLTFAnimation o = GLTFAnimation.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfbufferview(PyObject* other):
    cdef GLTFBufferView o = GLTFBufferView.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfcamera(PyObject* other):
    cdef GLTFCamera o = GLTFCamera.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfdocument(PyObject* other):
    cdef GLTFDocument o = GLTFDocument.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfdocumentextension(PyObject* other):
    cdef GLTFDocumentExtension o = GLTFDocumentExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfdocumentextensionconvertimportermesh(PyObject* other):
    cdef GLTFDocumentExtensionConvertImporterMesh o = GLTFDocumentExtensionConvertImporterMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltflight(PyObject* other):
    cdef GLTFLight o = GLTFLight.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfmesh(PyObject* other):
    cdef GLTFMesh o = GLTFMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfnode(PyObject* other):
    cdef GLTFNode o = GLTFNode.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfobjectmodelproperty(PyObject* other):
    cdef GLTFObjectModelProperty o = GLTFObjectModelProperty.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfphysicsbody(PyObject* other):
    cdef GLTFPhysicsBody o = GLTFPhysicsBody.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfphysicsshape(PyObject* other):
    cdef GLTFPhysicsShape o = GLTFPhysicsShape.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfskeleton(PyObject* other):
    cdef GLTFSkeleton o = GLTFSkeleton.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfskin(PyObject* other):
    cdef GLTFSkin o = GLTFSkin.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfspecgloss(PyObject* other):
    cdef GLTFSpecGloss o = GLTFSpecGloss.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltfstate(PyObject* other):
    cdef GLTFState o = GLTFState.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltftexture(PyObject* other):
    cdef GLTFTexture o = GLTFTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gltftexturesampler(PyObject* other):
    cdef GLTFTextureSampler o = GLTFTextureSampler.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gpuparticles2d(PyObject* other):
    cdef GPUParticles2D o = GPUParticles2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gpuparticles3d(PyObject* other):
    cdef GPUParticles3D o = GPUParticles3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gpuparticlesattractor3d(PyObject* other):
    cdef GPUParticlesAttractor3D o = GPUParticlesAttractor3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gpuparticlesattractorbox3d(PyObject* other):
    cdef GPUParticlesAttractorBox3D o = GPUParticlesAttractorBox3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gpuparticlesattractorsphere3d(PyObject* other):
    cdef GPUParticlesAttractorSphere3D o = GPUParticlesAttractorSphere3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gpuparticlesattractorvectorfield3d(PyObject* other):
    cdef GPUParticlesAttractorVectorField3D o = GPUParticlesAttractorVectorField3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gpuparticlescollision3d(PyObject* other):
    cdef GPUParticlesCollision3D o = GPUParticlesCollision3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gpuparticlescollisionbox3d(PyObject* other):
    cdef GPUParticlesCollisionBox3D o = GPUParticlesCollisionBox3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gpuparticlescollisionheightfield3d(PyObject* other):
    cdef GPUParticlesCollisionHeightField3D o = GPUParticlesCollisionHeightField3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gpuparticlescollisionsdf3d(PyObject* other):
    cdef GPUParticlesCollisionSDF3D o = GPUParticlesCollisionSDF3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gpuparticlescollisionsphere3d(PyObject* other):
    cdef GPUParticlesCollisionSphere3D o = GPUParticlesCollisionSphere3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_generic6dofjoint3d(PyObject* other):
    cdef Generic6DOFJoint3D o = Generic6DOFJoint3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_geometry2d(PyObject* other):
    cdef Geometry2D o = Geometry2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_geometry3d(PyObject* other):
    cdef Geometry3D o = Geometry3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_geometryinstance3d(PyObject* other):
    cdef GeometryInstance3D o = GeometryInstance3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gradient(PyObject* other):
    cdef Gradient o = Gradient.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gradienttexture1d(PyObject* other):
    cdef GradientTexture1D o = GradientTexture1D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gradienttexture2d(PyObject* other):
    cdef GradientTexture2D o = GradientTexture2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_graphedit(PyObject* other):
    cdef GraphEdit o = GraphEdit.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_graphelement(PyObject* other):
    cdef GraphElement o = GraphElement.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_graphframe(PyObject* other):
    cdef GraphFrame o = GraphFrame.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_graphnode(PyObject* other):
    cdef GraphNode o = GraphNode.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gridcontainer(PyObject* other):
    cdef GridContainer o = GridContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gridmap(PyObject* other):
    cdef GridMap o = GridMap.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_gridmapeditorplugin(PyObject* other):
    cdef GridMapEditorPlugin o = GridMapEditorPlugin.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_groovejoint2d(PyObject* other):
    cdef GrooveJoint2D o = GrooveJoint2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_hboxcontainer(PyObject* other):
    cdef HBoxContainer o = HBoxContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_hflowcontainer(PyObject* other):
    cdef HFlowContainer o = HFlowContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_hmaccontext(PyObject* other):
    cdef HMACContext o = HMACContext.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_hscrollbar(PyObject* other):
    cdef HScrollBar o = HScrollBar.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_hseparator(PyObject* other):
    cdef HSeparator o = HSeparator.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_hslider(PyObject* other):
    cdef HSlider o = HSlider.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_hsplitcontainer(PyObject* other):
    cdef HSplitContainer o = HSplitContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_httpclient(PyObject* other):
    cdef HTTPClient o = HTTPClient.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_httprequest(PyObject* other):
    cdef HTTPRequest o = HTTPRequest.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_hashingcontext(PyObject* other):
    cdef HashingContext o = HashingContext.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_heightmapshape3d(PyObject* other):
    cdef HeightMapShape3D o = HeightMapShape3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_hingejoint3d(PyObject* other):
    cdef HingeJoint3D o = HingeJoint3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_ip(PyObject* other):
    cdef IP o = IP.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_image(PyObject* other):
    cdef Image o = Image.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_imageformatloader(PyObject* other):
    cdef ImageFormatLoader o = ImageFormatLoader.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_imageformatloaderextension(PyObject* other):
    cdef ImageFormatLoaderExtension o = ImageFormatLoaderExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_imagetexture(PyObject* other):
    cdef ImageTexture o = ImageTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_imagetexture3d(PyObject* other):
    cdef ImageTexture3D o = ImageTexture3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_imagetexturelayered(PyObject* other):
    cdef ImageTextureLayered o = ImageTextureLayered.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_immediatemesh(PyObject* other):
    cdef ImmediateMesh o = ImmediateMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_importermesh(PyObject* other):
    cdef ImporterMesh o = ImporterMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_importermeshinstance3d(PyObject* other):
    cdef ImporterMeshInstance3D o = ImporterMeshInstance3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_input(PyObject* other):
    cdef Input o = Input.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputevent(PyObject* other):
    cdef InputEvent o = InputEvent.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventaction(PyObject* other):
    cdef InputEventAction o = InputEventAction.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventfromwindow(PyObject* other):
    cdef InputEventFromWindow o = InputEventFromWindow.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventgesture(PyObject* other):
    cdef InputEventGesture o = InputEventGesture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventjoypadbutton(PyObject* other):
    cdef InputEventJoypadButton o = InputEventJoypadButton.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventjoypadmotion(PyObject* other):
    cdef InputEventJoypadMotion o = InputEventJoypadMotion.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventkey(PyObject* other):
    cdef InputEventKey o = InputEventKey.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventmidi(PyObject* other):
    cdef InputEventMIDI o = InputEventMIDI.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventmagnifygesture(PyObject* other):
    cdef InputEventMagnifyGesture o = InputEventMagnifyGesture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventmouse(PyObject* other):
    cdef InputEventMouse o = InputEventMouse.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventmousebutton(PyObject* other):
    cdef InputEventMouseButton o = InputEventMouseButton.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventmousemotion(PyObject* other):
    cdef InputEventMouseMotion o = InputEventMouseMotion.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventpangesture(PyObject* other):
    cdef InputEventPanGesture o = InputEventPanGesture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventscreendrag(PyObject* other):
    cdef InputEventScreenDrag o = InputEventScreenDrag.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventscreentouch(PyObject* other):
    cdef InputEventScreenTouch o = InputEventScreenTouch.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventshortcut(PyObject* other):
    cdef InputEventShortcut o = InputEventShortcut.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputeventwithmodifiers(PyObject* other):
    cdef InputEventWithModifiers o = InputEventWithModifiers.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_inputmap(PyObject* other):
    cdef InputMap o = InputMap.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_instanceplaceholder(PyObject* other):
    cdef InstancePlaceholder o = InstancePlaceholder.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_intervaltweener(PyObject* other):
    cdef IntervalTweener o = IntervalTweener.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_itemlist(PyObject* other):
    cdef ItemList o = ItemList.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_jnisingleton(PyObject* other):
    cdef JNISingleton o = JNISingleton.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_json(PyObject* other):
    cdef JSON o = JSON.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_jsonrpc(PyObject* other):
    cdef JSONRPC o = JSONRPC.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_javaclass(PyObject* other):
    cdef JavaClass o = JavaClass.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_javaclasswrapper(PyObject* other):
    cdef JavaClassWrapper o = JavaClassWrapper.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_javaobject(PyObject* other):
    cdef JavaObject o = JavaObject.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_javascriptbridge(PyObject* other):
    cdef JavaScriptBridge o = JavaScriptBridge.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_javascriptobject(PyObject* other):
    cdef JavaScriptObject o = JavaScriptObject.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_joint2d(PyObject* other):
    cdef Joint2D o = Joint2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_joint3d(PyObject* other):
    cdef Joint3D o = Joint3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_kinematiccollision2d(PyObject* other):
    cdef KinematicCollision2D o = KinematicCollision2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_kinematiccollision3d(PyObject* other):
    cdef KinematicCollision3D o = KinematicCollision3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_label(PyObject* other):
    cdef Label o = Label.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_label3d(PyObject* other):
    cdef Label3D o = Label3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_labelsettings(PyObject* other):
    cdef LabelSettings o = LabelSettings.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_light2d(PyObject* other):
    cdef Light2D o = Light2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_light3d(PyObject* other):
    cdef Light3D o = Light3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_lightoccluder2d(PyObject* other):
    cdef LightOccluder2D o = LightOccluder2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_lightmapgi(PyObject* other):
    cdef LightmapGI o = LightmapGI.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_lightmapgidata(PyObject* other):
    cdef LightmapGIData o = LightmapGIData.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_lightmapprobe(PyObject* other):
    cdef LightmapProbe o = LightmapProbe.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_lightmapper(PyObject* other):
    cdef Lightmapper o = Lightmapper.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_lightmapperrd(PyObject* other):
    cdef LightmapperRD o = LightmapperRD.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_line2d(PyObject* other):
    cdef Line2D o = Line2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_lineedit(PyObject* other):
    cdef LineEdit o = LineEdit.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_linkbutton(PyObject* other):
    cdef LinkButton o = LinkButton.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_lookatmodifier3d(PyObject* other):
    cdef LookAtModifier3D o = LookAtModifier3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_mainloop(PyObject* other):
    cdef MainLoop o = MainLoop.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_margincontainer(PyObject* other):
    cdef MarginContainer o = MarginContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_marker2d(PyObject* other):
    cdef Marker2D o = Marker2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_marker3d(PyObject* other):
    cdef Marker3D o = Marker3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_marshalls(PyObject* other):
    cdef Marshalls o = Marshalls.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_material(PyObject* other):
    cdef Material o = Material.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_menubar(PyObject* other):
    cdef MenuBar o = MenuBar.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_menubutton(PyObject* other):
    cdef MenuButton o = MenuButton.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_mesh(PyObject* other):
    cdef Mesh o = Mesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_meshconvexdecompositionsettings(PyObject* other):
    cdef MeshConvexDecompositionSettings o = MeshConvexDecompositionSettings.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_meshdatatool(PyObject* other):
    cdef MeshDataTool o = MeshDataTool.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_meshinstance2d(PyObject* other):
    cdef MeshInstance2D o = MeshInstance2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_meshinstance3d(PyObject* other):
    cdef MeshInstance3D o = MeshInstance3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_meshlibrary(PyObject* other):
    cdef MeshLibrary o = MeshLibrary.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_meshtexture(PyObject* other):
    cdef MeshTexture o = MeshTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_methodtweener(PyObject* other):
    cdef MethodTweener o = MethodTweener.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_missingnode(PyObject* other):
    cdef MissingNode o = MissingNode.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_missingresource(PyObject* other):
    cdef MissingResource o = MissingResource.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_mobilevrinterface(PyObject* other):
    cdef MobileVRInterface o = MobileVRInterface.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_moviewriter(PyObject* other):
    cdef MovieWriter o = MovieWriter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multimesh(PyObject* other):
    cdef MultiMesh o = MultiMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multimeshinstance2d(PyObject* other):
    cdef MultiMeshInstance2D o = MultiMeshInstance2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multimeshinstance3d(PyObject* other):
    cdef MultiMeshInstance3D o = MultiMeshInstance3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multiplayerapi(PyObject* other):
    cdef MultiplayerAPI o = MultiplayerAPI.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multiplayerapiextension(PyObject* other):
    cdef MultiplayerAPIExtension o = MultiplayerAPIExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multiplayerpeer(PyObject* other):
    cdef MultiplayerPeer o = MultiplayerPeer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multiplayerpeerextension(PyObject* other):
    cdef MultiplayerPeerExtension o = MultiplayerPeerExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multiplayerspawner(PyObject* other):
    cdef MultiplayerSpawner o = MultiplayerSpawner.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_multiplayersynchronizer(PyObject* other):
    cdef MultiplayerSynchronizer o = MultiplayerSynchronizer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_mutex(PyObject* other):
    cdef Mutex o = Mutex.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_nativemenu(PyObject* other):
    cdef NativeMenu o = NativeMenu.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationagent2d(PyObject* other):
    cdef NavigationAgent2D o = NavigationAgent2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationagent3d(PyObject* other):
    cdef NavigationAgent3D o = NavigationAgent3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationlink2d(PyObject* other):
    cdef NavigationLink2D o = NavigationLink2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationlink3d(PyObject* other):
    cdef NavigationLink3D o = NavigationLink3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationmesh(PyObject* other):
    cdef NavigationMesh o = NavigationMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationmeshgenerator(PyObject* other):
    cdef NavigationMeshGenerator o = NavigationMeshGenerator.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationmeshsourcegeometrydata2d(PyObject* other):
    cdef NavigationMeshSourceGeometryData2D o = NavigationMeshSourceGeometryData2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationmeshsourcegeometrydata3d(PyObject* other):
    cdef NavigationMeshSourceGeometryData3D o = NavigationMeshSourceGeometryData3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationobstacle2d(PyObject* other):
    cdef NavigationObstacle2D o = NavigationObstacle2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationobstacle3d(PyObject* other):
    cdef NavigationObstacle3D o = NavigationObstacle3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationpathqueryparameters2d(PyObject* other):
    cdef NavigationPathQueryParameters2D o = NavigationPathQueryParameters2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationpathqueryparameters3d(PyObject* other):
    cdef NavigationPathQueryParameters3D o = NavigationPathQueryParameters3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationpathqueryresult2d(PyObject* other):
    cdef NavigationPathQueryResult2D o = NavigationPathQueryResult2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationpathqueryresult3d(PyObject* other):
    cdef NavigationPathQueryResult3D o = NavigationPathQueryResult3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationpolygon(PyObject* other):
    cdef NavigationPolygon o = NavigationPolygon.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationregion2d(PyObject* other):
    cdef NavigationRegion2D o = NavigationRegion2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationregion3d(PyObject* other):
    cdef NavigationRegion3D o = NavigationRegion3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationserver2d(PyObject* other):
    cdef NavigationServer2D o = NavigationServer2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_navigationserver3d(PyObject* other):
    cdef NavigationServer3D o = NavigationServer3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_ninepatchrect(PyObject* other):
    cdef NinePatchRect o = NinePatchRect.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node(PyObject* other):
    cdef Node o = Node.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node2d(PyObject* other):
    cdef Node2D o = Node2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node3d(PyObject* other):
    cdef Node3D o = Node3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_node3dgizmo(PyObject* other):
    cdef Node3DGizmo o = Node3DGizmo.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_noise(PyObject* other):
    cdef Noise o = Noise.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_noisetexture2d(PyObject* other):
    cdef NoiseTexture2D o = NoiseTexture2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_noisetexture3d(PyObject* other):
    cdef NoiseTexture3D o = NoiseTexture3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_ormmaterial3d(PyObject* other):
    cdef ORMMaterial3D o = ORMMaterial3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_os(PyObject* other):
    cdef OS o = OS.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_object(PyObject* other):
    cdef Object o = Object.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_occluder3d(PyObject* other):
    cdef Occluder3D o = Occluder3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_occluderinstance3d(PyObject* other):
    cdef OccluderInstance3D o = OccluderInstance3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_occluderpolygon2d(PyObject* other):
    cdef OccluderPolygon2D o = OccluderPolygon2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_offlinemultiplayerpeer(PyObject* other):
    cdef OfflineMultiplayerPeer o = OfflineMultiplayerPeer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_oggpacketsequence(PyObject* other):
    cdef OggPacketSequence o = OggPacketSequence.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_oggpacketsequenceplayback(PyObject* other):
    cdef OggPacketSequencePlayback o = OggPacketSequencePlayback.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_omnilight3d(PyObject* other):
    cdef OmniLight3D o = OmniLight3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrapiextension(PyObject* other):
    cdef OpenXRAPIExtension o = OpenXRAPIExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxraction(PyObject* other):
    cdef OpenXRAction o = OpenXRAction.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxractionbindingmodifier(PyObject* other):
    cdef OpenXRActionBindingModifier o = OpenXRActionBindingModifier.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxractionmap(PyObject* other):
    cdef OpenXRActionMap o = OpenXRActionMap.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxractionset(PyObject* other):
    cdef OpenXRActionSet o = OpenXRActionSet.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxranalogthresholdmodifier(PyObject* other):
    cdef OpenXRAnalogThresholdModifier o = OpenXRAnalogThresholdModifier.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrbindingmodifier(PyObject* other):
    cdef OpenXRBindingModifier o = OpenXRBindingModifier.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrbindingmodifiereditor(PyObject* other):
    cdef OpenXRBindingModifierEditor o = OpenXRBindingModifierEditor.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrcompositionlayer(PyObject* other):
    cdef OpenXRCompositionLayer o = OpenXRCompositionLayer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrcompositionlayercylinder(PyObject* other):
    cdef OpenXRCompositionLayerCylinder o = OpenXRCompositionLayerCylinder.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrcompositionlayerequirect(PyObject* other):
    cdef OpenXRCompositionLayerEquirect o = OpenXRCompositionLayerEquirect.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrcompositionlayerquad(PyObject* other):
    cdef OpenXRCompositionLayerQuad o = OpenXRCompositionLayerQuad.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrdpadbindingmodifier(PyObject* other):
    cdef OpenXRDpadBindingModifier o = OpenXRDpadBindingModifier.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrextensionwrapperextension(PyObject* other):
    cdef OpenXRExtensionWrapperExtension o = OpenXRExtensionWrapperExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrhand(PyObject* other):
    cdef OpenXRHand o = OpenXRHand.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrhapticbase(PyObject* other):
    cdef OpenXRHapticBase o = OpenXRHapticBase.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrhapticvibration(PyObject* other):
    cdef OpenXRHapticVibration o = OpenXRHapticVibration.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxripbinding(PyObject* other):
    cdef OpenXRIPBinding o = OpenXRIPBinding.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxripbindingmodifier(PyObject* other):
    cdef OpenXRIPBindingModifier o = OpenXRIPBindingModifier.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrinteractionprofile(PyObject* other):
    cdef OpenXRInteractionProfile o = OpenXRInteractionProfile.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrinteractionprofileeditor(PyObject* other):
    cdef OpenXRInteractionProfileEditor o = OpenXRInteractionProfileEditor.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrinteractionprofileeditorbase(PyObject* other):
    cdef OpenXRInteractionProfileEditorBase o = OpenXRInteractionProfileEditorBase.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrinteractionprofilemetadata(PyObject* other):
    cdef OpenXRInteractionProfileMetadata o = OpenXRInteractionProfileMetadata.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrinterface(PyObject* other):
    cdef OpenXRInterface o = OpenXRInterface.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_openxrvisibilitymask(PyObject* other):
    cdef OpenXRVisibilityMask o = OpenXRVisibilityMask.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_optimizedtranslation(PyObject* other):
    cdef OptimizedTranslation o = OptimizedTranslation.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_optionbutton(PyObject* other):
    cdef OptionButton o = OptionButton.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_pckpacker(PyObject* other):
    cdef PCKPacker o = PCKPacker.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_packeddatacontainer(PyObject* other):
    cdef PackedDataContainer o = PackedDataContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_packeddatacontainerref(PyObject* other):
    cdef PackedDataContainerRef o = PackedDataContainerRef.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_packedscene(PyObject* other):
    cdef PackedScene o = PackedScene.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_packetpeer(PyObject* other):
    cdef PacketPeer o = PacketPeer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_packetpeerdtls(PyObject* other):
    cdef PacketPeerDTLS o = PacketPeerDTLS.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_packetpeerextension(PyObject* other):
    cdef PacketPeerExtension o = PacketPeerExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_packetpeerstream(PyObject* other):
    cdef PacketPeerStream o = PacketPeerStream.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_packetpeerudp(PyObject* other):
    cdef PacketPeerUDP o = PacketPeerUDP.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_panel(PyObject* other):
    cdef Panel o = Panel.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_panelcontainer(PyObject* other):
    cdef PanelContainer o = PanelContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_panoramaskymaterial(PyObject* other):
    cdef PanoramaSkyMaterial o = PanoramaSkyMaterial.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_parallax2d(PyObject* other):
    cdef Parallax2D o = Parallax2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_parallaxbackground(PyObject* other):
    cdef ParallaxBackground o = ParallaxBackground.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_parallaxlayer(PyObject* other):
    cdef ParallaxLayer o = ParallaxLayer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_particleprocessmaterial(PyObject* other):
    cdef ParticleProcessMaterial o = ParticleProcessMaterial.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_path2d(PyObject* other):
    cdef Path2D o = Path2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_path3d(PyObject* other):
    cdef Path3D o = Path3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_pathfollow2d(PyObject* other):
    cdef PathFollow2D o = PathFollow2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_pathfollow3d(PyObject* other):
    cdef PathFollow3D o = PathFollow3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_performance(PyObject* other):
    cdef Performance o = Performance.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicalbone2d(PyObject* other):
    cdef PhysicalBone2D o = PhysicalBone2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicalbone3d(PyObject* other):
    cdef PhysicalBone3D o = PhysicalBone3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicalbonesimulator3d(PyObject* other):
    cdef PhysicalBoneSimulator3D o = PhysicalBoneSimulator3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicalskymaterial(PyObject* other):
    cdef PhysicalSkyMaterial o = PhysicalSkyMaterial.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsbody2d(PyObject* other):
    cdef PhysicsBody2D o = PhysicsBody2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsbody3d(PyObject* other):
    cdef PhysicsBody3D o = PhysicsBody3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsdirectbodystate2d(PyObject* other):
    cdef PhysicsDirectBodyState2D o = PhysicsDirectBodyState2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsdirectbodystate2dextension(PyObject* other):
    cdef PhysicsDirectBodyState2DExtension o = PhysicsDirectBodyState2DExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsdirectbodystate3d(PyObject* other):
    cdef PhysicsDirectBodyState3D o = PhysicsDirectBodyState3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsdirectbodystate3dextension(PyObject* other):
    cdef PhysicsDirectBodyState3DExtension o = PhysicsDirectBodyState3DExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsdirectspacestate2d(PyObject* other):
    cdef PhysicsDirectSpaceState2D o = PhysicsDirectSpaceState2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsdirectspacestate2dextension(PyObject* other):
    cdef PhysicsDirectSpaceState2DExtension o = PhysicsDirectSpaceState2DExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsdirectspacestate3d(PyObject* other):
    cdef PhysicsDirectSpaceState3D o = PhysicsDirectSpaceState3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsdirectspacestate3dextension(PyObject* other):
    cdef PhysicsDirectSpaceState3DExtension o = PhysicsDirectSpaceState3DExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsmaterial(PyObject* other):
    cdef PhysicsMaterial o = PhysicsMaterial.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicspointqueryparameters2d(PyObject* other):
    cdef PhysicsPointQueryParameters2D o = PhysicsPointQueryParameters2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicspointqueryparameters3d(PyObject* other):
    cdef PhysicsPointQueryParameters3D o = PhysicsPointQueryParameters3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsrayqueryparameters2d(PyObject* other):
    cdef PhysicsRayQueryParameters2D o = PhysicsRayQueryParameters2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsrayqueryparameters3d(PyObject* other):
    cdef PhysicsRayQueryParameters3D o = PhysicsRayQueryParameters3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsserver2d(PyObject* other):
    cdef PhysicsServer2D o = PhysicsServer2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsserver2dextension(PyObject* other):
    cdef PhysicsServer2DExtension o = PhysicsServer2DExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsserver2dmanager(PyObject* other):
    cdef PhysicsServer2DManager o = PhysicsServer2DManager.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsserver3d(PyObject* other):
    cdef PhysicsServer3D o = PhysicsServer3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsserver3dextension(PyObject* other):
    cdef PhysicsServer3DExtension o = PhysicsServer3DExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsserver3dmanager(PyObject* other):
    cdef PhysicsServer3DManager o = PhysicsServer3DManager.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsserver3drenderingserverhandler(PyObject* other):
    cdef PhysicsServer3DRenderingServerHandler o = PhysicsServer3DRenderingServerHandler.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsshapequeryparameters2d(PyObject* other):
    cdef PhysicsShapeQueryParameters2D o = PhysicsShapeQueryParameters2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicsshapequeryparameters3d(PyObject* other):
    cdef PhysicsShapeQueryParameters3D o = PhysicsShapeQueryParameters3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicstestmotionparameters2d(PyObject* other):
    cdef PhysicsTestMotionParameters2D o = PhysicsTestMotionParameters2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicstestmotionparameters3d(PyObject* other):
    cdef PhysicsTestMotionParameters3D o = PhysicsTestMotionParameters3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicstestmotionresult2d(PyObject* other):
    cdef PhysicsTestMotionResult2D o = PhysicsTestMotionResult2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_physicstestmotionresult3d(PyObject* other):
    cdef PhysicsTestMotionResult3D o = PhysicsTestMotionResult3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_pinjoint2d(PyObject* other):
    cdef PinJoint2D o = PinJoint2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_pinjoint3d(PyObject* other):
    cdef PinJoint3D o = PinJoint3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_placeholdercubemap(PyObject* other):
    cdef PlaceholderCubemap o = PlaceholderCubemap.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_placeholdercubemaparray(PyObject* other):
    cdef PlaceholderCubemapArray o = PlaceholderCubemapArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_placeholdermaterial(PyObject* other):
    cdef PlaceholderMaterial o = PlaceholderMaterial.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_placeholdermesh(PyObject* other):
    cdef PlaceholderMesh o = PlaceholderMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_placeholdertexture2d(PyObject* other):
    cdef PlaceholderTexture2D o = PlaceholderTexture2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_placeholdertexture2darray(PyObject* other):
    cdef PlaceholderTexture2DArray o = PlaceholderTexture2DArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_placeholdertexture3d(PyObject* other):
    cdef PlaceholderTexture3D o = PlaceholderTexture3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_placeholdertexturelayered(PyObject* other):
    cdef PlaceholderTextureLayered o = PlaceholderTextureLayered.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_planemesh(PyObject* other):
    cdef PlaneMesh o = PlaneMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_pointlight2d(PyObject* other):
    cdef PointLight2D o = PointLight2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_pointmesh(PyObject* other):
    cdef PointMesh o = PointMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_polygon2d(PyObject* other):
    cdef Polygon2D o = Polygon2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_polygonoccluder3d(PyObject* other):
    cdef PolygonOccluder3D o = PolygonOccluder3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_polygonpathfinder(PyObject* other):
    cdef PolygonPathFinder o = PolygonPathFinder.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_popup(PyObject* other):
    cdef Popup o = Popup.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_popupmenu(PyObject* other):
    cdef PopupMenu o = PopupMenu.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_popuppanel(PyObject* other):
    cdef PopupPanel o = PopupPanel.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_portablecompressedtexture2d(PyObject* other):
    cdef PortableCompressedTexture2D o = PortableCompressedTexture2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_primitivemesh(PyObject* other):
    cdef PrimitiveMesh o = PrimitiveMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_prismmesh(PyObject* other):
    cdef PrismMesh o = PrismMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_proceduralskymaterial(PyObject* other):
    cdef ProceduralSkyMaterial o = ProceduralSkyMaterial.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_progressbar(PyObject* other):
    cdef ProgressBar o = ProgressBar.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_projectsettings(PyObject* other):
    cdef ProjectSettings o = ProjectSettings.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_propertytweener(PyObject* other):
    cdef PropertyTweener o = PropertyTweener.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_quadmesh(PyObject* other):
    cdef QuadMesh o = QuadMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_quadoccluder3d(PyObject* other):
    cdef QuadOccluder3D o = QuadOccluder3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdattachmentformat(PyObject* other):
    cdef RDAttachmentFormat o = RDAttachmentFormat.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdframebufferpass(PyObject* other):
    cdef RDFramebufferPass o = RDFramebufferPass.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdpipelinecolorblendstate(PyObject* other):
    cdef RDPipelineColorBlendState o = RDPipelineColorBlendState.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdpipelinecolorblendstateattachment(PyObject* other):
    cdef RDPipelineColorBlendStateAttachment o = RDPipelineColorBlendStateAttachment.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdpipelinedepthstencilstate(PyObject* other):
    cdef RDPipelineDepthStencilState o = RDPipelineDepthStencilState.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdpipelinemultisamplestate(PyObject* other):
    cdef RDPipelineMultisampleState o = RDPipelineMultisampleState.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdpipelinerasterizationstate(PyObject* other):
    cdef RDPipelineRasterizationState o = RDPipelineRasterizationState.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdpipelinespecializationconstant(PyObject* other):
    cdef RDPipelineSpecializationConstant o = RDPipelineSpecializationConstant.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdsamplerstate(PyObject* other):
    cdef RDSamplerState o = RDSamplerState.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdshaderfile(PyObject* other):
    cdef RDShaderFile o = RDShaderFile.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdshaderspirv(PyObject* other):
    cdef RDShaderSPIRV o = RDShaderSPIRV.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdshadersource(PyObject* other):
    cdef RDShaderSource o = RDShaderSource.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdtextureformat(PyObject* other):
    cdef RDTextureFormat o = RDTextureFormat.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdtextureview(PyObject* other):
    cdef RDTextureView o = RDTextureView.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rduniform(PyObject* other):
    cdef RDUniform o = RDUniform.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rdvertexattribute(PyObject* other):
    cdef RDVertexAttribute o = RDVertexAttribute.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_randomnumbergenerator(PyObject* other):
    cdef RandomNumberGenerator o = RandomNumberGenerator.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_range(PyObject* other):
    cdef Range o = Range.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_raycast2d(PyObject* other):
    cdef RayCast2D o = RayCast2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_raycast3d(PyObject* other):
    cdef RayCast3D o = RayCast3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rectangleshape2d(PyObject* other):
    cdef RectangleShape2D o = RectangleShape2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_refcounted(PyObject* other):
    cdef RefCounted o = RefCounted.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_referencerect(PyObject* other):
    cdef ReferenceRect o = ReferenceRect.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_reflectionprobe(PyObject* other):
    cdef ReflectionProbe o = ReflectionProbe.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_regex(PyObject* other):
    cdef RegEx o = RegEx.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_regexmatch(PyObject* other):
    cdef RegExMatch o = RegExMatch.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_remotetransform2d(PyObject* other):
    cdef RemoteTransform2D o = RemoteTransform2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_remotetransform3d(PyObject* other):
    cdef RemoteTransform3D o = RemoteTransform3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderdata(PyObject* other):
    cdef RenderData o = RenderData.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderdataextension(PyObject* other):
    cdef RenderDataExtension o = RenderDataExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderdatard(PyObject* other):
    cdef RenderDataRD o = RenderDataRD.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderscenebuffers(PyObject* other):
    cdef RenderSceneBuffers o = RenderSceneBuffers.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderscenebuffersconfiguration(PyObject* other):
    cdef RenderSceneBuffersConfiguration o = RenderSceneBuffersConfiguration.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderscenebuffersextension(PyObject* other):
    cdef RenderSceneBuffersExtension o = RenderSceneBuffersExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderscenebuffersrd(PyObject* other):
    cdef RenderSceneBuffersRD o = RenderSceneBuffersRD.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderscenedata(PyObject* other):
    cdef RenderSceneData o = RenderSceneData.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderscenedataextension(PyObject* other):
    cdef RenderSceneDataExtension o = RenderSceneDataExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderscenedatard(PyObject* other):
    cdef RenderSceneDataRD o = RenderSceneDataRD.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderingdevice(PyObject* other):
    cdef RenderingDevice o = RenderingDevice.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_renderingserver(PyObject* other):
    cdef RenderingServer o = RenderingServer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resource(PyObject* other):
    cdef Resource o = Resource.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceformatloader(PyObject* other):
    cdef ResourceFormatLoader o = ResourceFormatLoader.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceformatsaver(PyObject* other):
    cdef ResourceFormatSaver o = ResourceFormatSaver.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceimporter(PyObject* other):
    cdef ResourceImporter o = ResourceImporter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceimporterbmfont(PyObject* other):
    cdef ResourceImporterBMFont o = ResourceImporterBMFont.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceimporterbitmap(PyObject* other):
    cdef ResourceImporterBitMap o = ResourceImporterBitMap.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceimportercsvtranslation(PyObject* other):
    cdef ResourceImporterCSVTranslation o = ResourceImporterCSVTranslation.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceimporterdynamicfont(PyObject* other):
    cdef ResourceImporterDynamicFont o = ResourceImporterDynamicFont.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceimporterimage(PyObject* other):
    cdef ResourceImporterImage o = ResourceImporterImage.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceimporterimagefont(PyObject* other):
    cdef ResourceImporterImageFont o = ResourceImporterImageFont.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceimporterlayeredtexture(PyObject* other):
    cdef ResourceImporterLayeredTexture o = ResourceImporterLayeredTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceimportermp3(PyObject* other):
    cdef ResourceImporterMP3 o = ResourceImporterMP3.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceimporterobj(PyObject* other):
    cdef ResourceImporterOBJ o = ResourceImporterOBJ.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceimporteroggvorbis(PyObject* other):
    cdef ResourceImporterOggVorbis o = ResourceImporterOggVorbis.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceimporterscene(PyObject* other):
    cdef ResourceImporterScene o = ResourceImporterScene.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceimportershaderfile(PyObject* other):
    cdef ResourceImporterShaderFile o = ResourceImporterShaderFile.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceimportertexture(PyObject* other):
    cdef ResourceImporterTexture o = ResourceImporterTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceimportertextureatlas(PyObject* other):
    cdef ResourceImporterTextureAtlas o = ResourceImporterTextureAtlas.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceimporterwav(PyObject* other):
    cdef ResourceImporterWAV o = ResourceImporterWAV.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceloader(PyObject* other):
    cdef ResourceLoader o = ResourceLoader.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourcepreloader(PyObject* other):
    cdef ResourcePreloader o = ResourcePreloader.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourcesaver(PyObject* other):
    cdef ResourceSaver o = ResourceSaver.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_resourceuid(PyObject* other):
    cdef ResourceUID o = ResourceUID.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_retargetmodifier3d(PyObject* other):
    cdef RetargetModifier3D o = RetargetModifier3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_ribbontrailmesh(PyObject* other):
    cdef RibbonTrailMesh o = RibbonTrailMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_richtexteffect(PyObject* other):
    cdef RichTextEffect o = RichTextEffect.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_richtextlabel(PyObject* other):
    cdef RichTextLabel o = RichTextLabel.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rigidbody2d(PyObject* other):
    cdef RigidBody2D o = RigidBody2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rigidbody3d(PyObject* other):
    cdef RigidBody3D o = RigidBody3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_rootmotionview(PyObject* other):
    cdef RootMotionView o = RootMotionView.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scenemultiplayer(PyObject* other):
    cdef SceneMultiplayer o = SceneMultiplayer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scenereplicationconfig(PyObject* other):
    cdef SceneReplicationConfig o = SceneReplicationConfig.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scenestate(PyObject* other):
    cdef SceneState o = SceneState.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scenetree(PyObject* other):
    cdef SceneTree o = SceneTree.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scenetreetimer(PyObject* other):
    cdef SceneTreeTimer o = SceneTreeTimer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_script(PyObject* other):
    cdef Script o = Script.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scriptcreatedialog(PyObject* other):
    cdef ScriptCreateDialog o = ScriptCreateDialog.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scripteditor(PyObject* other):
    cdef ScriptEditor o = ScriptEditor.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scripteditorbase(PyObject* other):
    cdef ScriptEditorBase o = ScriptEditorBase.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scriptextension(PyObject* other):
    cdef ScriptExtension o = ScriptExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scriptlanguage(PyObject* other):
    cdef ScriptLanguage o = ScriptLanguage.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scriptlanguageextension(PyObject* other):
    cdef ScriptLanguageExtension o = ScriptLanguageExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scrollbar(PyObject* other):
    cdef ScrollBar o = ScrollBar.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_scrollcontainer(PyObject* other):
    cdef ScrollContainer o = ScrollContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_segmentshape2d(PyObject* other):
    cdef SegmentShape2D o = SegmentShape2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_semaphore(PyObject* other):
    cdef Semaphore o = Semaphore.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_separationrayshape2d(PyObject* other):
    cdef SeparationRayShape2D o = SeparationRayShape2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_separationrayshape3d(PyObject* other):
    cdef SeparationRayShape3D o = SeparationRayShape3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_separator(PyObject* other):
    cdef Separator o = Separator.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shader(PyObject* other):
    cdef Shader o = Shader.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shaderglobalsoverride(PyObject* other):
    cdef ShaderGlobalsOverride o = ShaderGlobalsOverride.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shaderinclude(PyObject* other):
    cdef ShaderInclude o = ShaderInclude.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shaderincludedb(PyObject* other):
    cdef ShaderIncludeDB o = ShaderIncludeDB.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shadermaterial(PyObject* other):
    cdef ShaderMaterial o = ShaderMaterial.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shape2d(PyObject* other):
    cdef Shape2D o = Shape2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shape3d(PyObject* other):
    cdef Shape3D o = Shape3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shapecast2d(PyObject* other):
    cdef ShapeCast2D o = ShapeCast2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shapecast3d(PyObject* other):
    cdef ShapeCast3D o = ShapeCast3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_shortcut(PyObject* other):
    cdef Shortcut o = Shortcut.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeleton2d(PyObject* other):
    cdef Skeleton2D o = Skeleton2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeleton3d(PyObject* other):
    cdef Skeleton3D o = Skeleton3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeletonik3d(PyObject* other):
    cdef SkeletonIK3D o = SkeletonIK3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeletonmodification2d(PyObject* other):
    cdef SkeletonModification2D o = SkeletonModification2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeletonmodification2dccdik(PyObject* other):
    cdef SkeletonModification2DCCDIK o = SkeletonModification2DCCDIK.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeletonmodification2dfabrik(PyObject* other):
    cdef SkeletonModification2DFABRIK o = SkeletonModification2DFABRIK.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeletonmodification2djiggle(PyObject* other):
    cdef SkeletonModification2DJiggle o = SkeletonModification2DJiggle.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeletonmodification2dlookat(PyObject* other):
    cdef SkeletonModification2DLookAt o = SkeletonModification2DLookAt.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeletonmodification2dphysicalbones(PyObject* other):
    cdef SkeletonModification2DPhysicalBones o = SkeletonModification2DPhysicalBones.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeletonmodification2dstackholder(PyObject* other):
    cdef SkeletonModification2DStackHolder o = SkeletonModification2DStackHolder.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeletonmodification2dtwoboneik(PyObject* other):
    cdef SkeletonModification2DTwoBoneIK o = SkeletonModification2DTwoBoneIK.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeletonmodificationstack2d(PyObject* other):
    cdef SkeletonModificationStack2D o = SkeletonModificationStack2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeletonmodifier3d(PyObject* other):
    cdef SkeletonModifier3D o = SkeletonModifier3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeletonprofile(PyObject* other):
    cdef SkeletonProfile o = SkeletonProfile.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skeletonprofilehumanoid(PyObject* other):
    cdef SkeletonProfileHumanoid o = SkeletonProfileHumanoid.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skin(PyObject* other):
    cdef Skin o = Skin.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_skinreference(PyObject* other):
    cdef SkinReference o = SkinReference.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_sky(PyObject* other):
    cdef Sky o = Sky.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_slider(PyObject* other):
    cdef Slider o = Slider.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_sliderjoint3d(PyObject* other):
    cdef SliderJoint3D o = SliderJoint3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_softbody3d(PyObject* other):
    cdef SoftBody3D o = SoftBody3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_spheremesh(PyObject* other):
    cdef SphereMesh o = SphereMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_sphereoccluder3d(PyObject* other):
    cdef SphereOccluder3D o = SphereOccluder3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_sphereshape3d(PyObject* other):
    cdef SphereShape3D o = SphereShape3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_spinbox(PyObject* other):
    cdef SpinBox o = SpinBox.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_splitcontainer(PyObject* other):
    cdef SplitContainer o = SplitContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_spotlight3d(PyObject* other):
    cdef SpotLight3D o = SpotLight3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_springarm3d(PyObject* other):
    cdef SpringArm3D o = SpringArm3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_springbonecollision3d(PyObject* other):
    cdef SpringBoneCollision3D o = SpringBoneCollision3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_springbonecollisioncapsule3d(PyObject* other):
    cdef SpringBoneCollisionCapsule3D o = SpringBoneCollisionCapsule3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_springbonecollisionplane3d(PyObject* other):
    cdef SpringBoneCollisionPlane3D o = SpringBoneCollisionPlane3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_springbonecollisionsphere3d(PyObject* other):
    cdef SpringBoneCollisionSphere3D o = SpringBoneCollisionSphere3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_springbonesimulator3d(PyObject* other):
    cdef SpringBoneSimulator3D o = SpringBoneSimulator3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_sprite2d(PyObject* other):
    cdef Sprite2D o = Sprite2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_sprite3d(PyObject* other):
    cdef Sprite3D o = Sprite3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_spritebase3d(PyObject* other):
    cdef SpriteBase3D o = SpriteBase3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_spriteframes(PyObject* other):
    cdef SpriteFrames o = SpriteFrames.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_standardmaterial3d(PyObject* other):
    cdef StandardMaterial3D o = StandardMaterial3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_staticbody2d(PyObject* other):
    cdef StaticBody2D o = StaticBody2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_staticbody3d(PyObject* other):
    cdef StaticBody3D o = StaticBody3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_statusindicator(PyObject* other):
    cdef StatusIndicator o = StatusIndicator.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_streampeer(PyObject* other):
    cdef StreamPeer o = StreamPeer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_streampeerbuffer(PyObject* other):
    cdef StreamPeerBuffer o = StreamPeerBuffer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_streampeerextension(PyObject* other):
    cdef StreamPeerExtension o = StreamPeerExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_streampeergzip(PyObject* other):
    cdef StreamPeerGZIP o = StreamPeerGZIP.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_streampeertcp(PyObject* other):
    cdef StreamPeerTCP o = StreamPeerTCP.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_streampeertls(PyObject* other):
    cdef StreamPeerTLS o = StreamPeerTLS.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_stylebox(PyObject* other):
    cdef StyleBox o = StyleBox.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_styleboxempty(PyObject* other):
    cdef StyleBoxEmpty o = StyleBoxEmpty.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_styleboxflat(PyObject* other):
    cdef StyleBoxFlat o = StyleBoxFlat.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_styleboxline(PyObject* other):
    cdef StyleBoxLine o = StyleBoxLine.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_styleboxtexture(PyObject* other):
    cdef StyleBoxTexture o = StyleBoxTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_subviewport(PyObject* other):
    cdef SubViewport o = SubViewport.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_subviewportcontainer(PyObject* other):
    cdef SubViewportContainer o = SubViewportContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_subtweentweener(PyObject* other):
    cdef SubtweenTweener o = SubtweenTweener.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_surfacetool(PyObject* other):
    cdef SurfaceTool o = SurfaceTool.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_syntaxhighlighter(PyObject* other):
    cdef SyntaxHighlighter o = SyntaxHighlighter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_systemfont(PyObject* other):
    cdef SystemFont o = SystemFont.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tcpserver(PyObject* other):
    cdef TCPServer o = TCPServer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tlsoptions(PyObject* other):
    cdef TLSOptions o = TLSOptions.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tabbar(PyObject* other):
    cdef TabBar o = TabBar.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tabcontainer(PyObject* other):
    cdef TabContainer o = TabContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_textedit(PyObject* other):
    cdef TextEdit o = TextEdit.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_textline(PyObject* other):
    cdef TextLine o = TextLine.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_textmesh(PyObject* other):
    cdef TextMesh o = TextMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_textparagraph(PyObject* other):
    cdef TextParagraph o = TextParagraph.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_textserver(PyObject* other):
    cdef TextServer o = TextServer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_textserveradvanced(PyObject* other):
    cdef TextServerAdvanced o = TextServerAdvanced.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_textserverdummy(PyObject* other):
    cdef TextServerDummy o = TextServerDummy.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_textserverextension(PyObject* other):
    cdef TextServerExtension o = TextServerExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_textservermanager(PyObject* other):
    cdef TextServerManager o = TextServerManager.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture(PyObject* other):
    cdef Texture o = Texture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture2d(PyObject* other):
    cdef Texture2D o = Texture2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture2darray(PyObject* other):
    cdef Texture2DArray o = Texture2DArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture2darrayrd(PyObject* other):
    cdef Texture2DArrayRD o = Texture2DArrayRD.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture2drd(PyObject* other):
    cdef Texture2DRD o = Texture2DRD.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture3d(PyObject* other):
    cdef Texture3D o = Texture3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texture3drd(PyObject* other):
    cdef Texture3DRD o = Texture3DRD.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texturebutton(PyObject* other):
    cdef TextureButton o = TextureButton.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texturecubemaparrayrd(PyObject* other):
    cdef TextureCubemapArrayRD o = TextureCubemapArrayRD.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texturecubemaprd(PyObject* other):
    cdef TextureCubemapRD o = TextureCubemapRD.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texturelayered(PyObject* other):
    cdef TextureLayered o = TextureLayered.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texturelayeredrd(PyObject* other):
    cdef TextureLayeredRD o = TextureLayeredRD.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_textureprogressbar(PyObject* other):
    cdef TextureProgressBar o = TextureProgressBar.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_texturerect(PyObject* other):
    cdef TextureRect o = TextureRect.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_theme(PyObject* other):
    cdef Theme o = Theme.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_themedb(PyObject* other):
    cdef ThemeDB o = ThemeDB.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_thread(PyObject* other):
    cdef Thread o = Thread.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tiledata(PyObject* other):
    cdef TileData o = TileData.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tilemap(PyObject* other):
    cdef TileMap o = TileMap.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tilemaplayer(PyObject* other):
    cdef TileMapLayer o = TileMapLayer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tilemappattern(PyObject* other):
    cdef TileMapPattern o = TileMapPattern.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tileset(PyObject* other):
    cdef TileSet o = TileSet.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tilesetatlassource(PyObject* other):
    cdef TileSetAtlasSource o = TileSetAtlasSource.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tilesetscenescollectionsource(PyObject* other):
    cdef TileSetScenesCollectionSource o = TileSetScenesCollectionSource.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tilesetsource(PyObject* other):
    cdef TileSetSource o = TileSetSource.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_time(PyObject* other):
    cdef Time o = Time.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_timer(PyObject* other):
    cdef Timer o = Timer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_torusmesh(PyObject* other):
    cdef TorusMesh o = TorusMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_touchscreenbutton(PyObject* other):
    cdef TouchScreenButton o = TouchScreenButton.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_translation(PyObject* other):
    cdef Translation o = Translation.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_translationdomain(PyObject* other):
    cdef TranslationDomain o = TranslationDomain.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_translationserver(PyObject* other):
    cdef TranslationServer o = TranslationServer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tree(PyObject* other):
    cdef Tree o = Tree.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_treeitem(PyObject* other):
    cdef TreeItem o = TreeItem.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_trianglemesh(PyObject* other):
    cdef TriangleMesh o = TriangleMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tubetrailmesh(PyObject* other):
    cdef TubeTrailMesh o = TubeTrailMesh.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tween(PyObject* other):
    cdef Tween o = Tween.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_tweener(PyObject* other):
    cdef Tweener o = Tweener.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_udpserver(PyObject* other):
    cdef UDPServer o = UDPServer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_upnp(PyObject* other):
    cdef UPNP o = UPNP.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_upnpdevice(PyObject* other):
    cdef UPNPDevice o = UPNPDevice.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_undoredo(PyObject* other):
    cdef UndoRedo o = UndoRedo.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_uniformsetcacherd(PyObject* other):
    cdef UniformSetCacheRD o = UniformSetCacheRD.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vboxcontainer(PyObject* other):
    cdef VBoxContainer o = VBoxContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vflowcontainer(PyObject* other):
    cdef VFlowContainer o = VFlowContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vscrollbar(PyObject* other):
    cdef VScrollBar o = VScrollBar.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vseparator(PyObject* other):
    cdef VSeparator o = VSeparator.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vslider(PyObject* other):
    cdef VSlider o = VSlider.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vsplitcontainer(PyObject* other):
    cdef VSplitContainer o = VSplitContainer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vehiclebody3d(PyObject* other):
    cdef VehicleBody3D o = VehicleBody3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_vehiclewheel3d(PyObject* other):
    cdef VehicleWheel3D o = VehicleWheel3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_videostream(PyObject* other):
    cdef VideoStream o = VideoStream.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_videostreamplayback(PyObject* other):
    cdef VideoStreamPlayback o = VideoStreamPlayback.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_videostreamplayer(PyObject* other):
    cdef VideoStreamPlayer o = VideoStreamPlayer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_videostreamtheora(PyObject* other):
    cdef VideoStreamTheora o = VideoStreamTheora.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_viewport(PyObject* other):
    cdef Viewport o = Viewport.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_viewporttexture(PyObject* other):
    cdef ViewportTexture o = ViewportTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visibleonscreenenabler2d(PyObject* other):
    cdef VisibleOnScreenEnabler2D o = VisibleOnScreenEnabler2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visibleonscreenenabler3d(PyObject* other):
    cdef VisibleOnScreenEnabler3D o = VisibleOnScreenEnabler3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visibleonscreennotifier2d(PyObject* other):
    cdef VisibleOnScreenNotifier2D o = VisibleOnScreenNotifier2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visibleonscreennotifier3d(PyObject* other):
    cdef VisibleOnScreenNotifier3D o = VisibleOnScreenNotifier3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualinstance3d(PyObject* other):
    cdef VisualInstance3D o = VisualInstance3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshader(PyObject* other):
    cdef VisualShader o = VisualShader.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernode(PyObject* other):
    cdef VisualShaderNode o = VisualShaderNode.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodebillboard(PyObject* other):
    cdef VisualShaderNodeBillboard o = VisualShaderNodeBillboard.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodebooleanconstant(PyObject* other):
    cdef VisualShaderNodeBooleanConstant o = VisualShaderNodeBooleanConstant.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodebooleanparameter(PyObject* other):
    cdef VisualShaderNodeBooleanParameter o = VisualShaderNodeBooleanParameter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeclamp(PyObject* other):
    cdef VisualShaderNodeClamp o = VisualShaderNodeClamp.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodecolorconstant(PyObject* other):
    cdef VisualShaderNodeColorConstant o = VisualShaderNodeColorConstant.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodecolorfunc(PyObject* other):
    cdef VisualShaderNodeColorFunc o = VisualShaderNodeColorFunc.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodecolorop(PyObject* other):
    cdef VisualShaderNodeColorOp o = VisualShaderNodeColorOp.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodecolorparameter(PyObject* other):
    cdef VisualShaderNodeColorParameter o = VisualShaderNodeColorParameter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodecomment(PyObject* other):
    cdef VisualShaderNodeComment o = VisualShaderNodeComment.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodecompare(PyObject* other):
    cdef VisualShaderNodeCompare o = VisualShaderNodeCompare.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeconstant(PyObject* other):
    cdef VisualShaderNodeConstant o = VisualShaderNodeConstant.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodecubemap(PyObject* other):
    cdef VisualShaderNodeCubemap o = VisualShaderNodeCubemap.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodecubemapparameter(PyObject* other):
    cdef VisualShaderNodeCubemapParameter o = VisualShaderNodeCubemapParameter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodecurvetexture(PyObject* other):
    cdef VisualShaderNodeCurveTexture o = VisualShaderNodeCurveTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodecurvexyztexture(PyObject* other):
    cdef VisualShaderNodeCurveXYZTexture o = VisualShaderNodeCurveXYZTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodecustom(PyObject* other):
    cdef VisualShaderNodeCustom o = VisualShaderNodeCustom.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodederivativefunc(PyObject* other):
    cdef VisualShaderNodeDerivativeFunc o = VisualShaderNodeDerivativeFunc.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodedeterminant(PyObject* other):
    cdef VisualShaderNodeDeterminant o = VisualShaderNodeDeterminant.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodedistancefade(PyObject* other):
    cdef VisualShaderNodeDistanceFade o = VisualShaderNodeDistanceFade.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodedotproduct(PyObject* other):
    cdef VisualShaderNodeDotProduct o = VisualShaderNodeDotProduct.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeexpression(PyObject* other):
    cdef VisualShaderNodeExpression o = VisualShaderNodeExpression.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodefaceforward(PyObject* other):
    cdef VisualShaderNodeFaceForward o = VisualShaderNodeFaceForward.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodefloatconstant(PyObject* other):
    cdef VisualShaderNodeFloatConstant o = VisualShaderNodeFloatConstant.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodefloatfunc(PyObject* other):
    cdef VisualShaderNodeFloatFunc o = VisualShaderNodeFloatFunc.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodefloatop(PyObject* other):
    cdef VisualShaderNodeFloatOp o = VisualShaderNodeFloatOp.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodefloatparameter(PyObject* other):
    cdef VisualShaderNodeFloatParameter o = VisualShaderNodeFloatParameter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeframe(PyObject* other):
    cdef VisualShaderNodeFrame o = VisualShaderNodeFrame.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodefresnel(PyObject* other):
    cdef VisualShaderNodeFresnel o = VisualShaderNodeFresnel.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeglobalexpression(PyObject* other):
    cdef VisualShaderNodeGlobalExpression o = VisualShaderNodeGlobalExpression.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodegroupbase(PyObject* other):
    cdef VisualShaderNodeGroupBase o = VisualShaderNodeGroupBase.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeif(PyObject* other):
    cdef VisualShaderNodeIf o = VisualShaderNodeIf.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeinput(PyObject* other):
    cdef VisualShaderNodeInput o = VisualShaderNodeInput.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeintconstant(PyObject* other):
    cdef VisualShaderNodeIntConstant o = VisualShaderNodeIntConstant.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeintfunc(PyObject* other):
    cdef VisualShaderNodeIntFunc o = VisualShaderNodeIntFunc.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeintop(PyObject* other):
    cdef VisualShaderNodeIntOp o = VisualShaderNodeIntOp.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeintparameter(PyObject* other):
    cdef VisualShaderNodeIntParameter o = VisualShaderNodeIntParameter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeis(PyObject* other):
    cdef VisualShaderNodeIs o = VisualShaderNodeIs.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodelinearscenedepth(PyObject* other):
    cdef VisualShaderNodeLinearSceneDepth o = VisualShaderNodeLinearSceneDepth.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodemix(PyObject* other):
    cdef VisualShaderNodeMix o = VisualShaderNodeMix.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodemultiplyadd(PyObject* other):
    cdef VisualShaderNodeMultiplyAdd o = VisualShaderNodeMultiplyAdd.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeouterproduct(PyObject* other):
    cdef VisualShaderNodeOuterProduct o = VisualShaderNodeOuterProduct.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeoutput(PyObject* other):
    cdef VisualShaderNodeOutput o = VisualShaderNodeOutput.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeparameter(PyObject* other):
    cdef VisualShaderNodeParameter o = VisualShaderNodeParameter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeparameterref(PyObject* other):
    cdef VisualShaderNodeParameterRef o = VisualShaderNodeParameterRef.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeparticleaccelerator(PyObject* other):
    cdef VisualShaderNodeParticleAccelerator o = VisualShaderNodeParticleAccelerator.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeparticleboxemitter(PyObject* other):
    cdef VisualShaderNodeParticleBoxEmitter o = VisualShaderNodeParticleBoxEmitter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeparticleconevelocity(PyObject* other):
    cdef VisualShaderNodeParticleConeVelocity o = VisualShaderNodeParticleConeVelocity.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeparticleemit(PyObject* other):
    cdef VisualShaderNodeParticleEmit o = VisualShaderNodeParticleEmit.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeparticleemitter(PyObject* other):
    cdef VisualShaderNodeParticleEmitter o = VisualShaderNodeParticleEmitter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeparticlemeshemitter(PyObject* other):
    cdef VisualShaderNodeParticleMeshEmitter o = VisualShaderNodeParticleMeshEmitter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeparticlemultiplybyaxisangle(PyObject* other):
    cdef VisualShaderNodeParticleMultiplyByAxisAngle o = VisualShaderNodeParticleMultiplyByAxisAngle.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeparticleoutput(PyObject* other):
    cdef VisualShaderNodeParticleOutput o = VisualShaderNodeParticleOutput.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeparticlerandomness(PyObject* other):
    cdef VisualShaderNodeParticleRandomness o = VisualShaderNodeParticleRandomness.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeparticleringemitter(PyObject* other):
    cdef VisualShaderNodeParticleRingEmitter o = VisualShaderNodeParticleRingEmitter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeparticlesphereemitter(PyObject* other):
    cdef VisualShaderNodeParticleSphereEmitter o = VisualShaderNodeParticleSphereEmitter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeproximityfade(PyObject* other):
    cdef VisualShaderNodeProximityFade o = VisualShaderNodeProximityFade.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernoderandomrange(PyObject* other):
    cdef VisualShaderNodeRandomRange o = VisualShaderNodeRandomRange.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernoderemap(PyObject* other):
    cdef VisualShaderNodeRemap o = VisualShaderNodeRemap.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodereroute(PyObject* other):
    cdef VisualShaderNodeReroute o = VisualShaderNodeReroute.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernoderesizablebase(PyObject* other):
    cdef VisualShaderNodeResizableBase o = VisualShaderNodeResizableBase.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernoderotationbyaxis(PyObject* other):
    cdef VisualShaderNodeRotationByAxis o = VisualShaderNodeRotationByAxis.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodesdfraymarch(PyObject* other):
    cdef VisualShaderNodeSDFRaymarch o = VisualShaderNodeSDFRaymarch.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodesdftoscreenuv(PyObject* other):
    cdef VisualShaderNodeSDFToScreenUV o = VisualShaderNodeSDFToScreenUV.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodesample3d(PyObject* other):
    cdef VisualShaderNodeSample3D o = VisualShaderNodeSample3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodescreennormalworldspace(PyObject* other):
    cdef VisualShaderNodeScreenNormalWorldSpace o = VisualShaderNodeScreenNormalWorldSpace.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodescreenuvtosdf(PyObject* other):
    cdef VisualShaderNodeScreenUVToSDF o = VisualShaderNodeScreenUVToSDF.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodesmoothstep(PyObject* other):
    cdef VisualShaderNodeSmoothStep o = VisualShaderNodeSmoothStep.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodestep(PyObject* other):
    cdef VisualShaderNodeStep o = VisualShaderNodeStep.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeswitch(PyObject* other):
    cdef VisualShaderNodeSwitch o = VisualShaderNodeSwitch.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodetexture(PyObject* other):
    cdef VisualShaderNodeTexture o = VisualShaderNodeTexture.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodetexture2darray(PyObject* other):
    cdef VisualShaderNodeTexture2DArray o = VisualShaderNodeTexture2DArray.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodetexture2darrayparameter(PyObject* other):
    cdef VisualShaderNodeTexture2DArrayParameter o = VisualShaderNodeTexture2DArrayParameter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodetexture2dparameter(PyObject* other):
    cdef VisualShaderNodeTexture2DParameter o = VisualShaderNodeTexture2DParameter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodetexture3d(PyObject* other):
    cdef VisualShaderNodeTexture3D o = VisualShaderNodeTexture3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodetexture3dparameter(PyObject* other):
    cdef VisualShaderNodeTexture3DParameter o = VisualShaderNodeTexture3DParameter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodetextureparameter(PyObject* other):
    cdef VisualShaderNodeTextureParameter o = VisualShaderNodeTextureParameter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodetextureparametertriplanar(PyObject* other):
    cdef VisualShaderNodeTextureParameterTriplanar o = VisualShaderNodeTextureParameterTriplanar.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodetexturesdf(PyObject* other):
    cdef VisualShaderNodeTextureSDF o = VisualShaderNodeTextureSDF.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodetexturesdfnormal(PyObject* other):
    cdef VisualShaderNodeTextureSDFNormal o = VisualShaderNodeTextureSDFNormal.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodetransformcompose(PyObject* other):
    cdef VisualShaderNodeTransformCompose o = VisualShaderNodeTransformCompose.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodetransformconstant(PyObject* other):
    cdef VisualShaderNodeTransformConstant o = VisualShaderNodeTransformConstant.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodetransformdecompose(PyObject* other):
    cdef VisualShaderNodeTransformDecompose o = VisualShaderNodeTransformDecompose.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodetransformfunc(PyObject* other):
    cdef VisualShaderNodeTransformFunc o = VisualShaderNodeTransformFunc.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodetransformop(PyObject* other):
    cdef VisualShaderNodeTransformOp o = VisualShaderNodeTransformOp.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodetransformparameter(PyObject* other):
    cdef VisualShaderNodeTransformParameter o = VisualShaderNodeTransformParameter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodetransformvecmult(PyObject* other):
    cdef VisualShaderNodeTransformVecMult o = VisualShaderNodeTransformVecMult.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeuintconstant(PyObject* other):
    cdef VisualShaderNodeUIntConstant o = VisualShaderNodeUIntConstant.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeuintfunc(PyObject* other):
    cdef VisualShaderNodeUIntFunc o = VisualShaderNodeUIntFunc.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeuintop(PyObject* other):
    cdef VisualShaderNodeUIntOp o = VisualShaderNodeUIntOp.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeuintparameter(PyObject* other):
    cdef VisualShaderNodeUIntParameter o = VisualShaderNodeUIntParameter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeuvfunc(PyObject* other):
    cdef VisualShaderNodeUVFunc o = VisualShaderNodeUVFunc.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeuvpolarcoord(PyObject* other):
    cdef VisualShaderNodeUVPolarCoord o = VisualShaderNodeUVPolarCoord.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodevarying(PyObject* other):
    cdef VisualShaderNodeVarying o = VisualShaderNodeVarying.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodevaryinggetter(PyObject* other):
    cdef VisualShaderNodeVaryingGetter o = VisualShaderNodeVaryingGetter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodevaryingsetter(PyObject* other):
    cdef VisualShaderNodeVaryingSetter o = VisualShaderNodeVaryingSetter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodevec2constant(PyObject* other):
    cdef VisualShaderNodeVec2Constant o = VisualShaderNodeVec2Constant.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodevec2parameter(PyObject* other):
    cdef VisualShaderNodeVec2Parameter o = VisualShaderNodeVec2Parameter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodevec3constant(PyObject* other):
    cdef VisualShaderNodeVec3Constant o = VisualShaderNodeVec3Constant.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodevec3parameter(PyObject* other):
    cdef VisualShaderNodeVec3Parameter o = VisualShaderNodeVec3Parameter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodevec4constant(PyObject* other):
    cdef VisualShaderNodeVec4Constant o = VisualShaderNodeVec4Constant.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodevec4parameter(PyObject* other):
    cdef VisualShaderNodeVec4Parameter o = VisualShaderNodeVec4Parameter.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodevectorbase(PyObject* other):
    cdef VisualShaderNodeVectorBase o = VisualShaderNodeVectorBase.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodevectorcompose(PyObject* other):
    cdef VisualShaderNodeVectorCompose o = VisualShaderNodeVectorCompose.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodevectordecompose(PyObject* other):
    cdef VisualShaderNodeVectorDecompose o = VisualShaderNodeVectorDecompose.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodevectordistance(PyObject* other):
    cdef VisualShaderNodeVectorDistance o = VisualShaderNodeVectorDistance.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodevectorfunc(PyObject* other):
    cdef VisualShaderNodeVectorFunc o = VisualShaderNodeVectorFunc.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodevectorlen(PyObject* other):
    cdef VisualShaderNodeVectorLen o = VisualShaderNodeVectorLen.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodevectorop(PyObject* other):
    cdef VisualShaderNodeVectorOp o = VisualShaderNodeVectorOp.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodevectorrefract(PyObject* other):
    cdef VisualShaderNodeVectorRefract o = VisualShaderNodeVectorRefract.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_visualshadernodeworldpositionfromdepth(PyObject* other):
    cdef VisualShaderNodeWorldPositionFromDepth o = VisualShaderNodeWorldPositionFromDepth.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_voxelgi(PyObject* other):
    cdef VoxelGI o = VoxelGI.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_voxelgidata(PyObject* other):
    cdef VoxelGIData o = VoxelGIData.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_weakref(PyObject* other):
    cdef WeakRef o = WeakRef.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_webrtcdatachannel(PyObject* other):
    cdef WebRTCDataChannel o = WebRTCDataChannel.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_webrtcdatachannelextension(PyObject* other):
    cdef WebRTCDataChannelExtension o = WebRTCDataChannelExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_webrtcmultiplayerpeer(PyObject* other):
    cdef WebRTCMultiplayerPeer o = WebRTCMultiplayerPeer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_webrtcpeerconnection(PyObject* other):
    cdef WebRTCPeerConnection o = WebRTCPeerConnection.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_webrtcpeerconnectionextension(PyObject* other):
    cdef WebRTCPeerConnectionExtension o = WebRTCPeerConnectionExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_websocketmultiplayerpeer(PyObject* other):
    cdef WebSocketMultiplayerPeer o = WebSocketMultiplayerPeer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_websocketpeer(PyObject* other):
    cdef WebSocketPeer o = WebSocketPeer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_webxrinterface(PyObject* other):
    cdef WebXRInterface o = WebXRInterface.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_window(PyObject* other):
    cdef Window o = Window.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_workerthreadpool(PyObject* other):
    cdef WorkerThreadPool o = WorkerThreadPool.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_world2d(PyObject* other):
    cdef World2D o = World2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_world3d(PyObject* other):
    cdef World3D o = World3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_worldboundaryshape2d(PyObject* other):
    cdef WorldBoundaryShape2D o = WorldBoundaryShape2D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_worldboundaryshape3d(PyObject* other):
    cdef WorldBoundaryShape3D o = WorldBoundaryShape3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_worldenvironment(PyObject* other):
    cdef WorldEnvironment o = WorldEnvironment.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_x509certificate(PyObject* other):
    cdef X509Certificate o = X509Certificate.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xmlparser(PyObject* other):
    cdef XMLParser o = XMLParser.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xranchor3d(PyObject* other):
    cdef XRAnchor3D o = XRAnchor3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrbodymodifier3d(PyObject* other):
    cdef XRBodyModifier3D o = XRBodyModifier3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrbodytracker(PyObject* other):
    cdef XRBodyTracker o = XRBodyTracker.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrcamera3d(PyObject* other):
    cdef XRCamera3D o = XRCamera3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrcontroller3d(PyObject* other):
    cdef XRController3D o = XRController3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrcontrollertracker(PyObject* other):
    cdef XRControllerTracker o = XRControllerTracker.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrfacemodifier3d(PyObject* other):
    cdef XRFaceModifier3D o = XRFaceModifier3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrfacetracker(PyObject* other):
    cdef XRFaceTracker o = XRFaceTracker.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrhandmodifier3d(PyObject* other):
    cdef XRHandModifier3D o = XRHandModifier3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrhandtracker(PyObject* other):
    cdef XRHandTracker o = XRHandTracker.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrinterface(PyObject* other):
    cdef XRInterface o = XRInterface.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrinterfaceextension(PyObject* other):
    cdef XRInterfaceExtension o = XRInterfaceExtension.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrnode3d(PyObject* other):
    cdef XRNode3D o = XRNode3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrorigin3d(PyObject* other):
    cdef XROrigin3D o = XROrigin3D.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrpose(PyObject* other):
    cdef XRPose o = XRPose.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrpositionaltracker(PyObject* other):
    cdef XRPositionalTracker o = XRPositionalTracker.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrserver(PyObject* other):
    cdef XRServer o = XRServer.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrtracker(PyObject* other):
    cdef XRTracker o = XRTracker.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_xrvrs(PyObject* other):
    cdef XRVRS o = XRVRS.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_zippacker(PyObject* other):
    cdef ZIPPacker o = ZIPPacker.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
cdef api PyObject* cast_to_zipreader(PyObject* other):
    cdef ZIPReader o = ZIPReader.cast_without_reference(<Object>other)
    vals.append(o)
    return <PyObject*>o
