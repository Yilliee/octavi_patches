# manifest.xml
git clone https://github.com/phhusson/vendor_hardware_overlay vendor/hardware_overlay -b pie
git clone https://github.com/phhusson/device_phh_treble device/phh/treble -b android-12.0
git clone https://github.com/phhusson/vendor_vndk-tests vendor/vndk-tests -b master
git clone https://github.com/phhusson/gapps-go vendor/gapps-go -b master
git clone https://github.com/phhusson/vendor_interfaces -b android-11.0 vendor/interfaces

git clone https://github.com/phhusson/vendor_lptools vendor/lptools -b master
git clone https://github.com/phhusson/vendor_magisk vendor/magisk -b android-10.0
git clone https://github.com/relan/exfat external/exfat -b master

# gapps.xml
git clone https://gitlab.com/davi.sh/gms-android-12 vendor/partner_gms

# foss.xml
git clone https://gitlab.com/fdroid/privileged-extension.git packages/apps/FDroidPrivilegedExtension -b 0.2.7
git clone https://github.com/phhusson/vendor_foss vendor/foss -b master

