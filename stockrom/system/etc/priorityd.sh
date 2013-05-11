#!/system/bin/sh
EventThread=`ps -t -p EventThread`
count="-11"
for pid in $EventThread
do
	if [ $count -eq 2 ]; then
		renice -r 1 -g $pid
		echo $pid
	fi
	count=$((count+1))
done
hwc_eventmon=`ps -t -p hwc_eventmon`
count="-11"
for pid in $hwc_eventmon
do
	if [ $count -eq 2 ]; then
		renice -r 1 -g $pid
		echo $pid
	fi
	count=$((count+1))
done
