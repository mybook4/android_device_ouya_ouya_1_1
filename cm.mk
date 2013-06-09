# Resolution values for bootanimation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/ouya/ouya_1_1/full_ouya_1_1.mk)

#
# Setup device specific product configuration.
#
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := cm_ouya_1_1
PRODUCT_BRAND := OUYA
PRODUCT_DEVICE := ouya_1_1
PRODUCT_MODEL := OUYA Console
PRODUCT_MANUFACTURER := OUYA


# Release name and versioning
PRODUCT_RELEASE_NAME := ouya_1_1
