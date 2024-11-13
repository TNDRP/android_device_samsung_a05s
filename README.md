# Android device tree for samsung SM-A057F A057FXX[S7]CXJ2 (a05s)


# How-to compile it:

 - twrp-12.1 Manifest
```
    repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
```
 - Sync
```
    repo sync
```
 - Clone TheNoobDevs-Staging twrp tree
```
    git clone https://github.com/TNDRP/android_device_samsung_a05s.git -b twrp-12.1 device/samsung/a05s
```
 - Build
```
    export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch twrp_gta9-eng; mka recoveryimage
```
## Multidisabler
once in twrp go to advanced, terminal and type "multidisabler" to stop restoration of stock recovery
