# Inherit common device config
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

# Inherit proprietary blobs
$(call inherit-product, vendor/google/marlin/marlin-vendor.mk)

# Inherit Gahs vendor configuration
$(call inherit-product, vendor/gahs/config/common.mk)

PRODUCT_NAME := gahs_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
PRODUCT_RESTRICT_VENDOR_FILES := false
