# Use an ARM64-compatible Ubuntu base image
FROM --platform=linux/arm64 ubuntu:22.04

# Avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update and install system dependencies
RUN apt-get update && apt-get install -y \
    software-properties-common \
    curl \
    wget \
    git \
    unzip \
    p7zip-full \
    build-essential \
    cmake \
    pkg-config \
    libx11-dev \
    libxcursor-dev \
    libxinerama-dev \
    libxrandr-dev \
    libxi-dev \
    libasound2-dev \
    libpulse-dev \
    libudev-dev \
    libvulkan-dev \
    mesa-vulkan-drivers \
    meson \
    ninja-build \
    && rm -rf /var/lib/apt/lists/*

# Install Python 3.11 and pip
RUN apt-get update && apt-get install -y python3.11 python3.11-venv python3.11-dev python3-pip

# Set Python 3.11 as the default
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1 && \
    update-alternatives --set python3 /usr/bin/python3.11

# Upgrade pip
RUN python3 -m pip install --upgrade pip

# Set working directory
WORKDIR /app

# Download and install Godot 4.4 ARM64 build
RUN wget https://github.com/godotengine/godot/releases/download/4.4-stable/Godot_v4.4-stable_linux.arm64.zip && \
    unzip Godot_v4.4-stable_linux.arm64.zip -d /usr/local/bin && \
    chmod +x /usr/local/bin/Godot_v4.4-stable_linux.arm64 && \
    ln -s /usr/local/bin/Godot_v4.4-stable_linux.arm64 /usr/local/bin/godot && \
    rm Godot_v4.4-stable_linux.arm64.zip

# Verify Godot installation
RUN godot --version && which godot

# Default command
CMD ["/bin/bash"]
