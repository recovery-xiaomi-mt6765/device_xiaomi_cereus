# device_xiaomi_cereus
## How to build TWRP from official repo?
1) mkdir shrp && cd shrp
2) https://shrp.github.io/#/guide
3) git clone https://github.com/recovery-xiaomi-mt6765/device_xiaomi_cereus -b SHRP device/xiaomi/cereus
4) export ALLOW_MISSING_DEPENDENCIES=true
5) . build/envsetup.sh
6) lunch omni_cereus-eng
7) mka recoveryimage
### Out file twrp/out/target/product/cereus/recovery.img
