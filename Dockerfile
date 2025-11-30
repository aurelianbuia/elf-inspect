FROM ubuntu:22.04

# Prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update and install all needed tools
RUN apt-get update && apt-get install -y \
    build-essential \
    binutils \
    gcc \
    g++ \
    make \
    cmake \
    gdb \
    clang \
    llvm \
    vim \
    python3 \
    python3-pip \
    file \
    git \
    && apt-get clean

# Optional: install helpful ELF tools
RUN apt-get update && apt-get install -y \
    elfutils \
    && apt-get clean

# Container working directory (mount point)
WORKDIR /workspace

