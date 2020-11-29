# Add lunch combos
FDEVICE="cereus"

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep $FDEVICE)
   if [ -n "$chkdev" ]; then
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep $FDEVICE)
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
        export FOX_RECOVERY_INSTALL_PARTITION=/dev/block/platform/bootdevice/by-name/recovery
        export FOX_VENDOR_INSTALL_PARTITION=/dev/block/platform/bootdevice/by-name/vendor
        export FOX_SYSTEM_INSTALL_PARTITION=/dev/block/platform/bootdevice/by-name/system
        # OrangeFox
	export OF_SCREEN_H=2160
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
	export OF_USE_MAGISKBOOT=1
	export OF_AB_DEVICE=1
	add_lunch_combo omni_"$FDEVICE"-eng
	add_lunch_combo omni_"$FDEVICE"-userdebug
	export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
fi
#
