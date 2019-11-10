# Inherit common device config
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

# Inherit proprietary blobs
$(call inherit-product, vendor/google/sailfish/sailfish-vendor.mk)

# Inherit Gahs vendor configuration
$(call inherit-product, vendor/kingbri/config/common.mk)

PRODUCT_NAME := kingbri_sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel
PRODUCT_RESTRICT_VENDOR_FILES := false

# Override some prop values in order to pass SafetyNet
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    PRIVATE_BUILD_DESC="sailfish-user 10 QP1A.191005.007.A1 5908163 release-keys"

BUILD_FINGERPRINT := google/sailfish/sailfish:10/QP1A.191005.007.A1/5908163:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
