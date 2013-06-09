# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ouya_1_1

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/ouya/ouya_1_1/full_ouya_1_1.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ouya_1_1
PRODUCT_NAME := cm_ouya_1_1
PRODUCT_BRAND := OUYA
PRODUCT_MODEL := OUYA Console
PRODUCT_MANUFACTURER := OUYA
