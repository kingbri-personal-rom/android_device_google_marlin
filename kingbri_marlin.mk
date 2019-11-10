# Inherit common device config
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

# Inherit proprietary blobs
$(call inherit-product, vendor/google/marlin/marlin-vendor.mk)

# Inherit kingbri vendor configuration
$(call inherit-product, vendor/kingbri/config/common.mk)

PRODUCT_NAME := kingbri_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
PRODUCT_RESTRICT_VENDOR_FILES := false

# Override some prop values in order to pass SafetyNet
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    PRIVATE_BUILD_DESC="marlin-user 10 QP1A.191005.007.A1 5908163 release-keys"

BUILD_FINGERPRINT := google/marlin/marlin:10/QP1A.191005.007.A1/5908163:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
