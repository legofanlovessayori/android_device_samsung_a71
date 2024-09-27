#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from a71 device
$(call inherit-product, device/samsung/a71/device.mk)

# Inherit common stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_a71
PRODUCT_DEVICE := a71
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A715
PRODUCT_MANUFACTURER := samsung

# PixelOS build flags
TARGET_HAVE_FOD := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Use the latest approved GMS identifiers
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a71naxx-user 13 TP1A.220624.014 A715FXXSBDXB1 release-keys" \
    PRODUCT_DEVICE=a71 \
    PRODUCT_NAME=a71naxx \
    TARGET_BOOTLOADER_BOARD_NAME=sm6150 \

BUILD_FINGERPRINT := "samsung/a71naxx/qssi:13/TP1A.220624.014/A715FXXSBDXB1:user/release-keys"
