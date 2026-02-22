FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    python3 \
    python3-pip \
    python3-dev \
    python3-venv \
    ninja-build \
    pkg-config \
    meson \
    && rm -rf /var/lib/apt/lists/*

# Android NDK version and install path
ENV ANDROID_NDK_VERSION=r29
ENV ANDROID_NDK_ROOT=/opt/android-sdk/android-ndk-${ANDROID_NDK_VERSION}

# Download and install Android NDK
RUN curl -fsSL "https://dl.google.com/android/repository/android-ndk-${ANDROID_NDK_VERSION}-linux.zip" \
        -o /tmp/android-ndk.zip \
    && mkdir -p /opt/android-sdk \
    && unzip -q /tmp/android-ndk.zip -d /opt/android-sdk \
    && rm /tmp/android-ndk.zip

WORKDIR /build

CMD ["bash"]