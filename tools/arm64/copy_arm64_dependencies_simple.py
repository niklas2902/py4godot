#!/usr/bin/env python3
"""
Simple ARM64 Dependencies Copier for py4godot
This version doesn't require dumpbin and copies known dependencies directly.
"""

import os
import shutil
import sys
from pathlib import Path

def copy_file_if_exists(source, dest, name):
    """Copy a file if it exists, return True if successful."""
    if not os.path.exists(source):
        print(f"✗ NOT FOUND: {name} at {source}")
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
    """Find Visual C++ Redistributable DLLs."""
    search_paths = [
        r"C:\Windows\System32",
        r"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Redist\MSVC\14.32.31332\arm64\Microsoft.VC143.CRT",
        r"C:\Program Files\Microsoft Visual Studio\2022\Professional\VC\Redist\MSVC\14.32.31332\arm64\Microsoft.VC143.CRT",
        r"C:\Program Files\Microsoft Visual Studio\2022\Enterprise\VC\Redist\MSVC\14.32.31332\arm64\Microsoft.VC143.CRT",
        r"C:\Program Files (x86)\Microsoft Visual Studio\2022\Community\VC\Redist\MSVC\14.32.31332\arm64\Microsoft.VC143.CRT",
        r"C:\Program Files (x86)\Microsoft Visual Studio\2022\Professional\VC\Redist\MSVC\14.32.31332\arm64\Microsoft.VC143.CRT",
        r"C:\Program Files (x86)\Microsoft Visual Studio\2022\Enterprise\VC\Redist\MSVC\14.32.31332\arm64\Microsoft.VC143.CRT",
        r"C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Redist\MSVC\14.32.31332\arm64\Microsoft.VC143.CRT",
    ]
    
    # Look for different MSVC versions
    for base_path in [r"C:\Program Files\Microsoft Visual Studio\2022", 
                      r"C:\Program Files (x86)\Microsoft Visual Studio\2022"]:
        if os.path.exists(base_path):
            for edition in ["Community", "Professional", "Enterprise", "BuildTools"]:
                vc_path = os.path.join(base_path, edition, "VC", "Redist", "MSVC")
                if os.path.exists(vc_path):
                    # Find all MSVC versions
                    for version in os.listdir(vc_path):
                        arm64_path = os.path.join(vc_path, version, "arm64", "Microsoft.VC143.CRT")
                        if os.path.exists(arm64_path):
                            search_paths.append(arm64_path)
    
    return search_paths

def find_ucrt_dlls():
    """Find Universal C Runtime DLLs."""
    search_paths = [
        r"C:\Windows\System32",
        r"C:\Program Files (x86)\Windows Kits\10\Redist\ucrt\DLLs\arm64",
    ]
    
    # Find Windows Kits
    kits_base = r"C:\Program Files (x86)\Windows Kits\10\Redist"
    if os.path.exists(kits_base):
        # Look for version-specific paths
        for item in os.listdir(kits_base):
            if item.startswith("10.0."):
                ucrt_path = os.path.join(kits_base, item, "ucrt", "DLLs", "arm64")
                if os.path.exists(ucrt_path):
                    search_paths.append(ucrt_path)
    
    return search_paths

def copy_dependencies(target_dir):
    """Copy all required dependencies to target directory."""
    print(f"=== Copying Dependencies to {target_dir} ===\n")
    
    if not os.path.exists(target_dir):
        print(f"ERROR: Target directory does not exist: {target_dir}")
        return False
    
    # Required DLLs from main.dll dependencies
    required_dlls = [
        "python312.dll",      # Already should be there
        "MSVCP140.dll",       # Visual C++ Runtime
        "VCRUNTIME140.dll",   # Visual C++ Runtime  
        "ucrtbase.dll",       # Universal C Runtime
    ]
    
    # Additional UCRT DLLs that might be needed
    ucrt_dlls = [
        "api-ms-win-crt-heap-l1-1-0.dll",
        "api-ms-win-crt-stdio-l1-1-0.dll", 
        "api-ms-win-crt-convert-l1-1-0.dll",
        "api-ms-win-crt-runtime-l1-1-0.dll",
        "api-ms-win-crt-string-l1-1-0.dll",
        "api-ms-win-crt-time-l1-1-0.dll",
        "api-ms-win-crt-filesystem-l1-1-0.dll",
        "api-ms-win-crt-environment-l1-1-0.dll",
        "api-ms-win-crt-utility-l1-1-0.dll",
        "api-ms-win-crt-locale-l1-1-0.dll",
        "api-ms-win-crt-math-l1-1-0.dll",
        "api-ms-win-crt-multibyte-l1-1-0.dll",
        "api-ms-win-crt-process-l1-1-0.dll",
    ]
    
    # Get search paths
    vc_paths = find_visual_cpp_redist()
    ucrt_paths = find_ucrt_dlls()
    
    print("Search paths for Visual C++ Runtime:")
    for path in vc_paths:
        exists = "✓" if os.path.exists(path) else "✗"
        print(f"  {exists} {path}")
    
    print("\nSearch paths for UCRT:")
    for path in ucrt_paths:
        exists = "✓" if os.path.exists(path) else "✗"
        print(f"  {exists} {path}")
    
    print(f"\n=== Copying Visual C++ Runtime DLLs ===")
    
    copied = 0
    for dll in required_dlls:
        dest_path = os.path.join(target_dir, dll)
        found = False
        
        # Skip if already exists
        if os.path.exists(dest_path):
            print(f"✓ Already exists: {dll}")
            continue
        
        # Search in VC paths first
        for search_path in vc_paths:
            source_path = os.path.join(search_path, dll)
            if os.path.exists(source_path):
                if copy_file_if_exists(source_path, dest_path, dll):
                    copied += 1
                    found = True
                    break
        
        # If not found in VC paths, try system32
        if not found:
            source_path = os.path.join(r"C:\Windows\System32", dll)
            if copy_file_if_exists(source_path, dest_path, dll):
                copied += 1
                found = True
        
        if not found:
            print(f"✗ Could not find: {dll}")
    
    print(f"\n=== Copying UCRT DLLs ===")
    
    for dll in ucrt_dlls:
        dest_path = os.path.join(target_dir, dll)
        found = False
        
        # Skip if already exists
        if os.path.exists(dest_path):
            continue
        
        # Search in UCRT paths
        for search_path in ucrt_paths:
            source_path = os.path.join(search_path, dll)
            if os.path.exists(source_path):
                if copy_file_if_exists(source_path, dest_path, dll):
                    copied += 1
                    found = True
                    break
        
        # Many UCRT DLLs are handled by the OS, so not finding them is OK
        if not found and dll.startswith("api-ms-win-crt"):
            # These are often forwarded to ucrtbase.dll by the OS
            pass
    
    print(f"\n=== Summary ===")
    print(f"Total DLLs copied: {copied}")
    
    # Check what we have now
    print(f"\nFiles in {target_dir}:")
    dll_files = list(Path(target_dir).glob("*.dll"))
    for dll in sorted(dll_files):
        size = dll.stat().st_size
        print(f"  ✓ {dll.name} ({size:,} bytes)")
    
    return True

def main():
    """Main function."""
    print("=== py4godot ARM64 Dependencies Copier (Simple Version) ===\n")
    
    # Default target (relative to repository root)
    repo_root = os.path.join(os.path.dirname(__file__), "..", "..")
    target_dir = os.path.join(repo_root, "build/final/windowsarm64/cpython-3.12.4-windowsarm64/python")
    
    # Check if build exists
    if not os.path.exists(target_dir):
        print(f"Build directory not found: {target_dir}")
        alt_target = input("Enter target directory path (or press Enter to exit): ").strip()
        if not alt_target:
            return 1
        target_dir = alt_target
    
    target_dir = os.path.abspath(target_dir)
    
    # Copy dependencies
    success = copy_dependencies(target_dir)
    
    if success:
        print("\n✅ Dependency copy process completed!")
        print("\nNext steps:")
        print("1. Run: python test_in_godot.py")
        print("2. Test in Godot ARM64 with verbose logging")
        print("3. Check console for [py4godot] messages")
        
        print("\nIf you still get Error 126:")
        print("1. Open Visual Studio Developer Command Prompt")
        print("2. Run: python copy_arm64_dependencies.py")
        print("3. Use Dependencies.exe to analyze main.dll")
    
    return 0

if __name__ == "__main__":
    sys.exit(main())