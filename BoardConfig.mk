-include device/semc/zeus-common/BoardConfigCommon.mk
-include vendor/semc/zeus/BoardConfigVendor.mk

TARGET_KERNEL_SOURCE := kernel/semc/msm7x30
TARGET_KERNEL_CONFIG := cyanogen_zeus_defconfig
#TARGET_PREBUILT_KERNEL := device/semc/zeus/prebuilt/kernel
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

SENSORS_COMPASS_AK8975 := true
SENSORS_ACCEL_BMA150_INPUT := true
SENSORS_ACCEL_BMA250_INPUT := false
SENSORS_PROXIMITY_SHARP_GP2 := true
SENSORS_PRESSURE_BMP180 := false

TARGET_TOUCHPAD_INPUT_DEVICE_ID := 0x10003

BOARD_USES_STEREO_HW_SPEAKER := true

TARGET_OTA_ASSERT_DEVICE := R800i,R800a,R800at,zeus

