import platform
import struct


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
    processor = platform.processor().lower()

    print(f"system: {system}, arch: {arch}")
    print(f"processor: {processor}")

    if system == "linux":
        if arch in ("aarch64", "arm64"):
            return "linuxarm64"
        elif struct.calcsize("P") * 8 == 64:
            return "linux64"
    elif system == "windows":
        # Check processor info for ARM detection
        if "armv8" in processor or "arm64" in processor or arch in ("aarch64", "arm64"):
            return "windowsarm64"
        elif struct.calcsize("P") * 8 == 64:
            return "windows64"

    # Fallback for other systems
    return f"{system}{struct.calcsize('P') * 8}"


if __name__ == "__main__":
    result = get_platform()
    print(f"Detected platform: {result}")