# Use the latest Ubuntu LTS as the base image
FROM ubuntu:latest

# Set environment variable to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

FROM ubuntu:22.04

# Update package lists and install necessary dependencies
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

# Ensure Python 3.11 is the default version
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1 && \
    update-alternatives --set python3 /usr/bin/python3.11

# Upgrade pip to the latest version
RUN python3 -m pip install --upgrade pip

# Set up a working directory
WORKDIR /app

# Download and install Godot 4.3 from GitHub
RUN wget https://github.com/godotengine/godot/releases/download/4.3-stable/Godot_v4.3-stable_linux.x86_64.zip && \
    unzip Godot_v4.3-stable_linux.x86_64.zip -d /usr/local/bin && \
    chmod +x /usr/local/bin/Godot_v4.3-stable_linux.x86_64 && \
    ln -s /usr/local/bin/Godot_v4.3-stable_linux.x86_64 /usr/local/bin/godot && \
    rm Godot_v4.3-stable_linux.x86_64.zip

# Verify installation and ensure Meson can find Godot
RUN godot --version && which godot

# Set the default command
CMD ["/bin/bash"]
