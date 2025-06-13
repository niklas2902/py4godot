#!/usr/bin/env python3
"""
py4godot Dependency Checker
This script helps diagnose missing dependencies for py4godot on Windows ARM64.

Usage: python check_dependencies.py
"""

import os
import sys
import subprocess
import platform

def check_file_exists(filepath):
    """Check if a file exists and print its info."""
    if os.path.exists(filepath):
        size = os.path.getsize(filepath)
        print(f"✓ Found: {os.path.basename(filepath)} ({size:,} bytes)")
        return True
    else:
        print(f"✗ Missing: {os.path.basename(filepath)}")
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
    
    return "Cannot determine (dumpbin not available)"

def check_dll_exports(dll_path):
    """Check if py4godot_init is exported from main.dll."""
    if not os.path.exists(dll_path):
        return False
    
    try:
        result = subprocess.run(
            ["dumpbin", "/exports", dll_path],
            capture_output=True,
            text=True
        )
        if result.returncode == 0:
            return "py4godot_init" in result.stdout
    except FileNotFoundError:
        pass
    
    return None  # Cannot determine

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
    print("=== py4godot Dependency Checker ===\n")
    
    # Check system info
    print(f"Platform: {platform.platform()}")
    print(f"Machine: {platform.machine()}")
    print(f"Processor: {platform.processor()}\n")
    
    # Find plugin directory
    plugin_dir = find_plugin_directory()
    if not plugin_dir:
        print("ERROR: Cannot find py4godot plugin directory!")
        print("Please run this script from your Godot project directory or the py4godot plugin directory.")
        return 1
    
    print(f"Plugin directory: {plugin_dir}\n")
    
    # Look for ARM64 Python installation
    arm64_paths = [
        "cpython-3.12.4-windowsarm64/python",
        "arm64/python",
        "windowsarm64/python"
    ]
    
    python_dir = None
    for path in arm64_paths:
        full_path = os.path.join(plugin_dir, path)
        if os.path.exists(full_path):
            python_dir = full_path
            break
    
    if not python_dir:
        print("ERROR: ARM64 Python installation not found!")
        print("Expected locations:")
        for path in arm64_paths:
            print(f"  - {os.path.join(plugin_dir, path)}")
        print("\nPlease ensure you have the ARM64 build of py4godot installed.")
        return 1
    
    print(f"Python directory: {python_dir}\n")
    
    # Key files to check
    files_to_check = [
        ("main.dll", "Main py4godot library"),
        ("pythonscript.dll", "Python script handler"),
        ("python.exe", "Python executable"),
        ("python312.dll", "Python runtime library"),
    ]
    
    print("=== Checking Key Files ===")
    all_found = True
    main_dll_path = None
    
    for filename, description in files_to_check:
        filepath = os.path.join(python_dir, filename)
        exists = check_file_exists(filepath)
        if not exists:
            all_found = False
        
        if exists and filename.endswith(".dll"):
            arch = check_dll_architecture(filepath)
            print(f"  Architecture: {arch}")
            
            if arch not in ["ARM64", "Cannot determine (dumpbin not available)"]:
                print(f"  ⚠️  WARNING: Expected ARM64, found {arch}")
                all_found = False
        
        if filename == "main.dll" and exists:
            main_dll_path = filepath
        
        print()
    
    # Check main.dll exports
    if main_dll_path:
        print("=== Checking main.dll Exports ===")
        exports_check = check_dll_exports(main_dll_path)
        if exports_check is True:
            print("✓ py4godot_init symbol found")
        elif exports_check is False:
            print("✗ py4godot_init symbol NOT FOUND!")
            all_found = False
        else:
            print("? Cannot check exports (dumpbin not available)")
        print()
    
    # Check runtime dependencies
    print("=== Checking Runtime Dependencies ===")
    runtime_libs = [
        ("vcruntime140.dll", "Visual C++ Runtime"),
        ("vcruntime140_1.dll", "Visual C++ Runtime (additional)"),
        ("msvcp140.dll", "Visual C++ Standard Library"),
        ("ucrtbase.dll", "Universal C Runtime"),
    ]
    
    missing_deps = []
    for lib, desc in runtime_libs:
        lib_path = os.path.join(python_dir, lib)
        exists = check_file_exists(lib_path)
        if exists:
            arch = check_dll_architecture(lib_path)
            print(f"  Architecture: {arch}")
            if arch not in ["ARM64", "Cannot determine (dumpbin not available)"]:
                print(f"  ⚠️  WARNING: Expected ARM64, found {arch}")
                missing_deps.append(lib)
        else:
            missing_deps.append(lib)
        print()
    
    # Provide recommendations
    print("=== Diagnosis & Recommendations ===")
    
    if all_found and not missing_deps:
        print("✅ All dependencies appear to be in place!")
        print("If you're still experiencing issues:")
        print("1. Make sure Godot is running from the project directory")
        print("2. Use --verbose flag when running Godot")
        print("3. Check Godot console for detailed error messages")
    else:
        print("❌ Issues detected:")
        
        if not all_found:
            print("• Core py4godot files are missing or have wrong architecture")
            print("  → Solution: Rebuild py4godot for windowsarm64 platform")
        
        if missing_deps:
            print("• Missing runtime dependencies:")
            for dep in missing_deps:
                print(f"  - {dep}")
            print("  → Solution: Run the dependency copier script")
            print("    python ../setup/copy_dependencies.py")
    
    print("\n=== Next Steps ===")
    if missing_deps:
        print("1. Run: python ../setup/copy_dependencies.py")
        print("2. Run this checker again to verify")
        print("3. Test in Godot with --verbose logging")
    else:
        print("1. Test in Godot with --verbose logging")
        print("2. If issues persist, run: python test_loading.py")
    
    return 0 if all_found and not missing_deps else 1

if __name__ == "__main__":
    sys.exit(main())