#!/sbin/sh
#Checks for sanim.zip and runs the binary accordingly

if [ -f /system/media/sanim.zip ]; then
	/system/bin/bootanimation
else
	/system/bin/samsungani
fi
