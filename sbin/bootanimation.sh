#!/sbin/sh
#needs some work, should be in init.rc

if [ -f /system/media/sanim.zip ]; then
	/system/bin/bootanimation
else
	/system/bin/samsungani
fi;
