PRODUCT_CHARACTERISTICS := tablet

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/ouya/ouya_1_1/ouya_1_1-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/ouya/ouya_1_1/overlay

LOCAL_PATH := device/ouya/ouya_1_1
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

# Inherit tablet dalvik settings
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := cm_ouya_1_1
PRODUCT_DEVICE := ouya_1_1
