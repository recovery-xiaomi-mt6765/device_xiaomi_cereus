# device_xiaomi_cereus
## How to build TWRP from official repo?
1) mkdir TWR{ && cd TWRP
3) git clone https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni -b twrp-9.0
4) git clone https://github.com/TeamWin/android_device_xiaomi_cereus device/xiaomi/cactus
5) export ALLOW_MISSING_DEPENDENCIES=true
6) . build/envsetup.sh
7) lunch omni_cereus-eng
8) mka recoveryimage
### Out file TWRP/out/target/product/cactus/recovery.img
