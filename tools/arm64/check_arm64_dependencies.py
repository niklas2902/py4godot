#!/usr/bin/env python3
"""
ARM64 Dependency Checker for py4godot
This script helps diagnose missing dependencies for Windows ARM64 builds.
"""

import os
import sys
import subprocess
import platform

def check_file_exists(filepath):
    """Check if a file exists and print its info."""
    if os.path.exists(filepath):
        size = os.path.getsize(filepath)
        print(f"✓ Found: {filepath} ({size:,} bytes)")
        return True
    else:
        print(f"✗ Missing: {filepath}")
        return False

def check_dll_architecture(dll_path):
    """Check the architecture of a DLL using dumpbin or file command."""
    if not os.path.exists(dll_path):
        return "File not found"
    
    # Try using dumpbin (Visual Studio tool)
    try:
        result = subprocess.run(
            ["dumpbin", "/headers", dll_path],
            capture_output=True,
            text=True
        )
        if result.returncode == 0:
            output = result.stdout
            if "AA64 machine" in output or "ARM64" in output:
                return "ARM64"
            elif "8664 machine" in output:
                return "x64"
            elif "14C machine" in output:
                return "x86"
            else:
                return "Unknown"
    except FileNotFoundError:
        pass
    
    # Try using file command (WSL/Linux)
    try:
        result = subprocess.run(
            ["file", dll_path],
            capture_output=True,
            text=True
        )
        if result.returncode == 0:
            output = result.stdout
            if "ARM64" in output or "Aarch64" in output:
                return "ARM64"
            elif "x86-64" in output:
                return "x64"
            elif "80386" in output:
                return "x86"
            else:
                return "Unknown"
    except FileNotFoundError:
        pass
    
    return "Cannot determine (tools not available)"

def check_dll_exports(dll_path):
    """Check exported symbols from a DLL."""
    if not os.path.exists(dll_path):
        return []
    
    try:
        result = subprocess.run(
            ["dumpbin", "/exports", dll_path],
            capture_output=True,
            text=True
        )
        if result.returncode == 0:
            exports = []
            lines = result.stdout.split('\n')
            in_exports = False
            for line in lines:
                if "ordinal hint" in line.lower():
                    in_exports = True
                    continue
                if in_exports and line.strip():
                    parts = line.split()
                    if len(parts) >= 4:
                        exports.append(parts[-1])
            return exports
    except FileNotFoundError:
        pass
    
    return []

def check_dll_dependencies(dll_path):
    """Check dependencies of a DLL."""
    if not os.path.exists(dll_path):
        return []
    
    try:
        result = subprocess.run(
            ["dumpbin", "/dependents", dll_path],
            capture_output=True,
            text=True
        )
        if result.returncode == 0:
            deps = []
            lines = result.stdout.split('\n')
            for line in lines:
                line = line.strip()
                if line.endswith('.dll') or line.endswith('.DLL'):
                    deps.append(line)
            return deps
    except FileNotFoundError:
        pass
    
    return []

def main():
    print("=== py4godot Windows ARM64 Dependency Checker ===\n")
    
    # Check system info
    print(f"Platform: {platform.platform()}")
    print(f"Machine: {platform.machine()}")
    print(f"Processor: {platform.processor()}\n")
    
    # Define paths to check (relative to repository root)
    repo_root = os.path.join(os.path.dirname(__file__), "..", "..")
    base_path = os.path.join(repo_root, "build/final/windowsarm64/cpython-3.12.4-windowsarm64/python")
    
    if not os.path.exists(base_path):
        print(f"ERROR: Build directory not found: {base_path}")
        print("Please run the build first from repository root:")
        print("python build.py --target_platform=windowsarm64 --compiler=msvc")
        return 1
    
    # Key files to check
    files_to_check = [
        os.path.join(base_path, "main.dll"),
        os.path.join(base_path, "pythonscript.dll"),
        os.path.join(base_path, "python.exe"),
        os.path.join(base_path, "python312.dll"),
    ]
    
    print("=== Checking Key Files ===")
    for filepath in files_to_check:
        if check_file_exists(filepath):
            arch = check_dll_architecture(filepath)
            print(f"  Architecture: {arch}")
            
            # Check exports for main.dll
            if filepath.endswith("main.dll"):
                print("\n  Checking exports from main.dll:")
                exports = check_dll_exports(filepath)
                if exports:
                    for exp in exports:
                        if "py4godot" in exp.lower():
                            print(f"    ✓ {exp}")
                    if not any("py4godot_init" in exp for exp in exports):
                        print("    ✗ py4godot_init NOT FOUND in exports!")
                else:
                    print("    Could not check exports (dumpbin not available)")
                
                print("\n  Checking dependencies of main.dll:")
                deps = check_dll_dependencies(filepath)
                if deps:
                    for dep in deps:
                        print(f"    - {dep}")
                else:
                    print("    Could not check dependencies (dumpbin not available)")
        print()
    
    # Check Python libraries
    print("\n=== Checking Python Runtime Libraries ===")
    python_libs = [
        "python312.dll",
        "vcruntime140.dll",
        "vcruntime140_1.dll",
        "msvcp140.dll",
        "ucrtbase.dll",
        "api-ms-win-crt-runtime-l1-1-0.dll",
    ]
    
    for lib in python_libs:
        lib_path = os.path.join(base_path, lib)
        if check_file_exists(lib_path):
            arch = check_dll_architecture(lib_path)
            print(f"  Architecture: {arch}")
    
    # Check for ARM64 Visual C++ Redistributables
    print("\n=== Checking Visual C++ Redistributables ===")
    vc_redist_paths = [
        r"C:\Windows\System32\vcruntime140.dll",
        r"C:\Windows\System32\msvcp140.dll",
    ]
    
    for path in vc_redist_paths:
        if check_file_exists(path):
            arch = check_dll_architecture(path)
            print(f"  Architecture: {arch}")
            if arch != "ARM64":
                print(f"  ⚠️  WARNING: System redistributable is {arch}, but we need ARM64!")
    
    print("\n=== Recommendations ===")
    print("1. If main.dll exists but doesn't export py4godot_init, the build may have failed to link properly.")
    print("2. If dependencies show x64 DLLs instead of ARM64, there's an architecture mismatch.")
    print("3. Install Visual C++ Redistributables for ARM64 if missing.")
    print("4. Use Dependency Walker or Dependencies.exe for more detailed analysis.")
    
    return 0

if __name__ == "__main__":
    sys.exit(main())