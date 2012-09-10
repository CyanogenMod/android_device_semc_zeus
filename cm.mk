# Inherit device configuration
$(call inherit-product, device/semc/zeus/full_zeus.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := R800i

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_BRAND="Sony Ericsson" PRODUCT_NAME="Xperia Play" BUILD_FINGERPRINT=SEMC/R800i_0000-0000/R800i:4.0.3/4.1.H.0.4/-z9-3w:user/release-keys PRIVATE_BUILD_DESC="R800i-user 4.0.3 4.1.H.0.4 -z9-3w test-keys"

TARGET_BOOTANIMATION_NAME := vertical-480x854

# Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_zeus
PRODUCT_DEVICE := zeus
