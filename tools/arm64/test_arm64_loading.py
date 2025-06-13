#!/usr/bin/env python3
"""
Test ARM64 DLL Loading
This script tests if we can load the main.dll directly using ctypes.
"""

import os
import sys
import ctypes
from ctypes import wintypes

def test_load_library(dll_path):
    """Test loading a DLL and report detailed errors."""
    print(f"\nTesting: {dll_path}")
    
    if not os.path.exists(dll_path):
        print(f"ERROR: File does not exist!")
        return False
    
    # Get absolute path
    abs_path = os.path.abspath(dll_path)
    print(f"Absolute path: {abs_path}")
    
    # Try to load with ctypes
    try:
        # First, try setting the DLL directory
        kernel32 = ctypes.windll.kernel32
        kernel32.SetDllDirectoryW.argtypes = [wintypes.LPCWSTR]
        kernel32.SetDllDirectoryW.restype = wintypes.BOOL
        
        dll_dir = os.path.dirname(abs_path)
        if kernel32.SetDllDirectoryW(dll_dir):
            print(f"Set DLL directory to: {dll_dir}")
        
        # Try loading the library
        print("Attempting to load library...")
        lib = ctypes.CDLL(abs_path)
        print("✓ Library loaded successfully!")
        
        # Try to find py4godot_init
        try:
            py4godot_init = lib.py4godot_init
            print("✓ Found py4godot_init symbol!")
            return True
        except AttributeError:
            print("✗ py4godot_init symbol not found!")
            # List all available symbols if possible
            return False
            
    except OSError as e:
        print(f"✗ Failed to load library: {e}")
        
        # Get more detailed error info
        error_code = ctypes.get_last_error()
        if error_code:
            print(f"Windows error code: {error_code}")
            
            # Get error message
            kernel32 = ctypes.windll.kernel32
            local_free = kernel32.LocalFree
            get_last_error = kernel32.GetLastError
            format_message = kernel32.FormatMessageW
            
            FORMAT_MESSAGE_ALLOCATE_BUFFER = 0x00000100
            FORMAT_MESSAGE_FROM_SYSTEM = 0x00001000
            FORMAT_MESSAGE_IGNORE_INSERTS = 0x00000200
            
            message_buffer = ctypes.c_wchar_p()
            format_message(
                FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,
                None,
                error_code,
                0,
                ctypes.byref(message_buffer),
                0,
                None
            )
            
            if message_buffer.value:
                print(f"Error details: {message_buffer.value}")
                local_free(message_buffer)
        
        return False

def check_python_path():
    """Check if Python can find necessary modules."""
    print("\n=== Python Environment Check ===")
    print(f"Python version: {sys.version}")
    print(f"Python executable: {sys.executable}")
    print(f"Python path:")
    for p in sys.path:
        print(f"  - {p}")

def main():
    print("=== py4godot ARM64 DLL Loading Test ===\n")
    
    # Check Python environment
    check_python_path()
    
    # Define paths to test (relative to repository root)
    repo_root = os.path.join(os.path.dirname(__file__), "..", "..")
    base_path = os.path.join(repo_root, "build/final/windowsarm64/cpython-3.12.4-windowsarm64/python")
    
    if not os.path.exists(base_path):
        # Try alternative path from test project
        alt_path = os.path.join(repo_root, "addons/py4godot/cpython-3.12.4-windowsarm64/python")
        if os.path.exists(alt_path):
            base_path = alt_path
        else:
            print(f"ERROR: Build directory not found. Tried:")
            print(f"  - {base_path}")
            print(f"  - {alt_path}")
            print("Please run the build first from repository root:")
            print("python build.py --target_platform=windowsarm64 --compiler=msvc")
            return 1
    
    print(f"\nUsing base path: {base_path}")
    
    # Test loading pythonscript.dll first (should work)
    pythonscript_path = os.path.join(base_path, "pythonscript.dll")
    if os.path.exists(pythonscript_path):
        test_load_library(pythonscript_path)
    
    # Test loading main.dll (this is where it fails)
    main_dll_path = os.path.join(base_path, "main.dll")
    if os.path.exists(main_dll_path):
        success = test_load_library(main_dll_path)
        
        if not success:
            print("\n=== Diagnostic Information ===")
            print("The main.dll exists but cannot be loaded. Common causes:")
            print("1. Missing dependencies (use Dependency Walker to check)")
            print("2. Architecture mismatch (x64 dependencies on ARM64 system)")
            print("3. Missing Visual C++ Redistributables for ARM64")
            print("4. Symbol export issues (py4godot_init not properly exported)")
            print("\nNext steps:")
            print("- Run check_arm64_dependencies.py for detailed analysis")
            print("- Use Dependency Walker on main.dll")
            print("- Check Event Viewer for additional error details")
    else:
        print(f"\nERROR: main.dll not found at: {main_dll_path}")
    
    return 0

if __name__ == "__main__":
    sys.exit(main())