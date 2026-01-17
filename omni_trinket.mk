#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from trinket device
$(call inherit-product, device/qualcomm/trinket/device.mk)

PRODUCT_DEVICE := trinket
PRODUCT_NAME := omni_trinket
PRODUCT_BRAND := qti
PRODUCT_MODEL := S3
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="trinket-user 11 RKQ1.211119.001 jenkins202511051126 test-keys"

BUILD_FINGERPRINT := qti/trinket/trinket:11/RKQ1.211119.001/jenkins202511051126:user/test-keys
