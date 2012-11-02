# Release name
PRODUCT_RELEASE_NAME := quincyatt

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/quincyatt/device_quincyatt.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := quincyatt
PRODUCT_NAME := cm_quincyatt
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := quincyatt
PRODUCT_MANUFACTURER := Samsung
