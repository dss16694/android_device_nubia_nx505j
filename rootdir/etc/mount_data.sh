#!/system/bin/sh
export PATH=/system/bin:/system/xbin:$PATH
DATA_FOLDER=data_mk
mkdir /data_root/media/${DATA_FOLDER}
chown system.system /data_root/media/${DATA_FOLDER}
chmod 0771 /data_root/media/${DATA_FOLDER}
mount -o bind  /data_root/media/${DATA_FOLDER} /data
