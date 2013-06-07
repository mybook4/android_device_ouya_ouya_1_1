## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ouya_1_1

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/ouya/ouya_1_1/device_ouya_1_1.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ouya_1_1
PRODUCT_NAME := cm_ouya_1_1
PRODUCT_BRAND := ouya
PRODUCT_MODEL := ouya_1_1
PRODUCT_MANUFACTURER := ouya
