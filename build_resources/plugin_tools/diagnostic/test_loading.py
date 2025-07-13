#!/usr/bin/env python3
"""
py4godot DLL Loading Test
This script tests if py4godot DLLs can be loaded directly for advanced troubleshooting.

Usage: python test_loading.py
"""

import os
import sys
import ctypes
from ctypes import wintypes

def test_load_library(dll_path, dll_name):
    """Test loading a DLL and report detailed errors."""
    print(f"\nTesting: {dll_name}")
    print(f"Path: {dll_path}")
    
    if not os.path.exists(dll_path):
        print(f"✗ File does not exist!")
        return False
    
    # Get absolute path
    abs_path = os.path.abspath(dll_path)
    
    # Try to load with ctypes
    try:
        # First, try setting the DLL directory
        kernel32 = ctypes.windll.kernel32
        kernel32.SetDllDirectoryW.argtypes = [wintypes.LPCWSTR]
        kernel32.SetDllDirectoryW.restype = wintypes.BOOL
        
        dll_dir = os.path.dirname(abs_path)
        if kernel32.SetDllDirectoryW(dll_dir):
            print(f"✓ Set DLL directory to: {dll_dir}")
        
        # Try loading the library
        print("Attempting to load library...")
        lib = ctypes.CDLL(abs_path)
        print("✓ Library loaded successfully!")
        
        # For main.dll, try to find py4godot_init
        if dll_name == "main.dll":
            try:
                py4godot_init = lib.py4godot_init
                print("✓ Found py4godot_init symbol!")
                return True
            except AttributeError:
                print("✗ py4godot_init symbol not found!")
                return False
        
        return True
            
    except OSError as e:
        print(f"✗ Failed to load library: {e}")
        
        # Get more detailed error info
        error_code = ctypes.get_last_error()
        if error_code:
            print(f"Windows error code: {error_code}")
            
            # Provide user-friendly error explanations
            error_messages = {
                126: "Module or one of its dependencies could not be found",
                127: "The specified procedure could not be found",
                193: "Not a valid Win32 application (architecture mismatch)",
                1114: "A dynamic link library (DLL) initialization routine failed"
            }
            
            if error_code in error_messages:
                print(f"Error meaning: {error_messages[error_code]}")
            
            if error_code == 126:
                print("\n💡 Error 126 Solutions:")
                print("1. Run: python ../setup/copy_dependencies.py")
                print("2. Install Visual C++ Redistributables for ARM64")
                print("3. Check that all DLLs are ARM64 architecture")
            elif error_code == 193:
                print("\n💡 Error 193 Solutions:")
                print("1. Verify all DLLs are ARM64 (not x64 or x86)")
                print("2. Rebuild py4godot for windowsarm64 platform")
            
        return False

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
    print("=== py4godot DLL Loading Test ===\n")
    
    # Check Python environment
    print(f"Python version: {sys.version}")
    print(f"Python executable: {sys.executable}")
    
    # Find plugin directory
    plugin_dir = find_plugin_directory()
    if not plugin_dir:
        print("\nERROR: Cannot find py4godot plugin directory!")
        print("Please run this script from your Godot project directory or the py4godot plugin directory.")
        return 1
    
    print(f"Plugin directory: {plugin_dir}")
    
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
        print("\nERROR: ARM64 Python installation not found!")
        return 1
    
    print(f"Python directory: {python_dir}")
    
    # Test loading libraries in order
    libraries_to_test = [
        ("python312.dll", "Python Runtime"),
        ("pythonscript.dll", "Python Script Handler"),
        ("main.dll", "Main py4godot Library"),
    ]
    
    success_count = 0
    total_count = len(libraries_to_test)
    
    for dll_name, description in libraries_to_test:
        dll_path = os.path.join(python_dir, dll_name)
        if os.path.exists(dll_path):
            success = test_load_library(dll_path, dll_name)
            if success:
                success_count += 1
        else:
            print(f"\n✗ {dll_name} not found at: {dll_path}")
    
    # Summary
    print(f"\n=== Results ===")
    print(f"Successfully loaded: {success_count}/{total_count} libraries")
    
    if success_count == total_count:
        print("✅ All libraries loaded successfully!")
        print("The DLLs appear to be working correctly.")
        print("If Godot still has issues, the problem may be elsewhere.")
    else:
        print("❌ Some libraries failed to load.")
        print("\n💡 Recommended actions:")
        print("1. Run: python ../setup/copy_dependencies.py")
        print("2. Run: python check_dependencies.py")
        print("3. Install Visual C++ Redistributables for ARM64")
        print("4. Verify all files are ARM64 architecture")
    
    print("\n=== Additional Help ===")
    print("• For dependency issues: Use copy_dependencies.py")
    print("• For architecture issues: Rebuild py4godot for windowsarm64")
    print("• For Godot issues: Run Godot with --verbose flag")
    
    return 0 if success_count == total_count else 1

if __name__ == "__main__":
    sys.exit(main())