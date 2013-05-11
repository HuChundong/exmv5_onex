#
# Makefile for onex
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is update.zip if not specified
# local-out-zip-file :=

# All apps from original ZIP, but has smali files chanded
local-modified-apps := Camera HTCAlbum

local-modified-jars := HTCExtension

local-miui-modified-apps := Phone Mms MiuiHome Settings MiuiSystemUI Music MiuiGallery
# All apks from MIUI
local-miui-removed-apps  := LatinIME MediaProvider AirkanPhoneService Stk

# All apps need to be reserved from original ZIP file
local-phone-apps :=BackupRestoreConfirmation \
	CertInstaller CustomizationSettingsProvider Camera DefaultContainerService DFPI DrmProvider \
	FilePicker FaceLock FM_Radio FMRadioService HtcBeatsNotify \
	HTMLViewer LMW MarketUpdater \
	Nfc OneTimeInitializer SharedStorageBackup \
	WifiRouter MediaProvider HTCAlbum \
	HtcSoundEnhancerSetting HtcDMC DLNAMiddleLayer HtcPhotoEnhancer

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

out/framework2.jar : out/framework.jar

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	@echo Update build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop

	@echo CID default xml
	cp other/default.xml $(ZIP_DIR)/system/customize/CID/default.xml

	@echo update bootanimation
	rm $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation
	rm $(ZIP_DIR)/system/media/bootanimation.zip
	cp other/bootanimation.zip $(ZIP_DIR)/system/media/bootanimation.zip

	@echo add system app
	cp other/system_app/* $(ZIP_DIR)/system/app/

	@echo add system config
	cp other/system_etc/* $(ZIP_DIR)/system/etc/
	cp other/system_keylayout/* $(ZIP_DIR)/system/usr/keylayout/
	cp other/system_lib/* $(ZIP_DIR)/system/lib/
	cp other/system_xbin/* $(ZIP_DIR)/system/xbin/

	@echo delete redundance files
	rm -f $(ZIP_DIR)/system/customize/resource/*.png
	rm -rf $(ZIP_DIR)/system/media/weather
	rm -rf $(ZIP_DIR)/system/media/video
	rm -f $(ZIP_DIR)/system/bin/su

%.phone : out/%.jar
	@echo push -- to --- phone
	adb remount
	adb push $< /system/framework
	adb shell chmod 644 /system/framework/$*.jar
	#adb shell stop
	#adb shell start
	adb reboot

%.sign-plat : out/%
	java -jar $(TOOL_DIR)/signapk.jar $(PORT_ROOT)/build/security/platform.x509.pem $(PORT_ROOT)/build/security/platform.pk8  $< $<.signed
	@echo push -- to --- phone
	adb remount
	adb push $<.signed /system/app/$*
	adb shell chmod 644 /system/app/$*

%.sign-test : out/%
	java -jar $(TOOL_DIR)/signapk.jar $(PORT_ROOT)/build/security/testkey.x509.pem $(PORT_ROOT)/build/security/testkey.pk8  $< $<.signed
	@echo push -- to --- phone
	adb remount
	adb push $<.signed /system/app/$*
	adb shell chmod 644 /system/app/$*

local-test:
#	rm -f $(local-out-zip-file)
#	cp .build/$(local-out-zip-file) .
	@echo push $(OUT_ZIP) to phone sdcard
	adb shell mount sdcard
	adb shell rm -f /sdcard/update.zip
	adb push out/update.zip /sdcard/update.zip
