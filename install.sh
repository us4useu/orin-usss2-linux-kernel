#!/bin/bash
set -e

l4t_dir=$(pwd)/..

export INSTALL_MOD_PATH=${l4t_dir}/rootfs/
cd kernel_out
sudo -E make install -C kernel
cp kernel/kernel-jammy-src/arch/arm64/boot/Image ${l4t_dir}/kernel/Image
cd ..
