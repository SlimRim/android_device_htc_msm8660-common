# Copyright (C) 2012 The CyanogenMod Project
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

USE_CAMERA_STUB := true

BOARD_VENDOR := htc

TARGET_SPECIFIC_HEADER_PATH := device/htc/msm8660-common/include

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/htc/msm8660
TARGET_KERNEL_CUSTOM_TOOLCHAIN := linaro-4.7.3_cortex-a8/bin/arm-eabi-

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_ARMV7A := true
TARGET_ARCH_VARIANT_CPU := cortex-a9

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# FB legacy
BOARD_EGL_NEEDS_LEGACY_FB := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_LEGACY_QCOM := true
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true


# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
COMMON_GLOBAL_CFLAGS += -DHTC_ACOUSTIC_AUDIO -DLEGACY_QCOM_VOICE -DQCOM_VOIP_ENABLED -DQCOM_ACDB_ENABLED

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUEDROID_VENDOR_CONF := device/htc/msm8660-common/bluetooth/vnd_msm8660.txt

# Camera
CAMERA_USES_SURFACEFLINGER_CLIENT_STUB := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DNO_UPDATE_PREVIEW
BOARD_HAVE_HTC_FFC := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_CAMERA_USE_MM_HEAP := true
TARGET_DISABLE_ARM_PIE := true

# Camera wrapper
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Filesystem
BOARD_VOLD_MAX_PARTITIONS := 36

# FM Radio
#BOARD_HAVE_QCOM_FM := true
#COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED
#COMMON_GLOBAL_CFLAGS += -DSTE_FM
#BOARD_USES_STE_FMRADIO := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_USES_LEGACY_MEDIA := true
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DQCOM_ROTATOR_KERNEL_FORMATS
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_PMEM := true
BOARD_EGL_CFG := device/htc/msm8660-common/configs/egl.cfg

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
