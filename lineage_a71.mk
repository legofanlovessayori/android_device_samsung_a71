#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from a71 device
$(call inherit-product, device/samsung/a71/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_a71
PRODUCT_DEVICE := a71
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A715
PRODUCT_MANUFACTURER := samsung

# Maintainer info
RISING_MAINTAINER := Legofan
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Qualcomm Snapdragon 730(G)" \
    RisingMaintainer="Legofan"
	
# Rising Specific
TARGET_ENABLE_BLUR := true

# GMS
WITH_GMS := true
TARGET_USES_FULL_GAPPS := true
TARGET_INCLUDE_GOOGLE_DIALER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Use the latest approved GMS identifiers
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a71naxx-user 13 TP1A.220624.014 A715FXXSBDXB1 release-keys" \
    BuildFingerprint=samsung/a71naxx/qssi:13/TP1A.220624.014/A715FXXSBDXB1:user/release-keys \
    DeviceProduct=a71naxx \
    SystemName=a71naxx
