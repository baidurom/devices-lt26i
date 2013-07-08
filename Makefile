# Makefile Reference
# Please use this file as the project Makefile reference

##############################################################################
# Default DALVIK_VM_BUILD setting is 27
# android 4.0: 27
# android 4.1: 28
# htc t328t is special one
#-----------------------------------------------------------------------------
DALVIK_VM_BUILD := 27

##############################################################################
# customize weather use prebuilt image or pack from BOOT/RECOVERY directory
# Support Values:
# vendor_modify_images := boot recovery
# boot/recovery, pack boot.img/recovery.img from vendor/BOOT / vendor/RECOVERY
# NULL, check boot.img/recovery.img in project root directory, if it exists,
# use a prebuilt boot.img/recovery.img, if not, nothing to do
#-----------------------------------------------------------------------------
vendor_modify_images := boot.img

##############################################################################
# Directorys which you want to remove in vendor directory
#-----------------------------------------------------------------------------
vendor_remove_dirs := app vendor/operator/app

##############################################################################
# Files which you want to remove in vendor directory
#-----------------------------------------------------------------------------
# vendor_remove_files := bin/zchgd

##############################################################################
# Vendor apks you want to use
#-----------------------------------------------------------------------------
 vendor_saved_apps := Bluetooth MediaProvider

##############################################################################
# Apks build from current project root directory
# if the apk is decode from baidu:
# 1, check if the apk in BAIDU_UPDATE_RES_APPS (you can see it in build/configs/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's apk to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_apps := FMRadio
# you need decode FMRadio.apk to the project directory (use apktool d FMRadio.apk) first
# then you can make it by:   make FMRadio
#-----------------------------------------------------------------------------
# vendor_modify_apps := FMRadio

##############################################################################
# Jars build from current project root directory
# if the jar is decode from baidu:
# 1, check if the jar in BAIDU_UPDATE_RES_APPS (you can see it in build/configs/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's jar to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_jars := android.policy
# you need decode android.policy.jar to the project directory (use apktool d android.policy.jar) first
# then you can make it by:   make android.policy
#-----------------------------------------------------------------------------
vendor_modify_jars := framework services

##############################################################################
# baidu_remove_apps: those baidu apk you want remove 
#-----------------------------------------------------------------------------
baidu_remove_apps := BaiduUserFeedback

##############################################################################
# baidu_modify_apps: which base the baidu's apk
# just override the res, append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_apps := Settings

##############################################################################
# baidu_modify_jars: which base the baidu's jar
# just append *.smali.part
#-----------------------------------------------------------------------------
# baidu_modify_jars := android.policy

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------

# hide the soft mainkeys
override_property += \
    qemu.hw.mainkeys=1

# Change default region and language
override_property += \
    ro.product.locale.language=zh \
    ro.product.locale.region=CN

# Add baidu modified property
override_property += \
    ro.baidu.build.hardware=lt26i \
    ro.baidu.build.hardware.version=1.0 \
    ro.baidu.build.software=yi_3.0 \
    ro.baidu.build.version.release=2.1 \
    ro.product.manufacturer=Baidu

override_property += \
    ro.config.notification_sound=Ding.mp3 \
    ro.config.ringtone=Echo.mp3 \
    ro.config.alarm_alert=alarm.mp3 \
    ro.config.rootperm.enable=1

override_property += \
    persist.sys.timezone=Asia/Shanghai \
    persist.sys.usb.config=mass_storage,adb

# property to show/hide feature of defaultWrite Settings
override_property += \
    ro.baidu.default_write.settable=true

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------
remove_property += \
    dev.defaultwallpaper

##############################################################################
# Special case for Sony LT26i, vendor miss dbus.conf, use BAIDU_PREBUILT to keep it.
#-----------------------------------------------------------------------------
BAIDU_PREBUILT += \
    etc/dbus.conf

include $(PORT_BUILD)/main.mk
