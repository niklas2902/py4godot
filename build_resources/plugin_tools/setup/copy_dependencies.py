#!/usr/bin/env python3
"""
py4godot Dependencies Copier
This script copies required Visual C++ runtime dependencies for py4godot on Windows ARM64.

Usage: python copy_dependencies.py
"""

import os
import shutil
import sys
import glob
from pathlib import Path

def copy_file_if_exists(source, dest, name):
    """Copy a file if it exists, return True if successful."""
    if not os.path.exists(source):
        print(f"✗ NOT FOUND: {name}")
        return False
    
    if os.path.exists(dest):
        print(f"✓ Already exists: {name}")
        return True
    
    try:
        shutil.copy2(source, dest)
        size = os.path.getsize(dest)
        print(f"✓ Copied: {name} ({size:,} bytes)")
        return True
    except Exception as e:
        print(f"✗ Failed to copy {name}: {e}")
        return False

def find_visual_cpp_redist():
    """Find Visual C++ Redistributable DLLs for ARM64."""
    search_paths = [
        # System directory (if ARM64 redistributables are installed)
        r"C:\Windows\System32",
        
        # Visual Studio 2022 locations
        r"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Redist\MSVC\*\arm64\Microsoft.VC143.CRT",
        r"C:\Program Files\Microsoft Visual Studio\2022\Professional\VC\Redist\MSVC\*\arm64\Microsoft.VC143.CRT",
        r"C:\Program Files\Microsoft Visual Studio\2022\Enterprise\VC\Redist\MSVC\*\arm64\Microsoft.VC143.CRT",
        r"C:\Program Files\Microsoft Visual Studio\2022\BuildTools\VC\Redist\MSVC\*\arm64\Microsoft.VC143.CRT",
        
        # x86 Program Files locations
        r"C:\Program Files (x86)\Microsoft Visual Studio\2022\Community\VC\Redist\MSVC\*\arm64\Microsoft.VC143.CRT",
        r"C:\Program Files (x86)\Microsoft Visual Studio\2022\Professional\VC\Redist\MSVC\*\arm64\Microsoft.VC143.CRT",
        r"C:\Program Files (x86)\Microsoft Visual Studio\2022\Enterprise\VC\Redist\MSVC\*\arm64\Microsoft.VC143.CRT",
        r"C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Redist\MSVC\*\arm64\Microsoft.VC143.CRT",
    ]
    
    found_paths = {}
    
    for pattern in search_paths:
        for path in glob.glob(pattern):
            if os.path.exists(path):
                # Check what DLLs are available in this path
                available_dlls = []
                for dll in ["vcruntime140.dll", "vcruntime140_1.dll", "msvcp140.dll"]:
                    dll_path = os.path.join(path, dll)
                    if os.path.exists(dll_path):
                        available_dlls.append(dll)
                
                if available_dlls:
                    found_paths[path] = available_dlls
    
    return found_paths

def find_ucrt_dlls():
    """Find Universal C Runtime DLLs for ARM64."""
    search_paths = [
        # System directory
        r"C:\Windows\System32",
        
        # Windows SDK locations
        r"C:\Program Files (x86)\Windows Kits\10\Redist\*\ucrt\DLLs\arm64",
        r"C:\Program Files\Windows Kits\10\Redist\*\ucrt\DLLs\arm64",
        r"C:\Program Files (x86)\Windows Kits\10\Redist\ucrt\DLLs\arm64",
        r"C:\Program Files\Windows Kits\10\Redist\ucrt\DLLs\arm64",
    ]
    
    for pattern in search_paths:
        for path in glob.glob(pattern):
            if os.path.exists(path):
                # Check for ucrtbase.dll and api-ms-win-crt-*.dll
                ucrtbase = os.path.join(path, "ucrtbase.dll")
                api_dlls = glob.glob(os.path.join(path, "api-ms-win-crt-*.dll"))
                
                if os.path.exists(ucrtbase) or api_dlls:
                    return path
    
    return None

def find_plugin_directory():
    """Find the py4godot plugin directory."""
    # Look for common locations relative to current directory
    possible_paths = [
        ".",  # Current directory
        "..",  # Parent directory
        "../..",  # Grandparent directory
        "addons/py4godot",  # Standard Godot addon path
        "../addons/py4godot",
        "../../addons/py4godot",
    ]
    
    for path in possible_paths:
        # Look for python.gdextension file as indicator
        gdextension_file = os.path.join(path, "python.gdextension")
        if os.path.exists(gdextension_file):
            return os.path.abspath(path)
    
    return None

def main():
    print("=== py4godot Dependencies Copier ===\n")
    
    # Find plugin directory
    plugin_dir = find_plugin_directory()
    if not plugin_dir:
        print("ERROR: Cannot find py4godot plugin directory!")
        print("Please run this script from your Godot project directory or the py4godot plugin directory.")
        return 1
    
    print(f"Plugin directory: {plugin_dir}")
    
    # Look for ARM64 Python installation
    arm64_paths = [
        "cpython-3.12.4-windowsarm64/python",
        "arm64/python",
        "windowsarm64/python"
    ]
    
    target_dir = None
    for path in arm64_paths:
        full_path = os.path.join(plugin_dir, path)
        if os.path.exists(full_path):
            target_dir = full_path
            break
    
    if not target_dir:
        print("ERROR: ARM64 Python installation not found!")
        print("Expected locations:")
        for path in arm64_paths:
            print(f"  - {os.path.join(plugin_dir, path)}")
        return 1
    
    print(f"Target directory: {target_dir}\n")
    
    copied_count = 0
    
    # Copy Visual C++ Runtime DLLs
    print("=== Copying Visual C++ Runtime DLLs ===")
    vc_paths = find_visual_cpp_redist()
    
    if not vc_paths:
        print("⚠️  No Visual C++ ARM64 redistributables found!")
        print("Please install Visual C++ Redistributables for ARM64:")
        print("https://aka.ms/vs/17/release/vc_redist.arm64.exe")
    else:
        print(f"Found {len(vc_paths)} potential source(s):")
        for path, dlls in vc_paths.items():
            print(f"  {path}: {', '.join(dlls)}")
        
        # Use the first available path with the most DLLs
        best_path = max(vc_paths.items(), key=lambda x: len(x[1]))[0]
        print(f"\nUsing: {best_path}")
        
        required_dlls = ["vcruntime140.dll", "vcruntime140_1.dll", "msvcp140.dll"]
        for dll in required_dlls:
            source = os.path.join(best_path, dll)
            dest = os.path.join(target_dir, dll)
            if copy_file_if_exists(source, dest, dll):
                copied_count += 1
    
    print()
    
    # Copy Universal C Runtime DLLs
    print("=== Copying Universal C Runtime DLLs ===")
    ucrt_path = find_ucrt_dlls()
    
    if not ucrt_path:
        print("⚠️  No Universal C Runtime ARM64 DLLs found!")
        print("Please install Windows SDK with ARM64 support:")
        print("https://developer.microsoft.com/en-us/windows/downloads/windows-sdk/")
    else:
        print(f"Found UCRT path: {ucrt_path}")
        
        # Copy ucrtbase.dll
        ucrtbase_source = os.path.join(ucrt_path, "ucrtbase.dll")
        ucrtbase_dest = os.path.join(target_dir, "ucrtbase.dll")
        if copy_file_if_exists(ucrtbase_source, ucrtbase_dest, "ucrtbase.dll"):
            copied_count += 1
        
        # Copy api-ms-win-crt-*.dll files
        api_dlls = glob.glob(os.path.join(ucrt_path, "api-ms-win-crt-*.dll"))
        print(f"\nCopying {len(api_dlls)} API DLLs...")
        for api_dll in api_dlls:
            dll_name = os.path.basename(api_dll)
            dest = os.path.join(target_dir, dll_name)
            if copy_file_if_exists(api_dll, dest, dll_name):
                copied_count += 1
    
    # Summary
    print(f"\n=== Summary ===")
    if copied_count > 0:
        print(f"✅ Successfully copied {copied_count} file(s)!")
        print("\nNext steps:")
        print("1. Run: python ../diagnostic/check_dependencies.py")
        print("2. Test py4godot in Godot with --verbose logging")
    else:
        print("⚠️  No new files were copied.")
        print("This could mean:")
        print("• Dependencies are already present")
        print("• Required redistributables are not installed")
        print("• ARM64 versions are not available on this system")
        
        print("\nManual installation options:")
        print("1. Install Visual C++ Redistributables for ARM64")
        print("2. Install Windows SDK with ARM64 support")
        print("3. Copy DLLs manually from another ARM64 system")
    
    return 0 if copied_count > 0 else 1

if __name__ == "__main__":
    sys.exit(main())