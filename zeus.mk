# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/zeus/zeus-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/semc/zeus/overlay

$(call inherit-product, device/semc/zeus-common/zeus.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

PRODUCT_AAPT_CONFIG := normal hdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Init files
PRODUCT_COPY_FILES += \
    device/semc/zeus/prebuilt/init.semc.usb.rc:root/init.semc.usb.rc \
    device/semc/zeus/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    device/semc/msm7x30-common/prebuilt/logo_H.rle:root/logo.rle

# Device specific part for two-stage boot
PRODUCT_COPY_FILES += \
    device/semc/zeus/recovery/bootrec-device:recovery/bootrec-device

# Device specific configs
PRODUCT_COPY_FILES += \
    device/semc/zeus/config/cy8ctma300_touch.idc:system/usr/idc/cy8ctma300_touch.idc \
    device/semc/zeus/config/synaptics_touchpad.idc:system/usr/idc/synaptics_touchpad.idc \
    device/semc/zeus/config/atdaemon.kl:system/usr/keylayout/atdaemon.kl \
    device/semc/zeus/config/keypad-game-zeus.kl:system/usr/keylayout/keypad-game-zeus.kl \
    device/semc/zeus/config/keypad-phone-zeus.kl:system/usr/keylayout/keypad-phone-zeus.kl \
    device/semc/zeus/config/keypad-zeus.kl:system/usr/keylayout/keypad-zeus.kl \
    device/semc/zeus/config/simple_remote.kl:system/usr/keylayout/simple_remote.kl \
    device/semc/zeus/config/keypad-game-zeus.kcm:system/usr/keychars/keypad-game-zeus.kcm \
    device/semc/zeus/config/keypad-zeus.kcm:system/usr/keychars/keypad-zeus.kcm \
    device/semc/zeus/config/sensors.conf:system/etc/sensors.conf

$(call inherit-product, device/semc/msm7x30-common/prebuilt/resources-hdpi.mk)

# Device properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    ro.telephony.ril_class=SemcRIL \
    com.qc.hdmi_out=false
