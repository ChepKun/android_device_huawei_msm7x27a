#
# Copyright 2014 The Android Open Source Project
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

# Platform
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Architecture and CPU
TARGET_ARCH 			:= arm
TARGET_ARCH_VARIANT 		:= armv7-a-neon
TARGET_CPU_ABI 			:= armeabi-v7a
TARGET_CPU_ABI2 		:= armeabi
TARGET_CPU_VARIANT 		:= cortex-a5
TARGET_BOARD_PLATFORM 		:= msm7x27a
TARGET_BOARD_PLATFORM_GPU 	:= qcom-adreno200
TARGET_USES_ION 		:= true

# Qualcomm hardware
BOARD_USES_QCOM_HARDWARE 	:= true
BOARD_USES_QCOM_LIBS 		:= true
BOARD_USE_QCOM_LLVM_CLANG_RS 	:= true
COMMON_GLOBAL_CFLAGS 		+= -DQCOM_HARDWARE

# Optimizations
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Dalvik
TARGET_ARCH_LOWMEM := true

# Kernel
BOARD_KERNEL_BASE 	:= 0x00200000
BOARD_KERNEL_CMDLINE 	:= androidboot.hardware=huawei androidboot.selinux=permissive
BOARD_PAGE_SIZE 	:= 2048
TARGET_KERNEL_SOURCE 	:= kernel/huawei/msm7x27a

# Compiler flags
TARGET_GLOBAL_CFLAGS   += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp

# Include
TARGET_SPECIFIC_HEADER_PATH 	:= device/huawei/msm7x27a/include/kernel
BOARD_HARDWARE_CLASS 		:= device/huawei/msm7x27a/include/android/hardware

# Storage
BOARD_WANTS_EMMC_BOOT := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# GPS
BOARD_USES_QCOM_GPS 				:= true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION 	:= 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE 		:= $(TARGET_BOARD_PLATFORM)

# Graphics
BOARD_EGL_CFG 				:= device/huawei/msm7x27a/configs/egl.cfg
USE_OPENGL_RENDERER 			:= true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET 	:= true
TARGET_QCOM_DISPLAY_VARIANT 		:= legacy
COMMON_GLOBAL_CFLAGS 			+= -DREFRESH_RATE=65

# Media
TARGET_USES_QCOM_BSP 		:= true
TARGET_QCOM_LEGACY_OMX 		:= true
TARGET_QCOM_MEDIA_VARIANT 	:= legacy
COMMON_GLOBAL_CFLAGS 		+= -DQCOM_BSP
COMMON_GLOBAL_CFLAGS 		+= -DQCOM_LEGACY_OMX

# Camera
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB

# Audio
TARGET_PROVIDES_LIBAUDIO := true

# FM Radio
BOARD_HAVE_QCOM_FM 	:= true
COMMON_GLOBAL_CFLAGS 	+= -DQCOM_FM_ENABLED

# SELinux
BOARD_SEPOLICY_DIRS += device/huawei/msm7x27a/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    file.te

# Bootanimation
TARGET_BOOTANIMATION_USE_RGB565 := true

# Fonts
SMALLER_FONT_FOOTPRINT := true

# Web Rendering
ENABLE_WEBGL 		:= true
TARGET_FORCE_CPU_UPLOAD := true

# USB
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR 	:= true
BOARD_VOLD_MAX_PARTITIONS 		:= 19
BOARD_UMS_LUNFILE 			:= /sys/class/android_usb/android0/f_mass_storage/lun%d/file
TARGET_USE_CUSTOM_LUN_FILE_PATH 	:= /sys/class/android_usb/android0/f_mass_storage/lun%d/file
TARGET_USE_CUSTOM_SECOND_LUN_NUM 	:= 1

# Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER 	:= NL80211
BOARD_HOSTAPD_DRIVER 		:= NL80211
WPA_SUPPLICANT_VERSION 		:= VER_0_8_X
TARGET_CUSTOM_WIFI 		:= ../../device/huawei/msm7x27a/hardware/wifi/wifi.c

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE 		:= 0x800000
BOARD_CACHEIMAGE_PARTITION_SIZE 	:= 201326592
BOARD_RECOVERYIMAGE_PARTITION_SIZE 	:= 0x1400000
BOARD_FLASH_BLOCK_SIZE 			:= 131072
TARGET_USERIMAGES_USE_EXT4 		:= true

# Recovery TWRP
TARGET_RECOVERY_INITRC 		 := device/huawei/msm7x27a/recovery/init.rc
TARGET_RECOVERY_PIXEL_FORMAT 	 := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON 	 := true
BOARD_HAS_LARGE_FILESYSTEM 	 := true
BOARD_HAS_NO_MISC_PARTITION 	 := true
BOARD_USES_MMCUTILS 		 := true
SP1_NAME 			 := "cust"
SP1_BACKUP_METHOD 		 := files
SP1_MOUNTABLE 			 := 1
SP2_NAME 			 := "internal_sd"
SP2_BACKUP_METHOD 		 := files
SP2_MOUNTABLE 			 := 1
TW_INTERNAL_STORAGE_PATH 	 := "/internal_sd"
TW_INTERNAL_STORAGE_MOUNT_POINT  := "internal_sd"
TW_EXTERNAL_STORAGE_PATH 	 := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT  := "sdcard"
TW_DEFAULT_EXTERNAL_STORAGE 	 := true
TW_FLASH_FROM_STORAGE 		 := true 
BOARD_USE_CUSTOM_RECOVERY_FONT	 := \"roboto_10x18.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_BRIGHTNESS_PATH 		 := /sys/devices/platform/msm_fb.589824/leds/lcd-backlight/brightness
TW_BUTTONS_BRIGHTNESS_PATH 	 := /sys/devices/platform/msm_fb.589824/leds/lcd-backlight/subsystem/button-backlight/brightness
TW_MAX_BRIGHTNESS 		 := 255
