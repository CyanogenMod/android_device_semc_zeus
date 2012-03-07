-include device/semc/zeus-common/BoardConfigCommon.mk
-include vendor/semc/zeus/BoardConfigVendor.mk

SENSORS_COMPASS_AK897X := true
SENSORS_ACCEL_BMA150_INPUT := true
SENSORS_ACCEL_BMA250_INPUT := false
SENSORS_PROXIMITY_APDS970X := true
SENSORS_PRESSURE_BMP180 := false

TARGET_TOUCHPAD_INPUT_DEVICE_ID := 0x10003

TARGET_OTA_ASSERT_DEVICE := R800i,R800a,R800at,zeus

