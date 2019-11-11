# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from sp7731e_1h10 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := sprd
PRODUCT_DEVICE := sp7731e_1h10
PRODUCT_MANUFACTURER := sprd
PRODUCT_NAME := lineage_sp7731e_1h10
PRODUCT_MODEL := sp7731e_1h10_native

PRODUCT_GMS_CLIENTID_BASE := android-sprd
TARGET_VENDOR := sprd
TARGET_VENDOR_PRODUCT_NAME := sp7731e_1h10
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="sp7731e_1h10_native-user 9 PPR1.180610.011 13324 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := SPRD/sp7731e_1h10_native/sp7731e_1h10:9/PPR1.180610.011/13324:user/release-keys
