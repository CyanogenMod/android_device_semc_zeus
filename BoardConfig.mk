-include device/semc/msm7x30-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := zeus
TARGET_SPECIFIC_HEADER_PATH := device/semc/zeus/include

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_STA_PATH     := "/etc/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH      := "/etc/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"

BOARD_HAVE_BLUETOOTH_BCM := true

TARGET_OTA_ASSERT_DEVICE := R800i,R800a,zeus

BOARD_CAMERA_USE_GETBUFFERINFO := true

-include device/semc/msm7x30-common/Android.mk
