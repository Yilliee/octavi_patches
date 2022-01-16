#!/bin/bash

export SOURCE_DIR=$PWD
export PHH=$SOURCE_DIR/patches/PHH
export Andy=$SOURCE_DIR/patches/Andy
export extra=$SOURCE_DIR/patches/extra

apply_patches() {
  if [ "$PWD" == "$SOURCE_DIR/$1" ]; then
     git am $2/$3*
  else
     echo "Current Directory: $PWD ≠ $SOURCE_DIR/$1"
     echo "Skipping patches for $1"
  fi
}

#platform_bionic
cp -r $PHH/platform_bionic $SOURCE_DIR/bionic/phh && cd $SOURCE_DIR/bionic
for i in {0001..0001}
do apply_patches bionic phh $i
done

#platform_bootable_recovery
cp -r $PHH/platform_bootable_recovery $SOURCE_DIR/bootable/recovery/phh && cd $SOURCE_DIR/bootable/recovery
for i in {0001..0001}
do apply_patches bootable/recovery phh $i
done

#platform_external_selinux
cp -r $PHH/platform_external_selinux $SOURCE_DIR/external/selinux/phh && cd $SOURCE_DIR/external/selinux
for i in {0001..0007}
do apply_patches external/selinux phh $i
done

#platform_frameworks_av
cp -r $PHH/platform_frameworks_av $SOURCE_DIR/frameworks/av/phh && cd $SOURCE_DIR/frameworks/av
for i in {0001..0018}
do apply_patches frameworks/av phh $i
done

#platform_frameworks_base
cp -r $PHH/platform_frameworks_base $SOURCE_DIR/frameworks/base/phh && cd $SOURCE_DIR/frameworks/base
for i in {0001..0024}
do apply_patches frameworks/base phh $i
done

#platform_frameworks_native
cp -r $PHH/platform_frameworks_native $SOURCE_DIR/frameworks/native/phh && cd $SOURCE_DIR/frameworks/native
for i in {0001..0013}
do apply_patches frameworks/native phh $i
done

#platform_frameworks_opt_net_ims
cp -r $PHH/platform_frameworks_opt_net_ims $SOURCE_DIR/frameworks/opt/net/ims/phh && cd $SOURCE_DIR/frameworks/opt/net/ims
for i in {0001..0001}
do apply_patches frameworks/opt/net/ims phh $i
done

#platform_frameworks_opt_telephony
cp -r $PHH/platform_frameworks_opt_telephony $SOURCE_DIR/frameworks/opt/telephony/phh && cd $SOURCE_DIR/frameworks/opt/telephony
for i in {0001..0004}
do apply_patches frameworks/opt/telephony phh $i
done

#platform_hardware_interfaces
cp -r $PHH/platform_hardware_interfaces $SOURCE_DIR/hardware/interfaces/phh && cd $SOURCE_DIR/hardware/interfaces
for i in {0001..0001}
do apply_patches hardware/interfaces phh $i
done

#platform_packages_apps_Bluetooth
cp -r $PHH/platform_packages_apps_Bluetooth $SOURCE_DIR/packages/apps/Bluetooth/phh && cd $SOURCE_DIR/packages/apps/Bluetooth
for i in {0001..0001}
do apply_patches packages/apps/Bluetooth phh $i
done

#platform_packages_apps_Settings
cp -r $PHH/platform_packages_apps_Settings $SOURCE_DIR/packages/apps/Settings/phh && cd $SOURCE_DIR/packages/apps/Settings
for i in {0001..0001}
do apply_patches packages/apps/Settings phh $i
done

#platform_packages_modules_Wifi
cp -r $PHH/platform_packages_modules_Wifi $SOURCE_DIR/packages/modules/Wifi/phh && cd $SOURCE_DIR/packages/modules/Wifi
for i in {0001..0001}
do apply_patches packages/modules/Wifi phh $i
done

#platform_system_bpf
cp -r $PHH/platform_system_bpf $SOURCE_DIR/system/bpf/phh && cd $SOURCE_DIR/system/bpf
for i in {0001..0001}
do apply_patches system/bpf phh $i
done

#platform_system_bt
cp -r $PHH/platform_system_bt $SOURCE_DIR/system/bt/phh && cd $SOURCE_DIR/system/bt
for i in {0001..0005}
do apply_patches system/bt phh $i
done

#platform_system_core
cp -r $PHH/platform_system_core $SOURCE_DIR/system/core/phh && cd $SOURCE_DIR/system/core
for i in {0001..0005}
do apply_patches system/core phh $i
done

#platform_system_extras
cp -r $PHH/platform_system_extras $SOURCE_DIR/system/extras/phh && cd $SOURCE_DIR/system/extras
for i in {0001..0001}
do apply_patches system/extras phh $i
done

#platform_system_linkerconfig
cp -r $PHH/platform_system_linkerconfig $SOURCE_DIR/system/linkerconfig/phh && cd $SOURCE_DIR/system/linkerconfig
for i in {0001..0001}
do apply_patches system/linkerconfig phh $i
done

#platform_system_netd
cp -r $PHH/platform_system_netd $SOURCE_DIR/system/netd/phh && cd $SOURCE_DIR/system/netd
for i in {0001..0003}
do apply_patches system/netd phh $i
done

#platform_system_nfc
cp -r $PHH/platform_system_nfc $SOURCE_DIR/system/nfc/phh && cd $SOURCE_DIR/system/nfc
for i in {0001..0001}
do apply_patches system/nfc phh $i
done

#platform_system_vold
cp -r $PHH/platform_system_vold $SOURCE_DIR/system/vold/phh && cd $SOURCE_DIR/system/vold
for i in {0001..0007}
do apply_patches system/vold phh $i
done


## AndyCGYans patches ##


#build_make
cp -r $Andy/build_make $SOURCE_DIR/build/make/andy && cd $SOURCE_DIR/build/make
for i in {0001..0002}
do apply_patches build/make andy $i
done

#device_phh_treble
cp -r $Andy/device_phh_treble $SOURCE_DIR/device/phh/treble/andy && cd $SOURCE_DIR/device/phh/treble
for i in {0001..0002}
do apply_patches device/phh/treble andy $i
done

#frameworks_base
cp -r $Andy/frameworks_base $SOURCE_DIR/frameworks/base/andy && cd $SOURCE_DIR/frameworks/base
for i in {0001..0002}
do apply_patches frameworks/base andy $i
done

#frameworks_native
cp -r $Andy/frameworks_native $SOURCE_DIR/frameworks/native/andy && cd $SOURCE_DIR/frameworks/native
for i in {0001..0001}
do apply_patches frameworks/native andy $i
done

#system_core
cp -r $Andy/system_core $SOURCE_DIR/system/core/andy && cd $SOURCE_DIR/system/core
for i in {0001..0002}
do apply_patches system/core andy $i
done

#system_sepolicy
cp -r $Andy/system_sepolicy $SOURCE_DIR/system/sepolicy/andy && cd $SOURCE_DIR/system/sepolicy
for i in {0001..0001}
do apply_patches system/sepolicy andy $i
done

#vendor_octavi
cp -r $Andy/vendor_octavi $SOURCE_DIR/vendor/octavi/andy && cd $SOURCE_DIR/vendor/octavi
for i in {0001..0001}
do apply_patches vendor/octavi andy $i
done

## Extra patches ##

#build/make
cp -r $extra/build_make $SOURCE_DIR/build/make/extra && cd $SOURCE_DIR/build/make
for i in {0001..0001}
do apply_patches build/make extra $i
done

#bootable/recovery
cp -r $extra/bootable_recovery $SOURCE_DIR/bootable/recovery/extra && cd $SOURCE_DIR/bootable/recovery
for i in {0001..0001}
do apply_patches bootable/recovery extra $i
done

#device_phh_treble
cp -r $extra/device_phh_treble $SOURCE_DIR/device/phh/treble/extra && cd $SOURCE_DIR/device/phh/treble
for i in {0001..0002}
do apply_patches device/phh/treble extra $i
done

#packages/apps/Nfc
cp -r $extra/packages_apps_Nfc $SOURCE_DIR/packages/apps/Nfc/extra && cd $SOURCE_DIR/packages/apps/Nfc
for i in {0001..0001}
do apply_patches packages/apps/Nfc extra $i
done

#system_vold
cp -r $extra/system_vold $SOURCE_DIR/system/vold/extra && cd $SOURCE_DIR/system/vold
for i in {0001..0007}
do apply_patches system/vold extra $i
done

#vendor/octavi
cp -r $extra/vendor_octavi $SOURCE_DIR/vendor/octavi/extra && cd $SOURCE_DIR/vendor/octavi
for i in {0001..0002}
do apply_patches vendor/octavi extra $i
done
