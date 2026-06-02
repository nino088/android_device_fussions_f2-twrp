#
# Copyright (C) 2026 The Android Open Source Project
#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from s3912e device
$(call inherit-product, device/alps/s3912e/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := s3912e
PRODUCT_NAME := twrp_s3912e
PRODUCT_BRAND := alps
PRODUCT_MODEL := F2
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_s3912e-user 11 RP1A.200720.011 mp1k61v164bspP1 dev-keys"

BUILD_FINGERPRINT := alps/full_s3912e/s3912e:11/RP1A.200720.011/mp1k61v164bspP1:user/dev-keys
