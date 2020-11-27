# device_xiaomi_cereus
## How to build OrangeFox from official repo?
1) mkdir of && cd of
2) repo init -u repo init -u https://gitlab.com/OrangeFox/Manifest.git -b fox_9.0
3) repo sync
4) git clone https://github.com/recovery-xiaomi-mt6765/device_xiaomi_cereus -b orangefox-pie  device/xiaomi/cereus
5) export ALLOW_MISSING_DEPENDENCIES=true
6) . build/envsetup.sh
7) lunch omni_cereus-eng
8) mka recoveryimage
### Out file twrp/out/target/product/cereus/recovey.img
