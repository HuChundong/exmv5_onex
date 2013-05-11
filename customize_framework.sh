#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out

SEP_FRAME="framework2.jar.out"
TMP_FILE=$BUILD_OUT/tmp.smali

if [ $2 = "$BUILD_OUT/framework" ]
then
    # remove all files at out/framework those exist in framework2.jar.out
    for file2 in `find framework2.jar.out -name *.smali`; do
            file=${file2/framework2.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done

    rm -rf "$BUILD_OUT/framework/smali/com/google/android/mms"
    # move some smali to create a separate $SEP_FRAME.jar
    # including: smali/miui smali/android/widget
    #mkdir -p "$BUILD_OUT/$SEP_FRAME/smali"
    #rm -rf $BUILD_OUT/$SEP_FRAME/smali/miui
    #mv "$BUILD_OUT/framework/smali/miui" "$BUILD_OUT/$SEP_FRAME/smali"

    PATCH_FILE=$BUILD_OUT/framework/smali/com/android/internal/telephony/gsm/GsmDataConnectionTracker\$Injector.smali
    sed "s/invoke-static {}, Lcom\/android\/internal\/telephony\/gsm\/GsmDataConnectionTracker;->getPolicyDataEnabled()Z/invoke-virtual {p0}, Lcom\/android\/internal\/telephony\/gsm\/GsmDataConnectionTracker;->getPolicyDataEnabled()Z/g" $PATCH_FILE > $TMP_FILE
    cp $TMP_FILE $PATCH_FILE
    rm $TMP_FILE
fi

if [ $2 = "$BUILD_OUT/framework2" ]
then
    # remove all files at out/framework1 those exist in framework.jar.out
    for file2 in `find framework.jar.out -name *.smali`; do
            file=${file2/framework.jar.out/$BUILD_OUT\/framework2}
            echo "rm file: $file"
            rm -rf "$file"
    done

    rm -rf "$BUILD_OUT/framework2/smali/com/google/android/mms"
    cp -r "$BUILD_OUT/framework_miui/smali/com/google/android/mms" "$BUILD_OUT/framework2/smali/com/google/android"
    #mv "$BUILD_OUT/$SEP_FRAME/smali/miui/"  "$BUILD_OUT/framework2/smali/miui"
fi

if [ $2 = "$BUILD_OUT/android.policy" ];then
    curdir=`pwd`
    cd overlay/android.policy.jar.out
    for file in `find . -name *.smali`
    do
        dstfile="$curdir/out/android.policy/$file"
        cat $file >> $dstfile
    done
    cd -
fi
