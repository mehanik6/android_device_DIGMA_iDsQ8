LOCAL_PATH := device/DIGMA/iDsQ8

$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \

$(call inherit-product, build/target/product/full.mk)

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/device.ko:root/device.ko \
    $(LOCAL_PATH)/rootdir/disp.ko:root/disp.ko \
    $(LOCAL_PATH)/rootdir/ft5202_ts.ko:root/ft5202_ts.ko \
    $(LOCAL_PATH)/rootdir/hdmi.ko:root/hdmi.ko \
    $(LOCAL_PATH)/rootdir/lcd.ko:root/lcd.ko \
    $(LOCAL_PATH)/rootdir/sw-keyboard.ko:root/sw-keyboard.ko \
    $(LOCAL_PATH)/rootdir/ft5x_ts.ko:root/ft5x_ts.ko \
    $(LOCAL_PATH)/rootdir/zet622x.ko:root/zet622x.ko \
    $(LOCAL_PATH)/rootdir/fstab.sun6i:root/fstab.sun6i \
    $(LOCAL_PATH)/rootdir/initlogo.rle:root/initlogo.rle \
    $(LOCAL_PATH)/rootdir/init.recovery.sun6i.rc:root/init.recovery.sun6i.rc \
    $(LOCAL_PATH)/rootdir/ueventd.sun6i.rc:root/ueventd.sun6i.rc


# System Configuration
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.android.dateformat=MM-dd-yyyy
	ro.config.ringtone=Ring_Synth_04.ogg
	ro.config.notification_sound=pixiedust.ogg
	ro.carrier=unknown
	ro.config.alarm_alert=Alarm_Classic.ogg
	ro.opengles.version=131072
	video.accelerate.hw=1
	persist.sys.strictmode.visual=0
	persist.sys.strictmode.disable=1
	persist.sys.use_dithering=0
	profiler.force_disable_err_rpt=1
	profiler.force_disable_ulog=1
	ro.kernel.android.checkjni=0
	ro.config.nocheckin=1
	debug.checkjni=0
	ro.reversion.aw_sdk_tag=digma_a44_sdk4.5
	ro.sys.cputype=QuadCore-A31Series
	ro.product.cpu.abi=armeabi-v7a
	ro.product.cpu.abi2=armeabi
	xmpp.auto-presence=true
	ro.display.switch=1
	keyguard.no_require_sim=true
	ro.com.android.dataroaming=true
	ro.audio.monitorOrientation=true
	drm.service.enabled=true
	ro.property.tabletUI=true
	ro.sys.bootfast=false
	ro.crypto.sw2hwkeymaster=true
	ro.build.selinux=true
	wifi.interface=wlan0
	wifi.supplicant_scan_interval=120
	ro.tether.denied=false
	persist.demo.hdmirotationlock=0
	ro.sf.showhdmisettings=6
	ro.product.firmware=2.00
	dalvik.vm.heapstartsize=8m
	dalvik.vm.heapgrowthlimit=48m
	dalvik.vm.heapsize=320m
	dalvik.vm.heaptargetutilization=0.75
	dalvik.vm.heapminfree=512k
	dalvik.vm.heapmaxfree=4m
	dalvik.vm.dexopt-flags=m=y,v=n,o=v,u=n
	persist.sys.timezone=Europe/Moscow
	persist.sys.language=ru
	persist.sys.country=RU
	ro.bt.hide=1
	persist.sys.modem=false
	ro.ril.ecclist=110,119,120,112,114,911
	persist.sys.usb.config=mass_storage
	ro.udisk.lable=DIGMA
	ro.font.scale=1.0
	ro.verticallock=3
	ro.sf.lcd_density=160
	persist.sys.dalvik.vm.lib=libdvm.so
	net.bt.name=Android
	dalvik.vm.stack-trace-file=/data/anr/traces.txt	




