#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier.
PRODUCT_BRAND := OPPO
PRODUCT_DEVICE := OP4BFB
PRODUCT_MANUFACTURER := OPPO
PRODUCT_MODEL := CPH2083
PRODUCT_NAME := omni_OP4BFB
PRODUCT_RELEASE_NAME := OPPO A12

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=OP4BFB \
    BUILD_PRODUCT=OP4BFB \
    TARGET_DEVICE=OP4BFB

# Dimen
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720
