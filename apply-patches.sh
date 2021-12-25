#!/bin/bash

export SOURCE_DIR=$PWD
export PHH=$SOURCE_DIR/patches/PHH
export Andy=$SOURCE_DIR/patches/Andy
export extra=$SOURCE_DIR/patches/extra

#apply_patches() {
#  if [ "$PWD" == "$SOURCE_DIR/$1" ]; then
#     for i in {01..$3}; do git am $2/00$i* ; done
#  else
#     echo "Current Directory: $PWD ≠ $SOURCE_DIR/$1"
#     echo "Skipping patches for $1"
#  fi
#}

#platform_bionic
cp -r $PHH/platform_bionic $SOURCE_DIR/bionic/phh && cd $SOURCE_DIR/bionic
#apply_patches bionic phh 01
if [ "$PWD" == "$SOURCE_DIR/bionic" ]; then
   for i in {01..01}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/bionic"
   echo "Skipping patches for bionic"
fi

#platform_bootable_recovery
cp -r $PHH/platform_bootable_recovery $SOURCE_DIR/bootable/recovery/phh && cd $SOURCE_DIR/bootable/recovery
#apply_patches bootable/recovery phh 01
if [ "$PWD" == "$SOURCE_DIR/bootable/recovery" ]; then
   for i in {01..01}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/bootable/recovery"
   echo "Skipping patches for bootable/recovery"
fi

#platform_external_selinux
cp -r $PHH/platform_external_selinux $SOURCE_DIR/external/selinux/phh && cd $SOURCE_DIR/external/selinux
#apply_patches external/selinux phh 07
if [ "$PWD" == "$SOURCE_DIR/external/selinux" ]; then
   for i in {01..07}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/external/selinux"
   echo "Skipping patches for external/selinux"
fi

#platform_frameworks_av
cp -r $PHH/platform_frameworks_av $SOURCE_DIR/frameworks/av/phh && cd $SOURCE_DIR/frameworks/av
#apply_patches frameworks/av phh 18
if [ "$PWD" == "$SOURCE_DIR/frameworks/av" ]; then
   for i in {01..18}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/frameworks/av"
   echo "Skipping patches for frameworks/av"
fi

#platform_frameworks_base
cp -r $PHH/platform_frameworks_base $SOURCE_DIR/frameworks/base/phh && cd $SOURCE_DIR/frameworks/base
#apply_patches frameworks/base phh 23
if [ "$PWD" == "$SOURCE_DIR/frameworks/base" ]; then
   for i in {01..23}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/frameworks/base"
   echo "Skipping patches for frameworks/base"
fi

#platform_frameworks_native
cp -r $PHH/platform_frameworks_native $SOURCE_DIR/frameworks/native/phh && cd $SOURCE_DIR/frameworks/native
#apply_patches frameworks/native phh 11
if [ "$PWD" == "$SOURCE_DIR/frameworks/native" ]; then
   for i in {01..11}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/frameworks/native"
   echo "Skipping patches for frameworks/native"
fi

#platform_frameworks_opt_net_ims
cp -r $PHH/platform_frameworks_opt_net_ims $SOURCE_DIR/frameworks/opt/net/ims/phh && cd $SOURCE_DIR/frameworks/opt/net/ims
#apply_patches frameworks/opt/net/ims phh 01
if [ "$PWD" == "$SOURCE_DIR/frameworks/opt/net/ims" ]; then
   for i in {01..01}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/frameworks/opt/net/ims"
   echo "Skipping patches for frameworks/opt/net/ims"
fi

#platform_frameworks_opt_telephony
cp -r $PHH/platform_frameworks_opt_telephony $SOURCE_DIR/frameworks/opt/telephony/phh && cd $SOURCE_DIR/frameworks/opt/telephony
#apply_patches frameworks/opt/telephony phh 03
if [ "$PWD" == "$SOURCE_DIR/frameworks/opt/telephony" ]; then
   for i in {01..03}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/frameworks/opt/telephony"
   echo "Skipping patches for frameworks/opt/telephony"
fi

#platform_hardware_interfaces
cp -r $PHH/platform_hardware_interfaces $SOURCE_DIR/hardware/interfaces/phh && cd $SOURCE_DIR/hardware/interfaces
#apply_patches hardware/interfaces phh 01
if [ "$PWD" == "$SOURCE_DIR/hardware/interfaces" ]; then
   for i in {01..01}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/hardware/interfaces"
   echo "Skipping patches for hardware/interfaces"
fi

#platform_packages_apps_Bluetooth
cp -r $PHH/platform_packages_apps_Bluetooth $SOURCE_DIR/packages/apps/Bluetooth/phh && cd $SOURCE_DIR/packages/apps/Bluetooth
#apply_patches packages/apps/Bluetooth phh 01
if [ "$PWD" == "$SOURCE_DIR/packages/apps/Bluetooth" ]; then
   for i in {01..01}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/packages/apps/Bluetooth"
   echo "Skipping patches for packages/apps/Bluetooth"
fi

#platform_packages_apps_Settings
cp -r $PHH/platform_packages_apps_Settings $SOURCE_DIR/packages/apps/Settings/phh && cd $SOURCE_DIR/packages/apps/Settings
#apply_patches packages/apps/Settings phh 01
if [ "$PWD" == "$SOURCE_DIR/packages/apps/Settings" ]; then
   for i in {01..01}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/packages/apps/Settings"
   echo "Skipping patches for packages/apps/Settings"
fi

#platform_packages_modules_Wifi
cp -r $PHH/platform_packages_modules_Wifi $SOURCE_DIR/packages/modules/Wifi/phh && cd $SOURCE_DIR/packages/modules/Wifi
#apply_patches packages/modules/Wifi phh 01
if [ "$PWD" == "$SOURCE_DIR/packages/modules/Wifi" ]; then
   for i in {01..01}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/packages/modules/Wifi"
   echo "Skipping patches for packages/modules/Wifi"
fi

#platform_system_bpf
cp -r $PHH/platform_system_bpf $SOURCE_DIR/system/bpf/phh && cd $SOURCE_DIR/system/bpf
#apply_patches system/bpf phh 01
if [ "$PWD" == "$SOURCE_DIR/system/bpf" ]; then
   for i in {01..01}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/system/bpf"
   echo "Skipping patches for system/bpf"
fi

#platform_system_bt
cp -r $PHH/platform_system_bt $SOURCE_DIR/system/bt/phh && cd $SOURCE_DIR/system/bt
#apply_patches system/bt phh 05
if [ "$PWD" == "$SOURCE_DIR/system/bt" ]; then
   for i in {01..05}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/system/bt"
   echo "Skipping patches for system/bt"
fi

#platform_system_core
cp -r $PHH/platform_system_core $SOURCE_DIR/system/core/phh && cd $SOURCE_DIR/system/core
#apply_patches system/core phh 05
if [ "$PWD" == "$SOURCE_DIR/system/core" ]; then
   for i in {01..05}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/system/core"
   echo "Skipping patches for system/core"
fi

#platform_system_extras
cp -r $PHH/platform_system_extras $SOURCE_DIR/system/extras/phh && cd $SOURCE_DIR/system/extras
#apply_patches system/extras phh 01
if [ "$PWD" == "$SOURCE_DIR/system/extras" ]; then
   for i in {01..01}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/system/extras"
   echo "Skipping patches for system/extras"
fi

#platform_system_linkerconfig
cp -r $PHH/platform_system_linkerconfig $SOURCE_DIR/system/linkerconfig/phh && cd $SOURCE_DIR/system/linkerconfig
#apply_patches system/linkerconfig phh 01
if [ "$PWD" == "$SOURCE_DIR/system/linkerconfig" ]; then
   for i in {01..01}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/system/linkerconfig"
   echo "Skipping patches for system/linkerconfig"
fi

#platform_system_netd
cp -r $PHH/platform_system_netd $SOURCE_DIR/system/netd/phh && cd $SOURCE_DIR/system/netd
#apply_patches system/netd phh 03
if [ "$PWD" == "$SOURCE_DIR/system/netd" ]; then
   for i in {01..03}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/system/netd"
   echo "Skipping patches for system/netd"
fi

#platform_system_nfc
cp -r $PHH/platform_system_nfc $SOURCE_DIR/system/nfc/phh && cd $SOURCE_DIR/system/nfc
#apply_patches system/nfc phh 01
if [ "$PWD" == "$SOURCE_DIR/system/nfc" ]; then
   for i in {01..01}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/system/nfc"
   echo "Skipping patches for system/nfc"
fi

#platform_system_vold
cp -r $PHH/platform_system_vold $SOURCE_DIR/system/vold/phh && cd $SOURCE_DIR/system/vold
#apply_patches system/vold phh 07
if [ "$PWD" == "$SOURCE_DIR/system/vold" ]; then
   for i in {01..07}; do git am phh/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/system/vold"
   echo "Skipping patches for system/vold"
fi

## AndyCGYans patches ##

#build_make
cp -r $Andy/build_make $SOURCE_DIR/build/make/andy && cd $SOURCE_DIR/build/make
#apply_patches build/make andy 02
if [ "$PWD" == "$SOURCE_DIR/build/make" ]; then
   for i in {01..02}; do git am andy/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/build/make"
   echo "Skipping patches for build/make"
fi

#device_phh_treble
cp -r $Andy/device_phh_treble $SOURCE_DIR/device/phh/treble/andy && cd $SOURCE_DIR/device/phh/treble
#apply_patches device/phh/treble andy 02
if [ "$PWD" == "$SOURCE_DIR/device/phh/treble" ]; then
   for i in {01..02}; do git am andy/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/device/phh/treble"
   echo "Skipping patches for device/phh/treble"
fi

#frameworks_base
cp -r $Andy/frameworks_base $SOURCE_DIR/frameworks/base/andy && cd $SOURCE_DIR/frameworks/base
#apply_patches frameworks/base andy 01
if [ "$PWD" == "$SOURCE_DIR/frameworks/base" ]; then
   for i in {01..01}; do git am andy/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/frameworks/base"
   echo "Skipping patches for frameworks/base"
fi

#frameworks_native
cp -r $Andy/frameworks_native $SOURCE_DIR/frameworks/native/andy && cd $SOURCE_DIR/frameworks/native
#apply_patches frameworks/native andy 01
if [ "$PWD" == "$SOURCE_DIR/frameworks/native" ]; then
   for i in {01..01}; do git am andy/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/frameworks/native"
   echo "Skipping patches for frameworks/native"
fi

#system_core
cp -r $Andy/system_core $SOURCE_DIR/system/core/andy && cd $SOURCE_DIR/system/core
#apply_patches system/core andy 02
if [ "$PWD" == "$SOURCE_DIR/system/core" ]; then
   for i in {01..02}; do git am andy/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/system/core"
   echo "Skipping patches for system/core"
fi

#system_sepolicy
cp -r $Andy/system_sepolicy $SOURCE_DIR/system/sepolicy/andy && cd $SOURCE_DIR/system/sepolicy
#apply_patches system/sepolicy andy 01
if [ "$PWD" == "$SOURCE_DIR/system/sepolicy" ]; then
   for i in {01..01}; do git am andy/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/system/sepolicy7"
   echo "Skipping patches for system/sepolicy"
fi

#vendor_octavi
cp -r $Andy/vendor_octavi $SOURCE_DIR/vendor/octavi/andy && cd $SOURCE_DIR/vendor/octavi
#apply_patches vendor/octavi andy 01
if [ "$PWD" == "$SOURCE_DIR/vendor/octavi" ]; then
   for i in {01..01}; do git am andy/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/vendor/octavi"
   echo "Skipping patches for vendor/octavi"
fi

## Extra patches ##

#device_phh_treble
cp -r $extra/device_phh_treble $SOURCE_DIR/device/phh/treble/extra && cd $SOURCE_DIR/device/phh/treble
#apply_patches device/phh/treble extra 01
if [ "$PWD" == "$SOURCE_DIR/device/phh/treble" ]; then
   for i in {01..01}; do git am extra/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/device/phh/treble"
   echo "Skipping patches for device/phh/treble"
fi

cp -r $extra/build_make $SOURCE_DIR/build/make/extra && cd $SOURCE_DIR/build/make
apply_patches build/make extra 01
if [ "$PWD" == "$SOURCE_DIR/build/make" ]; then
   for i in {01..01}; do git am extra/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/build/make"
   echo "Skipping patches for build/make"
fi

cp -r $extra/frameworks_base $SOURCE_DIR/frameworks/base/extra && cd $SOURCE_DIR/frameworks/base
apply_patches frameworks/base extra 02
if [ "$PWD" == "$SOURCE_DIR/frameworks/base" ]; then
   for i in {01..02}; do git am extra/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/frameworks/base"
   echo "Skipping patches for frameworks/base"
fi

cp -r $extra/vendor_octavi $SOURCE_DIR/vendor/octavi/extra && cd $SOURCE_DIR/vendor/octavi
apply_patches vendor/octavi extra 02
if [ "$PWD" == "$SOURCE_DIR/vendor/octavi" ]; then
   for i in {01..02}; do git am extra/00$i* ; done
else
   echo "Current Directory: $PWD ≠ $SOURCE_DIR/vendor/octavi"
   echo "Skipping patches for vendor/octavi"
fi

