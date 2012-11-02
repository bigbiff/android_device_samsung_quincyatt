$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/quincyatt/i717-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/quincyatt/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/quincyatt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_quincyatt
PRODUCT_DEVICE := quincyatt

PRODUCT_COPY_FILES := device/samsung/quincyatt/runatboot.sh:recovery/root/sbin/runatboot.sh
