#!/usr/bin/env python3
"""
Find and copy UCRT (Universal C Runtime) DLLs for ARM64
"""

import os
import glob
import shutil
from pathlib import Path

def find_windows_kits():
    """Find all Windows Kits installations."""
    kits = []
    
    # Common locations for Windows Kits
    base_paths = [
        r"C:\Program Files (x86)\Windows Kits\10",
        r"C:\Program Files\Windows Kits\10",
    ]
    
    for base in base_paths:
        if os.path.exists(base):
            # Look for Redist folders
            redist_pattern = os.path.join(base, "Redist", "*", "ucrt", "DLLs", "arm64")
            for path in glob.glob(redist_pattern):
                if os.path.exists(path):
                    kits.append(path)
            
            # Also check direct ucrt path
            ucrt_path = os.path.join(base, "Redist", "ucrt", "DLLs", "arm64")
            if os.path.exists(ucrt_path) and ucrt_path not in kits:
                kits.append(ucrt_path)
    
    return kits

def list_ucrt_dlls(kit_path):
    """List all UCRT DLLs in a Windows Kit path."""
    dlls = []
    pattern = os.path.join(kit_path, "api-ms-win-crt-*.dll")
    for dll in glob.glob(pattern):
        dlls.append(os.path.basename(dll))
    
    # Also include ucrtbase.dll if present
    ucrtbase = os.path.join(kit_path, "ucrtbase.dll")
    if os.path.exists(ucrtbase):
        dlls.append("ucrtbase.dll")
    
    return sorted(dlls)

def copy_ucrt_dlls(source_dir, target_dir):
    """Copy all UCRT DLLs from source to target."""
    if not os.path.exists(target_dir):
        print(f"ERROR: Target directory does not exist: {target_dir}")
        return False
    
    dlls = list_ucrt_dlls(source_dir)
    copied = 0
    
    print(f"\nCopying from: {source_dir}")
    print(f"Copying to: {target_dir}\n")
    
    for dll in dlls:
        source = os.path.join(source_dir, dll)
        target = os.path.join(target_dir, dll)
        
        if os.path.exists(target):
            print(f"✓ Already exists: {dll}")
            continue
        
        try:
            shutil.copy2(source, target)
            size = os.path.getsize(target)
            print(f"✓ Copied: {dll} ({size:,} bytes)")
            copied += 1
        except Exception as e:
            print(f"✗ Failed to copy {dll}: {e}")
    
    return copied

def main():
    """Main function."""
    print("=== Windows ARM64 UCRT DLL Finder ===\n")
    
    # Find Windows Kits
    print("Searching for Windows Kits installations...")
    kits = find_windows_kits()
    
    if not kits:
        print("\n✗ No Windows Kits with ARM64 UCRT found!")
        print("\nPlease install Windows SDK with ARM64 support:")
        print("https://developer.microsoft.com/en-us/windows/downloads/windows-sdk/")
        return 1
    
    print(f"\nFound {len(kits)} Windows Kit(s) with ARM64 UCRT:")
    for i, kit in enumerate(kits):
        dlls = list_ucrt_dlls(kit)
        print(f"\n{i+1}. {kit}")
        print(f"   Contains {len(dlls)} UCRT DLLs")
        if len(dlls) > 0:
            print(f"   Including: {', '.join(dlls[:5])}{'...' if len(dlls) > 5 else ''}")
    
    # Default target directory (relative to repository root)
    repo_root = os.path.join(os.path.dirname(__file__), "..", "..")
    target_dir = os.path.join(repo_root, "build/final/windowsarm64/cpython-3.12.4-windowsarm64/python")
    
    if not os.path.exists(target_dir):
        print(f"\n⚠️  Default target directory not found: {target_dir}")
        target_dir = input("Enter target directory path: ").strip()
        if not target_dir:
            return 1
    
    target_dir = os.path.abspath(target_dir)
    
    # If only one kit, use it automatically
    if len(kits) == 1:
        source_kit = kits[0]
    else:
        # Let user choose
        print("\nWhich Windows Kit to use?")
        choice = input(f"Enter number (1-{len(kits)}): ").strip()
        try:
            idx = int(choice) - 1
            if 0 <= idx < len(kits):
                source_kit = kits[idx]
            else:
                print("Invalid choice!")
                return 1
        except:
            print("Invalid input!")
            return 1
    
    # Copy DLLs
    print(f"\n=== Copying UCRT DLLs ===")
    copied = copy_ucrt_dlls(source_kit, target_dir)
    
    if copied > 0:
        print(f"\n✅ Successfully copied {copied} DLL(s)!")
        print("\nNext steps:")
        print("1. Copy any remaining dependencies with: python copy_arm64_dependencies.py")
        print("2. Test in Godot with the verbose logging")
    else:
        print("\n⚠️  No new DLLs were copied (they may already exist)")
    
    # Also show manual copy command
    print(f"\nManual copy command (PowerShell):")
    print(f'Copy-Item "{source_kit}\\*.dll" -Destination "{target_dir}" -Force')
    
    return 0

if __name__ == "__main__":
    import sys
    sys.exit(main())