#!/usr/bin/env python3
"""
Copy ARM64 Dependencies for py4godot
This script copies missing runtime dependencies to the build directory.
"""

import os
import shutil
import subprocess
import sys
from pathlib import Path

def get_dll_dependencies(dll_path):
    """Get list of dependencies for a DLL using dumpbin."""
    dependencies = []
    try:
        result = subprocess.run(
            ["dumpbin", "/dependents", dll_path],
            capture_output=True,
            text=True
        )
        if result.returncode == 0:
            lines = result.stdout.split('\n')
            in_deps = False
            for line in lines:
                line = line.strip()
                if "Image has the following dependencies:" in line:
                    in_deps = True
                    continue
                if in_deps and line and (line.endswith('.dll') or line.endswith('.DLL')):
                    dependencies.append(line)
                if "Summary" in line:
                    break
        return dependencies
    except Exception as e:
        print(f"Error getting dependencies: {e}")
        return dependencies

def find_dll_in_system(dll_name):
    """Find a DLL in common system locations."""
    search_paths = [
        r"C:\Windows\System32",
        r"C:\Windows\SysWOW64",
        r"C:\Windows\System",
        r"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Redist\MSVC\14.32.31332\arm64\Microsoft.VC143.CRT",
        r"C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Redist\MSVC\14.32.31332\arm64\Microsoft.VC143.CRT",
        r"C:\Program Files (x86)\Windows Kits\10\Redist\10.0.22621.0\ucrt\DLLs\arm64",
        r"C:\Program Files (x86)\Windows Kits\10\Redist\ucrt\DLLs\arm64",
    ]
    
    for path in search_paths:
        if os.path.exists(path):
            dll_path = os.path.join(path, dll_name)
            if os.path.exists(dll_path):
                return dll_path
    
    # Try to find using where command
    try:
        result = subprocess.run(
            ["where", dll_name],
            capture_output=True,
            text=True
        )
        if result.returncode == 0:
            paths = result.stdout.strip().split('\n')
            if paths and paths[0]:
                return paths[0]
    except:
        pass
    
    return None

def check_dll_architecture(dll_path):
    """Check if DLL is ARM64."""
    try:
        result = subprocess.run(
            ["dumpbin", "/headers", dll_path],
            capture_output=True,
            text=True
        )
        if result.returncode == 0:
            if "AA64 machine" in result.stdout or "ARM64" in result.stdout:
                return "ARM64"
            elif "8664 machine" in result.stdout:
                return "x64"
            elif "14C machine" in result.stdout:
                return "x86"
    except:
        pass
    return "Unknown"

def copy_dependencies(target_dir):
    """Copy all missing dependencies to target directory."""
    print(f"=== Copying ARM64 Dependencies to {target_dir} ===\n")
    
    if not os.path.exists(target_dir):
        print(f"ERROR: Target directory does not exist: {target_dir}")
        return False
    
    # Get main.dll path
    main_dll = os.path.join(target_dir, "main.dll")
    if not os.path.exists(main_dll):
        print(f"ERROR: main.dll not found at: {main_dll}")
        return False
    
    # Get dependencies
    print("Getting dependencies of main.dll...")
    dependencies = get_dll_dependencies(main_dll)
    print(f"Found {len(dependencies)} dependencies\n")
    
    # Core runtime DLLs that should be copied
    essential_dlls = [
        "msvcp140.dll",
        "vcruntime140.dll",
        "vcruntime140_1.dll",
        "ucrtbase.dll",
    ]
    
    # Add all api-ms-win-crt DLLs
    for dep in dependencies:
        if dep.startswith("api-ms-win-crt"):
            essential_dlls.append(dep)
    
    # Remove duplicates
    essential_dlls = list(set(essential_dlls))
    
    copied = 0
    skipped = 0
    missing = 0
    
    for dll_name in essential_dlls:
        target_path = os.path.join(target_dir, dll_name)
        
        # Skip if already exists
        if os.path.exists(target_path):
            print(f"✓ Already exists: {dll_name}")
            skipped += 1
            continue
        
        # Find DLL in system
        source_path = find_dll_in_system(dll_name)
        if not source_path:
            print(f"✗ NOT FOUND: {dll_name}")
            missing += 1
            continue
        
        # Check architecture
        arch = check_dll_architecture(source_path)
        if arch != "ARM64":
            print(f"⚠️  WARNING: {dll_name} is {arch}, not ARM64! Source: {source_path}")
            continue
        
        # Copy the DLL
        try:
            shutil.copy2(source_path, target_path)
            size = os.path.getsize(target_path)
            print(f"✓ Copied: {dll_name} ({size:,} bytes) from {source_path}")
            copied += 1
        except Exception as e:
            print(f"✗ Failed to copy {dll_name}: {e}")
            missing += 1
    
    print(f"\n=== Summary ===")
    print(f"Copied: {copied}")
    print(f"Skipped (already exists): {skipped}")
    print(f"Missing/Failed: {missing}")
    
    # Special handling for api-ms-win-crt DLLs
    if missing > 0 and any(dll.startswith("api-ms-win-crt") for dll in essential_dlls):
        print("\n=== Note about api-ms-win-crt DLLs ===")
        print("These DLLs are part of the Universal C Runtime (UCRT).")
        print("On Windows 10/11, they are typically handled by the OS.")
        print("If Godot still fails to load, try:")
        print("1. Installing Windows Universal C Runtime for ARM64")
        print("2. Copying from: C:\\Program Files (x86)\\Windows Kits\\10\\Redist\\ucrt\\DLLs\\arm64")
    
    return missing == 0

def main():
    """Main function."""
    import argparse
    
    parser = argparse.ArgumentParser(description="Copy ARM64 dependencies for py4godot")
    parser.add_argument(
        "--target", 
        default="build/final/windowsarm64/cpython-3.12.4-windowsarm64/python",
        help="Target directory (default: build/final/windowsarm64/cpython-3.12.4-windowsarm64/python)"
    )
    
    args = parser.parse_args()
    
    # Convert to absolute path
    target_dir = os.path.abspath(args.target)
    
    # Check if dumpbin is available
    try:
        subprocess.run(["dumpbin", "/?"], capture_output=True, check=True)
    except:
        print("ERROR: dumpbin.exe not found!")
        print("Please run this script from a Visual Studio Developer Command Prompt")
        print("or ensure Visual Studio build tools are in your PATH.")
        return 1
    
    # Copy dependencies
    success = copy_dependencies(target_dir)
    
    if success:
        print("\n✅ All dependencies copied successfully!")
        print(f"You can now test the build in Godot.")
    else:
        print("\n⚠️  Some dependencies could not be copied.")
        print("You may need to manually locate and copy them.")
    
    return 0 if success else 1

if __name__ == "__main__":
    sys.exit(main())