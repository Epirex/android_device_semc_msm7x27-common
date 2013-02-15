TARGET_SPECIFIC_HEADER_PATH := device/semc/msm7x27-common/include

## Camera
USE_CAMERA_STUB := true
BOARD_USES_ECLAIR_LIBCAMERA := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BUILD_CAMERAHAL := true
TARGET_DISABLE_ARM_PIE := true
BOARD_CPU_COLOR_CONVERT := true
BOARD_USES_LEGACY_CAMERA := true

## ARMv6-compatible processor rev 5 (v6l)
TARGET_BOARD_PLATFORM := msm7x27
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true

BOARD_USE_SCREENCAP := true
TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true
TARGET_USE_SOFTWARE_AUDIO_AAC := true
COPYBIT_MSM7K := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

## GPS HAL
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := delta
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

## Bluetooth
BOARD_HAVE_BLUETOOTH := true
TARGET_CUSTOM_BLUEDROID := ../../../device/semc/msm7x27-common/bluedroid.c
BOARD_HAVE_BLUETOOTH_CUSTOM_HCIATTACH := true

## Lights
TARGET_PROVIDES_LIBLIGHTS := true

## Wifi & hotspot
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_wl12xx
BOARD_WLAN_DEVICE                := wl12xx_mac80211
BOARD_SOFTAP_DEVICE              := wl12xx_mac80211
USES_TI_MAC80211 := true

COMMON_GLOBAL_CFLAGS += -DUSES_TI_MAC80211

## Usb
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun0/file"

## Custom CFLAGS
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DTARGET_MSM7x27
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT -DQCOM_NO_SECURE_PLAYBACK
#COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_PIXEL_FORMAT_YV12 -DMISSING_GRALLOC_BUFFERS -DMISSING_EGL_EXTERNAL_IMAGE
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
COMMON_GLOBAL_CFLAGS += -DECLAIR_LIBCAMERA
COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_OMX
COMMON_GLOBAL_CFLAGS += -DANCIENT_GL

#COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27
#COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
#COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
#COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT

#COMMON_GLOBAL_CFLAGS += -DICS_AUDIO_BLOB
#COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
#COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
#COMMON_GLOBAL_CFLAGS += -DCPU_COLOR_CONVERT
#COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_GRALLOC_BUFFERS
#COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_PIXEL_FORMAT_YV12

#COMMON_GLOBAL_CFLAGS += -DBOARD_GL_OES_EGL_IMG_EXTERNAL_HACK
#COMMON_GLOBAL_CFLAGS += -DFORCE_CPU_UPLOAD
#COMMON_GLOBAL_CFLAGS += -DEGL_TRACE
#COMMON_GLOBAL_CFLAGS += -D_INTERNAL_BINDER_PARCEL_

## Jit
WITH_JIT := true
ENABLE_JSC_JIT:= true
ARCH_ARM_HAVE_VFP := true

## browser/yt fix
JS_ENGINE := v8
HTTP := chrome
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

## HW ACCEL
BOARD_EGL_CFG := device/semc/msm7x27-common/prebuilt/egl.cfg
BOARD_USES_QCOM_HARDWARE := true
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
#BOARD_USES_LEGACY_QCOM := false
#TARGET_USES_GENLOCK := true
#TARGET_USES_OVERLAY := false
#TARGET_USES_C2D_COMPOSITION := false

#BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
#BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
#BOARD_USE_SKIA_LCDTEXT := true

#BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
#BOARD_USE_NASTY_PTHREAD_CREATE_HACK := false
#TARGET_HAVE_BYPASS := true
#BUILD_WITH_FULL_STAGEFRIGHT=true


## Kernel
BOARD_KERNEL_CMDLINE := console=null
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 0x00000800
BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_CUSTOM_BOOTIMG_MK := device/semc/msm7x27-common/custombootimg.mk
#TARGET_PREBUILT_KERNEL := device/semc/msm7x27-common/kernel
#TARGET_NO_KERNEL := true

## Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_GENERIC_AUDIO := false
#BOARD_COMBO_DEVICE_SUPPORTED := true
#BOARD_USES_AUDIO_LEGACY := false

## Odex
WITH_DEXPREOPT := false

## Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

## Recovery
TARGET_RECOVERY_PRE_COMMAND := "touch /cache/recovery/boot;sync;"
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/semc/msm7x27-common/recovery/recovery_keys.c

## A custom ota package maker for a device without a boot partition
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/semc/msm7x27-common/releasetools/semc_ota_from_target_files

## Prelinks
PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/device/semc/msm7x27-common/prelink-linux-arm-msm7x27.map

## Misc
#BOARD_USE_LEGACY_TOUCHSCREEN := true

