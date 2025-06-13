# py4godot Tools Documentation

This document covers both end-user plugin tools and developer tools for py4godot ARM64 support.

## Tools Overview

### End-User Tools (Plugin Distribution)
Located in `addons/py4godot/tools/` when installed:

```
addons/py4godot/tools/
├── diagnostic/
│   ├── check_dependencies.py   # Check for missing dependencies
│   └── test_loading.py         # Test DLL loading directly
├── setup/
│   └── copy_dependencies.py   # Copy required runtime libraries
└── README.md           # This file
```

### Developer Tools (Repository)
Located in `tools/arm64/` for contributors:

```
tools/arm64/
├── check_arm64_dependencies.py        # Full dependency analysis
├── test_arm64_loading.py              # Advanced DLL loading tests
├── copy_arm64_dependencies_simple.py  # Development dependency copier
├── find_ucrt_dlls.py                  # UCRT DLL locator
└── create_test_project.py             # Test project creator
```

## Quick Start

If you're experiencing issues with py4godot on Windows ARM64:

1. **Check for problems:**
   ```bash
   cd addons/py4godot/tools/diagnostic
   python check_dependencies.py
   ```

2. **Fix missing dependencies:**
   ```bash
   cd addons/py4godot/tools/setup
   python copy_dependencies.py
   ```

3. **Advanced troubleshooting:**
   ```bash
   cd addons/py4godot/tools/diagnostic
   python test_loading.py
   ```

## Tool Descriptions

### diagnostic/check_dependencies.py
- **Purpose**: Primary diagnostic tool for end users
- **What it does**: 
  - Checks if all required py4godot files are present
  - Verifies DLL architectures (should be ARM64)
  - Checks for py4godot_init symbol export
  - Validates runtime dependencies
- **When to use**: First step when py4godot isn't working

### diagnostic/test_loading.py
- **Purpose**: Advanced troubleshooting for persistent issues
- **What it does**:
  - Tests direct DLL loading using Python ctypes
  - Provides detailed Windows error codes and explanations
  - Identifies specific loading failures
- **When to use**: When check_dependencies.py passes but Godot still fails

### setup/copy_dependencies.py
- **Purpose**: Automatically copy required runtime libraries
- **What it does**:
  - Finds Visual C++ Redistributables for ARM64
  - Copies Universal C Runtime (UCRT) DLLs
  - Works without requiring Visual Studio tools
- **When to use**: When check_dependencies.py reports missing dependencies

## Common Issues & Solutions

### Error 126: Cannot load library
**Cause**: Missing runtime dependencies
**Solution**: Run `copy_dependencies.py`

### py4godot_init symbol not found
**Cause**: main.dll failed to build properly or wrong architecture
**Solution**: Rebuild py4godot for windowsarm64

### Architecture mismatch warnings
**Cause**: x64 DLLs on ARM64 system
**Solution**: Rebuild py4godot with correct target platform

## System Requirements

- Windows 11 ARM64
- Python 3.8+ (any architecture for running tools)
- Visual C++ Redistributables for ARM64 (will be copied by tools if available)
- Windows SDK with ARM64 support (for UCRT DLLs)

## Getting Help

If these tools don't resolve your issue:

1. Run Godot with `--verbose` flag for detailed logging
2. Check Windows Event Viewer for additional error details
3. Report the issue with full diagnostic output

## Developer Tools (Repository Contributors)

### Available Tools

#### `tools/arm64/check_arm64_dependencies.py`
- **Purpose**: Comprehensive dependency analysis with dumpbin integration
- **Usage**: `python tools/arm64/check_arm64_dependencies.py`
- **Features**: Architecture validation, symbol export verification, detailed error reporting
- **Requirements**: Visual Studio tools (dumpbin)

#### `tools/arm64/test_arm64_loading.py`
- **Purpose**: Advanced DLL loading tests using Python ctypes
- **Usage**: `python tools/arm64/test_arm64_loading.py`
- **Features**: Direct DLL loading simulation, Windows error code analysis

#### `tools/arm64/copy_arm64_dependencies_simple.py`
- **Purpose**: Development dependency copier
- **Usage**: `python tools/arm64/copy_arm64_dependencies_simple.py`
- **Features**: Interactive mode, works without Visual Studio tools

#### `tools/arm64/find_ucrt_dlls.py`
- **Purpose**: Specialized UCRT DLL locator and copier
- **Usage**: `python tools/arm64/find_ucrt_dlls.py`
- **Features**: Multi-SDK scanning, batch UCRT copying

#### `tools/arm64/create_test_project.py`
- **Purpose**: Creates minimal Godot projects for ARM64 testing
- **Usage**: `python tools/arm64/create_test_project.py [project_name]`
- **Features**: Automated project setup, test scripts, debug configuration

### Development Workflow

1. **Build for ARM64**:
   ```bash
   python build.py --target_platform=windowsarm64 --compiler=msvc
   ```

2. **Verify dependencies**:
   ```bash
   python tools/arm64/check_arm64_dependencies.py
   ```

3. **Copy missing dependencies**:
   ```bash
   python tools/arm64/copy_arm64_dependencies_simple.py
   ```

4. **Create test project**:
   ```bash
   python tools/arm64/create_test_project.py my-test
   ```

### Relationship to End-User Tools

The developer tools provide the foundation for the simplified end-user tools. Developer tools offer full diagnostic capabilities, while end-user tools are streamlined for plugin distribution.