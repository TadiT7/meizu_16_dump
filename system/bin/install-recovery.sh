#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:e87d0f270c59f2bb7331ad9f413c8a1c5ecce929; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:67108864:9e8177a5a80d568b584e6b6b1a4555b1a47e2f6d EMMC:/dev/block/bootdevice/by-name/recovery e87d0f270c59f2bb7331ad9f413c8a1c5ecce929 67108864 9e8177a5a80d568b584e6b6b1a4555b1a47e2f6d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
