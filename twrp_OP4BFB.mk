#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier.
PRODUCT_BRAND := OPPO
PRODUCT_DEVICE := OP4BFB
PRODUCT_MANUFACTURER := OPPO
PRODUCT_MODEL := CPH2083
PRODUCT_NAME := twrp_OP4BFB
PRODUCT_RELEASE_NAME := OPPO A12

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=OP4BFB \
    BUILD_PRODUCT=CPH2083 \
    TARGET_DEVICE=OP4BFB

# API level
PRODUCT_SHIPPING_API_LEVEL := 28

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.bootimage.build.date.utc \
    ro.build.date.utc

# Dimen
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720