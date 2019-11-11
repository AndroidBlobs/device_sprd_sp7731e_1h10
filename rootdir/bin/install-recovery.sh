#!/vendor/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/soc/soc.ap-ahb/20600000.sdio/by-name/recovery:36700160:9b35a6642a346301b567eae1ee702a08a70c4518; then
  applypatch /vendor/etc/recovery.img EMMC:/dev/block/platform/soc/soc.ap-ahb/20600000.sdio/by-name/recovery 9b35a6642a346301b567eae1ee702a08a70c4518 36700160 && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
