#!/bin/bash
#
# $1: dir for miui overlay framework-res
# $2: dir for target framework-res
#

if [ `basename $1` = "drawable-hdpi" -o `basename $1` = "drawable-xhdpi" ];then
	restype=`basename $1`
	for file in `find "$1"`
	do
		newfile=`basename $file`
		newfile1=`echo $newfile | sed -e "s/^/zzzhtc_/"`
		targetfile="$2/$restype/$newfile1"
        	if [ -f $targetfile ]
        	then
        	        mkdir -p `dirname $targetfile`
        	        echo "add miui res: $file"
			echo "           >> $targetfile"
        	        cp $file $targetfile
	       	fi

		newfile1=`echo $newfile | sed -e "s/^/zzz_/"`
		targetfile="$2/$restype/$newfile1"
        	if [ -f $targetfile ]
        	then
        	        mkdir -p `dirname $targetfile`
    		        echo "add miui res: $file"
			echo "           >> $targetfile"
        	        cp $file $targetfile
	       	fi

		newfile1=`echo $newfile | sed -e "s/^/zzzz_/"`
		targetfile="$2/$restype/$newfile1"
        	if [ -f $targetfile ]
        	then
        	        mkdir -p `dirname $targetfile`
    		        echo "add miui res: $file"
			echo "           >> $targetfile"
        	        cp $file $targetfile
	       	fi

	done
	rm -f $2/drawable-xhdpi/default_wallpaper.jpg
	rm -f $2/drawable-hdpi/default_wallpaper.jpg
fi

