rm -rf .repo/local_manifests/  && # Clone local_manifests repository
repo init -u https://github.com/PixelOS-AOSP/manifest.git -b fourteen --git-lfs --depth 1 
 git clone  https://github.com/themiya-420/flame_local_manifest --depth 1 -b main .repo/local_manifests && 

# Sync the repositories
/opt/crave/resync.sh  && 
# Set up build environment
export BUILD_USERNAME=Themiya 
export BUILD_HOSTNAME=crave  
source build/envsetup.sh && 

 
# Build the ROM
lunch pixelos_flame-userdebug && make installclean && mka bacon
