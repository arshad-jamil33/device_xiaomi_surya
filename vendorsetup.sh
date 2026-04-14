# Miuicam
git clone https://github.com/arshad-jamil33/vendor_xiaomi_camera.git vendor/xiaomi/camera
bash vendor/xiaomi/camera/combine.sh

# Dolby
git clone https://github.com/arshad-jamil33/hardware_dolby.git hardware/dolby

# KernelSU
if [ -d "kernel/xiaomi/surya/KernelSU-Next" ] && [ ! -d "kernel/xiaomi/surya/KernelSU-Next/kernel" ]; then
    cd kernel/xiaomi/surya
    git submodule init
    git submodule update --recursive
    rm -rf KernelSU-Next/userspace
    cd ../../..
    echo "KernelSU-Next initialized and updated successfully."
else
    echo "KernelSU-Next directory already initialized or not present. No action required."
fi
