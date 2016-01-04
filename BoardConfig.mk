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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/nvidia/shieldtablet/include

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15
TARGET_CPU_SMP := true

# Board
TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := t124
TARGET_TEGRA_FAMILY := t12x

TARGET_DEVICE := shieldtablet
REFERENCE_DEVICE := shieldtablet

# Raydium library version to be used
RAYDIUM_PRODUCT_BRANCH := dev-kernel-shieldtablet8

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
#USE_CUSTOM_AUDIO_POLICY := 1
BOARD_SUPPORT_NVOICE := true
BOARD_SUPPORT_NVAUDIOFX := true

# dtb
#TARGET_KERNEL_DT_NAME ?= tegra124-tn8
#BOARD_KERNEL_SEPARATED_DT := true


BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# use PREBUILT_KERNEL
TARGET_PREBUILT_KERNEL := device/nvidia/shieldtablet-kernel/kernel
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Kernel
#TARGET_KERNEL_SOURCE := kernel/nvidia/shieldtablet
#TARGET_KERNEL_CONFIG := tegra12_android_defconfig


TARGET_SYSTEM_PROP := device/nvidia/shieldtablet/system.prop

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 12799754240
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1342177280
BOARD_CACHEIMAGE_PARTITION_SIZE := 1073741824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 4096

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/nvidia/shieldtablet/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# GPS
BOARD_GPS_LIBRARIES := true

## Sensor package definition
# PRODUCT_* variables are defined in 'product.mk' file:
#PRODUCT_PROPERTY_OVERRIDES	+= ro.hardware.sensors=default.mpl520.nvs
#PRODUCT_PACKAGES		+= sensors.default.mpl520.nvs
# SENSORFUSION_VERSION is defined in BoardConfig.mk.  Don't forget to put it there!
SENSORFUSION_VERSION	:= default.mpl520.nvs
SENSORHAL_VERSION	:= nvs

# BOARD_WIDEVINE_OEMCRYPTO_LEVEL
# The security level of the content protection provided by the Widevine DRM plugin depends
# on the security capabilities of the underlying hardware platform.
# There are Level 1/2/3. To run HD contents, should be Widevine level 1 security.
BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 1

# Graphics
USE_OPENGL_RENDERER := true

# Double buffered display surfaces reduce memory usage, but will decrease performance.
# The default is to triple buffer the display surfaces.
BOARD_DISABLE_TRIPLE_BUFFERED_DISPLAY_SURFACES := true

# Use Nvidia optimized renderscript driver
OVERRIDE_RS_DRIVER := libnvRSDriver.so
BOARD_OVERRIDE_RS_CPU_VARIANT_32 := cortex-a15

BOARD_SUPPORT_PARAGON_FUSE_UFSD := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Per-application sizes for shader cache
MAX_EGL_CACHE_SIZE := 4194304
MAX_EGL_CACHE_ENTRY_SIZE := 262144

# Use CMU-style config with Nvcms
NVCMS_CMU_USE_CONFIG := false

# Recovery
TARGET_PREBUILT_RECOVERY_KERNEL := device/nvidia/shieldtablet-kernel/kernel
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_RECOVERY_DEVICE_DIRS += device/nvidia/shieldtablet
TARGET_RECOVERY_FSTAB := device/nvidia/shieldtablet/rootdir/etc/fstab.tn8

# Wifi related defines
BOARD_WIFI_CHIP                  := BCM43241
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_STA          := "/data/misc/wifi/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP           := "/data/misc/wifi/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/data/misc/wifi/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_ARG           := "iface_name=wlan0"
WIFI_DRIVER_MODULE_NAME          := "bcmdhd"

#BOARD_HARDWARE_CLASS := device/nvidia/shieldtablet/cmhw/

TARGET_USES_PYTHON_IN_VENDOR := true

# SELinux
BOARD_SEPOLICY_DIRS += device/nvidia/shieldtablet/sepolicy_m

# Vendor Init
#TARGET_UNIFIED_DEVICE := true
#TARGET_INIT_VENDOR_LIB := libinit_tn8
#TARGET_LIBINIT_DEFINES_FILE := device/nvidia/shieldtablet/init/init_tn8.c

#Shutdown on charge complete, from charging loop
BOARD_CHARGER_SHUTDOWN_ON_COMPLETE := true

#Display static images for charging
BOARD_CHARGER_STATIC_IMAGE := true

ifneq ($(wildcard bootable/recovery-twrp/Android.mk),)
	# TWRP
	RECOVERY_VARIANT := twrp
	TW_THEME := portrait_hdpi
	TW_THEME_LANDSCAPE := landscape_hdpi
	BOARD_HAS_FLIPPED_SCREEN := true
	RECOVERY_GRAPHICS_USE_LINELENGTH := true
	BOARD_HAS_NO_REAL_SDCARD := false
	RECOVERY_SDCARD_ON_DATA := true
	TW_BRIGHTNESS_PATH := /sys/class/backlight/pwm-backlight/brightness
	TW_MAX_BRIGHTNESS := 255
endif

# clear variables that ST8 doesn't need
TARGET_KERNEL_VCM_BUILD :=
TARGET_QUICKBOOT :=
TARGET_QUICKBOOT_PRODUCTION_CONFIG :=
QUICKBOOT_PRODUCTION_CONFIG :=
QUICKBOOT_DEFAULT_CONFIG :=
TARGET_BOOT_MEDIUM :=
QUICKBOOT_TARGET_OS :=
TARGET_QB_FLASH_TOOL :=

# Assert
TARGET_OTA_ASSERT_DEVICE := shieldtablet,wx_na_do,wx_na_wf,wx_un_do

