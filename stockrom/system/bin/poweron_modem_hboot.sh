#!/system/bin/sh
# 2/15 Ver: 1.0.2 Force wake_lock in MFG kernel mode to prevent HSIC entering suspend
# 2/21 Ver: 1.0.3 Force CPU performance in MFG kernel
/system/bin/log -p e -t MODEM "Poweron_modem_hboot.sh version: 1.0.3"
/system/bin/log -p e -t MODEM "Change cpu to performance"
echo "performance" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

backup_dir=/system/etc/
work_dir=/data/modem_work/
Injected_dir=/data/modem_work/
mkdir ${work_dir} -p 2> /dev/null
echo main > /sys/power/wake_lock

# Check if /rca mounted
if ls /rca 2>&1 /dev/null ; then
/system/bin/log -p e -t MODEM "/rca folder mounted."
NVM_cal_dir=/rca
else
/system/bin/log -p e -t MODEM "/rca folder doesn't mounted. Use /data/modem_nvdata instead."
NVM_cal_dir=/data/modem_nvdata
fi

if ls ${NVM_cal_dir}/calib.nvm 2>&1 /dev/null  ; then
/system/bin/log -p e -t MODEM "cp calib.nvm to work folder"
cat ${NVM_cal_dir}/calib.nvm > ${work_dir}/calib.nvm
else
/system/bin/log -p e -t MODEM "no calib.nvm in RCA partition"
fi

# Check if /rfs/sec.bin can be generated
sec_dir=/rfs/
/system/bin/make_sec_bin ${sec_dir}/sec.bin
if ls ${sec_dir}/sec.bin 2>&1 /dev/null ; then
/system/bin/log -p e -t MODEM "Gen. sec.bin SUCC in ${sec_dir}"
else
sec_dir=/data/modem_sec/
mkdir ${sec_dir} -p 2> /dev/null
/system/bin/make_sec_bin ${sec_dir}/sec.bin
/system/bin/log -p e -t MODEM "rfs seems not mounted, Gen. sec.bin SUCC in ${sec_dir}"
fi
sync

if ls ${sec_dir}/sec.bin 2>&1 /dev/null ; then
/system/bin/log -p e -t MODEM "Double confirm sec.bin is in ${sec_dir} and SUCC."
else
/system/bin/log -p e -t MODEM "/data partition is full and sec.bin is in ${sec_dir}"
fi

/system/bin/log -p e -t MODEM "NVM Injecting file: new InjectionTool will generate empty nvm file if it doesn't exist"
/system/bin/InjectionTool -i ${backup_dir}/QUO_6260.fls.clean -o ${Injected_dir}/QUO_6260.fls -n ${work_dir} -s ${sec_dir}
/system/bin/log -p i -t MODEM "Delete sec.bin in ${sec_dir}"
rm ${sec_dir}/sec.bin
sync

#
# insmod cdc-acm, run IMCdownload
#
/system/bin/log -p e -t MODEM "insmod /system/lib/modules/cdc-acm.ko"
insmod /system/lib/modules/cdc-acm.ko

/system/bin/log -p e -t MODEM "IMCdownload -V0x1130 -X0 -x800 -y30 -z50"
cd ${work_dir}
IMCdownload -V0x1130 -X0 -x800 -y30 -z50

#
# loop until /dev/ttyACM0 is available (retry 10 seconds)
#
/system/bin/log -p e -t MODEM "try to find /dev/ttyACM0..."
count=0
for count in 1 2 3 4 5 6 7 8 9 10
do
	if ls /dev/ttyACM0 2>&1 > /dev/null ; then
		/system/bin/log -p e -t MODEM "ttyACM0 found!!"
		break
	else
		sleep 1
		/system/bin/log -p e -t MODEM "Waiting for /dev/ttyACM0, before start gsmmux"
	fi
done
# check if ttyACM0 is not found in 10 seconds
case $count in
	"10")
		/system/bin/log -p e -t MODEM "eq 10, ttyACM0 not found!!!"
		exit 1
		;;
	*)
		/system/bin/log -p e -t MODEM "ttyACM0 found, continue"
		;;
esac

# start gsm mux
/system/bin/log -p e -t MODEM "/dev/ttyACM0 found, start gsm0710mux"
start gsm0710mux
/system/bin/log -p e -t MODEM "gsm0710mux finished..."

#start nvm updating
index=0
for index in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
do
	atdev_name="/dev/pts/0"
	if ls ${atdev_name} 2>&1 > /dev/null ; then
#		echo -e ate1\\r > $atdev_name
		/system/bin/log -p e -t MODEM "Start /system/bin/nvm_client time=$index, atdev_name=${atdev_name}"
		/system/bin/log -p i -t MODEM "nvm_client --start"
		/system/bin/nvm_client --start --atdev $atdev_name --bindev $atdev_name --dir ${work_dir} --cal ${NVM_cal_dir}
		/system/bin/log -p i -t MODEM "Do modem initial update, wait..."
		break
	else
		sleep 1

		# check the nvm pts
		case $index in
		    "25")
				/system/bin/log -p e -t MODEM "2) Cannot find ${atdev_name}";
				/system/bin/log -p e -t MODEM "2) Invoke /system/bin/nvm_client";
				# just try it again
#				echo -e ate1\\r > $atdev_name
				/system/bin/log -p i -t MODEM "2) nvm_client --start"
				/system/bin/nvm_client --start --atdev $atdev_name --bindev $atdev_name --dir ${work_dir} --cal ${NVM_cal_dir}
				/system/bin/log -p i -t MODEM "2) Do modem initial update, wait..."
		        ;;
		    *)
				/system/bin/log -p i -t MODEM "retry=$index nvm pts not found, continue"
		        ;;
		esac
	fi
done

/system/bin/log -p i -t MODEM "Starting record USB AT command channel in klog..."
echo 1 > /sys/devices/platform/baseband_xmm_power/host_dbg

index=0
for index in 1 2 3 4 5 6 7 8 9 10
do
	if ls ${NVM_cal_dir}/calib.nvm 2>&1 > /dev/null ; then
		/system/bin/log -p e -t MODEM "starting atpipe_plain...";
		start atpipe_plain
		break;
	else
		sleep 1
		case $index in
		    "10")
				/system/bin/log -p e -t MODEM "No calib.nvm = no atpipe_plain...";
				#/system/bin/log -p e -t MODEM "still trying atpipe_plain...";
				# start atpipe_plain
				;;
		    *)
				/system/bin/log -p e -t MODEM "calib.nvm not found, continue";
				;;
		esac
	fi
done
