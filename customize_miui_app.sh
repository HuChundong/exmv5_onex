#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

curdir=`pwd`

if [ $1 = "Phone" ];then
    for file in `find $1/smali -name "*.part"`
    do
	filepath=`dirname $file`
	filename=`basename $file .part`
        dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
    $XMLMERGYTOOL $1/res/values $2/res/values
    $XMLMERGYTOOL $1/res/values-zh-rCN $2/res/values-zh-rCN
    $XMLMERGYTOOL $1/res/values-zh-rTW $2/res/values-zh-rTW


    cp $1/*.part out/
    cd out
    $GIT_APPLY Phone.part
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Fatal error: Phone patch fail"
        exit 1
    done
fi

if [ $1 = "Mms" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ThemeManager" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Settings" ];then
    cp $1/*.part out/
    rm $2/res/values-zh-rCN/arrays.xml
    rm $2/res/values-zh-rTW/arrays.xml
    cp $1/res/values-zh-rCN/arrays.xml $2/res/values-zh-rCN
    cp $1/res/values-zh-rTW/arrays.xml $2/res/values-zh-rTW
    cd out
    $GIT_APPLY Settings.part
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Fatal error: Settings patch fail"
        exit 1
    done

    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Updater" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiGallery" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiHome" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
    $XMLMERGYTOOL $1/res/values-xhdpi $2/res/values-xhdpi
    $XMLMERGYTOOL $1/res/values-zh-rCN $2/res/values-zh-rCN
    $XMLMERGYTOOL $1/res/values-zh-rTW $2/res/values-zh-rTW
    cp $1/*.part out/
    cd out
    $GIT_APPLY MiuiHome.part
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Fatal error: MiuiHome patch fail"
        exit 1
    done
fi

if [ $1 = "Music" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi


if [ $1 = "MiuiSystemUI" ];then
    cp $1/*.part out/
    cd out
    $GIT_APPLY MiuiSystemUI.part
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Fatal error: SystemUI patch fail"
        exit 1
    done
fi

