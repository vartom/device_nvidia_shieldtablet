#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_AAPT_CONFIG += xlarge large
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

PRODUCT_LOCALES += mdpi hdpi xhdpi

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)


LOCAL_KERNEL := device/nvidia/shieldtablet-kernel/kernel

PRODUCT_COPY_FILES := \
    $(LOCAL_KERNEL):kernel


# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    device/nvidia/shieldtablet/overlay

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.tn8 \
    init.cal.rc \
    init.comms.rc \
    init.none.rc \
    init.hdcp.rc \
    init.ray_touch.rc \
    init.ray_st8.rc \
    init.t124.rc \
    init.tegra.rc \
    init.tlk.rc \
    init.tn8.rc \
    init.tn8.usb.rc \
    init.nv_dev_board.usb.rc \
    init.tn8_common.rc \
    init.tn8_emmc.rc \
    init.ussrd.rc \
    power.tn8.rc \
    ueventd.tn8.rc


# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

# NVIDIA
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/com.nvidia.blakemanager.xml:system/etc/permissions/com.nvidia.blakemanager.xml \
    $(LOCAL_PATH)/permissions/com.nvidia.feature.xml:system/etc/permissions/com.nvidia.feature.xml \
    $(LOCAL_PATH)/permissions/com.nvidia.nvsi.xml:system/etc/permissions/com.nvidia.nvsi.xml \
    $(LOCAL_PATH)/permissions/com.nvidia.miracast.xml:system/etc/permissions/com.nvidia.miracast.xml

# idc
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/idc/touch.idc:system/usr/idc/touch.idc \
  $(LOCAL_PATH)/idc/sensor00fn11.idc:system/usr/idc/sensor00fn11.idc \
  $(LOCAL_PATH)/idc/touch_fusion.idc:system/usr/idc/touch_fusion.idc


# keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/tegra-kbc.kl:system/usr/keylayout/tegra-kbc.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/Vendor_0955_Product_7210.kl:system/usr/keylayout/Vendor_0955_Product_7210.kl \
    $(LOCAL_PATH)/keylayout/Vendor_0955_Product_7212.kl:system/usr/keylayout/Vendor_0955_Product_7212.kl

# Media config
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audioConfig_qvoice_icera_pc400.xml:system/etc/audioConfig_qvoice_icera_pc400.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/nvaudio_conf.xml:system/etc/nvaudio_conf.xml \
    $(LOCAL_PATH)/audio/nvaudio_fx.xml:system/etc/nvaudio_fx.xml

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudiospdif \
    libtinyalsa \
    libtinycompress \
    tinycap \
    tinymix \
    tinyplay \
    cplay \
    xaplay

PRODUCT_PACKAGES += \
    libaudiopolicymanager \
    drmserver \
    Gallery2 \
    libdrmframework_jni \

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/gpsconfig.xml:system/etc/gps/gpsconfig.xml \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/camera/nvcamera.conf:system/etc/nvcamera.conf 


# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

# Copy wpa/p2p ovelay config files
PRODUCT_COPY_FILES += \
    hardware/broadcom/wlan/bcmdhd/config/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    hardware/broadcom/wlan/bcmdhd/config/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wifi_scan_config.conf:system/etc/wifi/wifi_scan_config.conf 

# Wi-Fi country code system properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.factory.wifi.lbs=true

## SKU specific overrides
PRODUCT_PROPERTY_OVERRIDES += ro.radio.noril=true

# Light
PRODUCT_PACKAGES += \
    lights.tegra

# Power
 PRODUCT_PACKAGES += power.tegra

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

PRODUCT_CHARACTERISTICS := tablet

#enable Widevine drm
PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true
PRODUCT_PACKAGES += \
    com.google.widevine.software.drm.xml \
    com.google.widevine.software.drm \
    libdrmwvmplugin \
    libwvm \
    libWVStreamControlAPI_L1 \
    libwvdrm_L1

#needed by google GMS lib:libpatts_engine_jni_api.so
PRODUCT_PACKAGES += \
    libwebrtc_audio_coding

# we have enough storage space to hold precise GC data
# PRODUCT_TAGS += dalvik.gc.type-precise

# USB
PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=1 

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

## Sensor package definition
# PRODUCT_* variables are defined in 'product.mk' file:
PRODUCT_PROPERTY_OVERRIDES	+= ro.hardware.sensors=default.mpl520.nvs
#PRODUCT_PACKAGES		+= sensors.default.mpl520.nvs

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/motionq/freeMotionD.config.ardbeg-locked:system/etc/freeMotionD.config

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    setup_fs

# Radio Interface
# PRODUCT_PACKAGES += rild

# Comm Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Wireless Controller
#$(call inherit-product-if-exists, vendor/nvidia/shield_common/blake-blobs.mk)

# Console Mode
#$(call inherit-product-if-exists, vendor/nvidia/shield_common/consolemode-blobs.mk)

$(call inherit-product, vendor/nvidia/shieldtablet/shieldtablet-vendor.mk)

# Paragon filesystem solution binaries
PRODUCT_PACKAGES += \
    mountufsd \
    chkufsd \
    mkexfat \
    chkexfat \
    mkhfs \
    chkhfs \
    mkntfs \
    chkntfs
