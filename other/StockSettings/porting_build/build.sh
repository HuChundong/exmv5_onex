#!/bin/bash

OUT_SYS_PATH=~/data/miui-jb/out/target/product/maguro
STOCKROM_PATH=~/data/patchrom-jb-new/onex/stockrom
TMP_FILE=tmp.smali

cp $OUT_SYS_PATH/system/app/StockSettings.apk .
cp $STOCKROM_PATH/system/app/Settings.apk HtcSettings.apk
apktool d -f HtcSettings.apk

for f in `find HtcSettings -name "*.smali"`
do
    echo "replace file:$f"
    sed "s/Lcom\/android\/settings/Lcom\/android\/htcsettings/g" $f > $TMP_FILE
    cp $TMP_FILE $f
    rm $TMP_FILE

    sed "s/Lcom\/google\/common/Lcom\/google\/htccommon/g" $f > $TMP_FILE
    cp $TMP_FILE $f
    rm $TMP_FILE

    sed "s/com\.android\.settings/com\.android\.htcsettings/g" $f > $TMP_FILE
    cp $TMP_FILE $f
    rm $TMP_FILE
done

for f in `find HtcSettings -name "*.xml"`
do
    echo "replace file:$f"
    sed "s/com\.android\.settings/com\.android\.htcsettings/g" $f > $TMP_FILE
    cp $TMP_FILE $f
    rm $TMP_FILE

    sed "s/settings:/htcsettings:/g" $f > $TMP_FILE
    cp $TMP_FILE $f
    rm $TMP_FILE

    sed "s/xmlns:settings/xmlns:htcsettings/g" $f > $TMP_FILE
    cp $TMP_FILE $f
    rm $TMP_FILE
done

mv HtcSettings/smali/com/android/settings HtcSettings/smali/com/android/htcsettings
mv HtcSettings/smali/com/google/common HtcSettings/smali/com/google/htccommon

#sed '/android\.intent\.category\.LAUNCHER/'d HtcSettings/AndroidManifest.xml > $TMP_FILE
#cp $TMP_FILE HtcSettings/AndroidManifest.xml
#rm $TMP_FILE
cp -f AndroidManifest.xml HtcSettings/
cp -f PSService.smali HtcSettings/smali/com/android/htcsettings/

apktool b HtcSettings HtcSettings.apk

adb shell mount system
sign.sh StockSettings.apk /system/app/StockSettings.apk
sign.sh HtcSettings.apk /system/app/HtcSettings.apk
adb reboot
