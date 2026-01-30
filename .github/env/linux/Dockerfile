# Use an Ubuntu base image (x86_64)
FROM ubuntu:latest

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
RUN apt-get update && apt-get install -y python3-venv python-is-python3 python3-pip


RUN python3 -m pip install setuptools --break-system-packages

# Set working directory
WORKDIR /app

# Download and install Godot 4.6 x86_64 build
RUN wget https://github.com/godotengine/godot/releases/download/4.6-stable/Godot_v4.6-stable_linux.x86_64.zip && \
    unzip Godot_v4.6-stable_linux.x86_64.zip -d /usr/local/bin && \
    chmod +x /usr/local/bin/Godot_v4.6-stable_linux.x86_64 && \
    ln -s /usr/local/bin/Godot_v4.6-stable_linux.x86_64 /usr/local/bin/godot && \
    rm Godot_v4.6-stable_linux.x86_64.zip

# Verify Godot installation
RUN godot --version && which godot

# Default command
CMD ["/bin/bash"]