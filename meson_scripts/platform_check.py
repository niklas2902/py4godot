import platform
import struct

import ctypes
import platform
import os


def get_native_windows_architecture():
    """Get the actual hardware architecture on Windows using GetNativeSystemInfo"""
    try:
        class SYSTEM_INFO(ctypes.Structure):
            _fields_ = [
                ('wProcessorArchitecture', ctypes.c_ushort),
                ('wReserved', ctypes.c_ushort),
                ('dwPageSize', ctypes.c_uint),
                ('lpMinimumApplicationAddress', ctypes.c_void_p),
                ('lpMaximumApplicationAddress', ctypes.c_void_p),
                ('dwActiveProcessorMask', ctypes.POINTER(ctypes.c_ulong)),
                ('dwNumberOfProcessors', ctypes.c_uint),
                ('dwProcessorType', ctypes.c_uint),
                ('dwAllocationGranularity', ctypes.c_uint),
                ('wProcessorLevel', ctypes.c_ushort),
                ('wProcessorRevision', ctypes.c_ushort)
            ]

        arch_map = {
            0: 'x86',
            5: 'ARM',
            6: 'Itanium',
            9: 'x64',
            12: 'ARM64'
        }

        sysinfo = SYSTEM_INFO()
        ctypes.windll.kernel32.GetNativeSystemInfo(ctypes.byref(sysinfo))

        arch_code = sysinfo.wProcessorArchitecture
        arch_name = arch_map.get(arch_code, f'Unknown({arch_code})')

        print(f"Native architecture code: {arch_code}")
        print(f"Native architecture: {arch_name}")

        return arch_name

    except Exception as e:
        print(f"Failed to get native architecture: {e}")
        return None


def comprehensive_platform_info():
    """Get comprehensive platform information"""
    print("=== Python Platform Info ===")
    print(f"platform.system(): {platform.system()}")
    print(f"platform.machine(): {platform.machine()}")
    print(f"platform.processor(): {platform.processor()}")
    print(f"platform.architecture(): {platform.architecture()}")

    print("\n=== Environment Variables ===")
    print(f"PROCESSOR_ARCHITECTURE: {os.environ.get('PROCESSOR_ARCHITECTURE')}")
    print(f"PROCESSOR_ARCHITEW6432: {os.environ.get('PROCESSOR_ARCHITEW6432')}")
    print(f"PROCESSOR_IDENTIFIER: {os.environ.get('PROCESSOR_IDENTIFIER')}")

    print("\n=== Native System Info ===")
    if platform.system() == "Windows":
        native_arch = get_native_windows_architecture()
        return native_arch
    else:
        print("Not Windows - skipping native system info")
        return None


def get_platform_with_native_detection():
    """Enhanced platform detection that checks native architecture"""
    system = platform.system().lower()

    if system == "windows":
        # First try native detection
        native_arch = get_native_windows_architecture()

        if native_arch == "ARM64":
            return "windowsarm64"
        elif native_arch in ["x64", "x86"]:
            return "windows64"
        else:
            # Fallback to original detection
            arch = platform.machine().lower()
            if arch in ("aarch64", "arm64"):
                return "windowsarm64"
            else:
                return "windows64"
    elif system == "linux":
        arch = platform.machine().lower()
        if arch in ("aarch64", "arm64"):
            return "linuxarm64"
        else:
            return "linux64"

    return f"{system}64"


if __name__ == "__main__":
    comprehensive_platform_info()

    print(f"native_platform:{get_platform_with_native_detection()}")

    print("\n=== Final Platform Detection ===")
    result = get_platform_with_native_detection()
    print(f"Detected platform: {result}")

def get_platform():
    """
    Return:
      - 'linuxarm64' for Linux ARM64
      - 'linux64' for Linux x86_64
      - 'windows64' for Windows 64-bit
      - 'windowsarm64' for Windows ARM64 (if applicable)
    """
    system = platform.system().lower()
    arch = platform.machine().lower()
    return "windowsarm64"

    print(f"system: {system}, arch: {arch}")
    if system == "linux":
        if arch in ("aarch64", "arm64"):
            return "linuxarm64"
        elif struct.calcsize("P") * 8 == 64:
            return "linux64"
    elif system == "windows":
        if arch in ("aarch64", "arm64"):
            return "windowsarm64"
        elif struct.calcsize("P") * 8 == 64:
            return "windows64"
    
    # Fallback for other systems
    return f"{system}{struct.calcsize('P') * 8}"
