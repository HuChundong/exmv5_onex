#!/system/bin/sh
#
# PowerShift Script for use with The V6 SuperCharger created by -=zeppelinrox=-
#
# V6U9RC12B34ST
#
# When using scripting tricks, ideas, or code snippets from here, GIVE PROPER CREDIT.
# There are many things may look simple, but actually took a lot of time, trial, and error to get perfected.
# So DO NOT remove credits, put your name on top, and pretend it's your creation.
# That's called kanging and makes you a dumbass.
#
# This script can be used freely and can even be modified for PERSONAL USE ONLY.
# It can be freely incorporated into ROMs - provided that proper credit is given WITH a link back to the XDA SuperCharger thread.
# If you want to share it or make a thread about it, just provide a link to the main thread.
#      - This ensures that users will always be getting the latest versions.
# Prohibited: Any modification (excluding personal use), repackaging, redistribution, or mirrors of my work are NOT PERMITTED.
# Thanks, zeppelinrox.
#
# SuperMinFree Calculator & MFK Calculator (for min_free_kbytes) created by zeppelinrox also ;^]
#
# See http://goo.gl/krtf9 - Linux Memory Consumption - Nice article!
# See http://goo.gl/hFdNO - Memory and SuperCharging Overview, or... "Why 'Free RAM' Is NOT Wasted RAM!"
# See http://goo.gl/4w0ba - MFK Calculator Info - explanation for vm.min_free_kbytes.
#
clear
line=================================================
cd "${0%/*}" 2>/dev/null
mount -o remount,rw /data 2>/dev/null
busybox mount -o remount,rw /data 2>/dev/null
MFK=39731
echo ""
echo $line
echo "    -=PowerShift=- script by -=zeppelinrox=-"
echo $line
echo ""
sleep 1
id=$(id); id=${id#*=}; id=${id%%[\( ]*}
if [ "$id" != "0" ] && [ "$id" != "root" ]; then
	sleep 2
	echo " You are NOT running this script as root..."
	echo ""
	sleep 3
	echo $line
	echo "                      ...No SuperUser For You!!"
	echo $line
	echo ""
	sleep 3
	echo "     ...Please Run as Root and try again..."
	echo ""
	echo $line
	echo ""
	sleep 3
	exit 69
fi
mount -o remount,rw /system 2>/dev/null
busybox mount -o remount,rw /system 2>/dev/null
busybox mount -o remount,rw $(busybox mount | awk '$3=="/system"{print $1,$3}') 2>/dev/null
echo " PowerShifting to a different gear!"
echo ""
sleep 1
echo $line
awk -F , '{OFMT="%.0f"; print "   Current Minfrees = "$1/256","$2/256","$3/256","$4/256","$5/256","$6/256" MB"}' /sys/module/lowmemorykiller/parameters/minfree
echo $line
echo ""
sleep 1
echo " Setting LowMemoryKiller to..."
echo ""
sleep 1
echo $line
echo "         ...8, 16, 194, 213, 233, 252 MB"
echo $line
echo ""
sleep 1
echo 2048,4096,49664,54528,59648,64512 > /sys/module/lowmemorykiller/parameters/minfree
echo 2048,4096,49664,54528,59648,64512 > /data/V6_SuperCharger/SuperChargerMinfree
echo " OOM Minfree levels are now set to..."
echo ""
sleep 1
echo "         ...`cat /sys/module/lowmemorykiller/parameters/minfree`"
echo ""
sleep 1
echo "  They are also your new SuperCharger values!"
echo ""
echo $line
echo ""
sleep 1
echo " Updating Kernel & Virtual Memory Tweaks..."
echo ""
sleep 1
echo -n "         ...";busybox sysctl -w vm.min_free_kbytes=$MFK
echo ""
sleep 1
echo $line
echo " Updating MFK in *99SuperCharger Boot Scripts..."
echo $line
echo ""
sleep 1
sed -i 's/MFK=.*/MFK=39731;/' /system/etc/init.d/*SuperCharger* 2>/dev/null
sed -i 's/MFK=.*/MFK=39731;/' /data/99SuperCharger.sh 2>/dev/null
sed -i 's/MFK=.*/MFK=39731;/' /system/xbin/99super 2>/dev/null
mount -o remount,ro /system 2>/dev/null
busybox mount -o remount,ro /system 2>/dev/null
busybox mount -o remount,ro $(busybox mount | awk '$3=="/system"{print $1,$3}') 2>/dev/null
echo "          ==========================="
echo "           ) PowerShift Completed! ("
echo "          ==========================="
echo ""
sleep 1
exit 0
