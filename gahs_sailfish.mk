# Inherit common device config
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

# Inherit proprietary blobs
$(call inherit-product, vendor/google/sailfish/sailfish-vendor.mk)

# Inherit Gahs vendor configuration
$(call inherit-product, vendor/gahs/config/common.mk)

PRODUCT_NAME := gahs_sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel
PRODUCT_RESTRICT_VENDOR_FILES := false
