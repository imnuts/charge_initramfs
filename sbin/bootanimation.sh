#!/system/bin/sh
#Boot animation handler by tonsit
#Catch bootanimation.zip and rename to sanim.zip
if [ -f /system/media/bootanimation.zip]; then
	mount -o rw,remount -t rfs /dev/block/stl10 /system
	mv /system/media/bootanimation.zip /system/media/sanim.zip
	mount -o ro,remount -t rfs /dev/block/stl10 /system
fi
#if sanim.zip exists, launch android bootanimation binary, otherwise launch default samsung animation binary
if [ -f /system/media/sanim.zip ]; then
	/system/bin/bootanimation
else
	/system/bin/samsungani
fi
