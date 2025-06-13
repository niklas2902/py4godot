#!/usr/bin/env python3
"""
Create Test Project for py4godot ARM64
This script creates a minimal Godot project to test py4godot ARM64 builds.

Usage: python create_test_project.py [project_name]
"""

import os
import sys
import shutil
import json
import argparse
from pathlib import Path

def create_test_project(project_dir="test-arm64-project"):
    """Create a minimal Godot project for testing py4godot ARM64."""
    print(f"=== Creating test project: {project_dir} ===\n")
    
    # Create project directory
    os.makedirs(project_dir, exist_ok=True)
    
    # Create project.godot
    project_content = """[application]
config/name="py4godot ARM64 Test"
config/features=PackedStringArray("4.4")

[editor_plugins]
enabled=PackedStringArray("res://addons/py4godot/plugin.cfg")

[rendering]
renderer/rendering_method="mobile"
"""
    
    with open(os.path.join(project_dir, "project.godot"), "w") as f:
        f.write(project_content)
    print("✓ Created project.godot")
    
    # Create addon directory
    addon_dir = os.path.join(project_dir, "addons", "py4godot")
    os.makedirs(addon_dir, exist_ok=True)
    
    # Copy python.gdextension (relative to repository root)
    repo_root = os.path.join(os.path.dirname(__file__), "..", "..")
    gdext_source = os.path.join(repo_root, "build_resources/python.gdextension")
    if os.path.exists(gdext_source):
        shutil.copy(gdext_source, addon_dir)
        print("✓ Copied python.gdextension")
    else:
        print("⚠️  python.gdextension not found!")
    
    # Create plugin.cfg
    plugin_content = """[plugin]

name="py4godot"
description="Python language support for Godot 4"
author="Niklas Heer"
version="4.4.1"
script="plugin.gd"
"""
    
    with open(os.path.join(addon_dir, "plugin.cfg"), "w") as f:
        f.write(plugin_content)
    print("✓ Created plugin.cfg")
    
    # Create minimal plugin.gd
    plugin_gd = """@tool
extends EditorPlugin

func _enter_tree():
    print("[py4godot] Plugin entering tree")
    pass

func _exit_tree():
    print("[py4godot] Plugin exiting tree")
    pass
"""
    
    with open(os.path.join(addon_dir, "plugin.gd"), "w") as f:
        f.write(plugin_gd)
    print("✓ Created plugin.gd")
    
    return project_dir, addon_dir

def copy_build_to_project(addon_dir):
    """Copy the ARM64 build to the test project."""
    print("\n=== Copying ARM64 build ===\n")
    
    # Source directory (relative to repository root)
    repo_root = os.path.join(os.path.dirname(__file__), "..", "..")
    source_dir = os.path.join(repo_root, "build/final/windowsarm64/cpython-3.12.4-windowsarm64")
    if not os.path.exists(source_dir):
        print(f"✗ Build not found at: {source_dir}")
        print("Please run: python build.py --target_platform=windowsarm64 --compiler=msvc")
        return False
    
    # Destination
    dest_dir = os.path.join(addon_dir, "cpython-3.12.4-windowsarm64")
    
    # Remove old build if exists
    if os.path.exists(dest_dir):
        print(f"Removing old build at: {dest_dir}")
        shutil.rmtree(dest_dir)
    
    # Copy new build
    print(f"Copying from: {source_dir}")
    print(f"Copying to: {dest_dir}")
    shutil.copytree(source_dir, dest_dir)
    
    # Count files
    dll_count = len(list(Path(dest_dir).rglob("*.dll")))
    print(f"✓ Copied build ({dll_count} DLL files)")
    
    return True

def create_test_script(project_dir):
    """Create a test Python script."""
    test_script = """from py4godot import *
from py4godot.classes.Node import *

@gdclass
class TestNode(Node):
    def _ready(self):
        print("[py4godot] Hello from Python on ARM64!")
        print(f"[py4godot] Python node name: {self.name}")
        
    def _process(self, delta):
        pass
"""
    
    script_path = os.path.join(project_dir, "test_node.py")
    with open(script_path, "w") as f:
        f.write(test_script)
    print(f"✓ Created test script: test_node.py")
    
    # Create test scene
    scene_content = """[gd_scene load_steps=2 format=3]

[ext_resource type="Script" path="res://test_node.py" id="1"]

[node name="TestNode" type="Node"]
script = ExtResource("1")
"""
    
    scene_path = os.path.join(project_dir, "test_scene.tscn")
    with open(scene_path, "w") as f:
        f.write(scene_content)
    print(f"✓ Created test scene: test_scene.tscn")

def create_debug_batch(project_dir):
    """Create a batch file for debugging."""
    batch_content = """@echo off
echo === py4godot ARM64 Debug Launch ===
echo.
echo Starting Godot with verbose logging...
echo Check the console output for [py4godot] messages
echo.

set GODOT_PATH=Godot_v4.4.1-stable_windows_arm64.exe

if not exist "%GODOT_PATH%" (
    echo ERROR: Godot executable not found!
    echo Please download Godot ARM64 and place it in this directory
    echo Download from: https://godotengine.org/download/windows/
    pause
    exit /b 1
)

echo Running: %GODOT_PATH% --verbose --path . --editor
%GODOT_PATH% --verbose --path . --editor

echo.
echo === Godot closed ===
echo Check above for any [py4godot] error messages
pause
"""
    
    batch_path = os.path.join(project_dir, "debug_godot.bat")
    with open(batch_path, "w") as f:
        f.write(batch_content)
    print(f"✓ Created debug batch file: debug_godot.bat")

def main():
    """Main function."""
    # Parse command line arguments
    parser = argparse.ArgumentParser(
        description="Create a minimal Godot project to test py4godot ARM64 builds"
    )
    parser.add_argument(
        "project_name", 
        nargs="?", 
        default="test-arm64-project",
        help="Name of the test project directory (default: test-arm64-project)"
    )
    args = parser.parse_args()
    
    print("=== py4godot ARM64 Test Project Creator ===\n")
    
    # Create test project
    project_dir, addon_dir = create_test_project(args.project_name)
    
    # Copy build
    if not copy_build_to_project(addon_dir):
        return 1
    
    # Create test files
    create_test_script(project_dir)
    create_debug_batch(project_dir)
    
    # Instructions
    print("\n=== Setup Complete! ===\n")
    print(f"Test project created at: {os.path.abspath(project_dir)}")
    print("\nNext steps:")
    print("1. Copy Godot ARM64 executable to the test project directory")
    print("   Download from: https://godotengine.org/download/windows/")
    print("   Rename to: Godot_v4.4.1-stable_windows_arm64.exe")
    print("\n2. Run the debug batch file:")
    print(f"   cd {project_dir}")
    print("   debug_godot.bat")
    print("\n3. In Godot:")
    print("   - Check Project Settings > Plugins > py4godot is enabled")
    print("   - Open test_scene.tscn")
    print("   - Run the scene")
    print("\n4. Check console output for:")
    print("   - [py4godot] log messages")
    print("   - Any error messages about DLL loading")
    print("\nExpected output if working:")
    print("   [py4godot] Plugin entering tree")
    print("   [py4godot] Hello from Python on ARM64!")
    
    # Check for dependencies
    python_dir = os.path.join(addon_dir, "cpython-3.12.4-windowsarm64", "python")
    missing_deps = []
    for dll in ["msvcp140.dll", "ucrtbase.dll"]:
        if not os.path.exists(os.path.join(python_dir, dll)):
            missing_deps.append(dll)
    
    if missing_deps:
        print(f"\n⚠️  WARNING: Missing dependencies: {', '.join(missing_deps)}")
        print("Run these commands first:")
        print("  python tools/arm64/copy_arm64_dependencies_simple.py")
        print("  python tools/arm64/find_ucrt_dlls.py")
    
    return 0

if __name__ == "__main__":
    import sys
    sys.exit(main())