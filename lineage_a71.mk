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

# Axion build configs
TARGET_ENABLE_BLUR := true
TARGET_DISABLE_EPPE := true
TARGET_INCLUDES_LOS_PREBUILTS := true


# Axion "About Phone" page info
AXION_CAMERA_REAR_INFO :=  64,12,5
AXION_CAMERA_FRONT_INFO := 32
AXION_MAINTAINER := Ruby
AXION_PROCESSOR := Qualcomm_Snapdragon_730

# Use the latest approved GMS identifiers
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a71naxx-user 13 TP1A.220624.014 A715FXXSBDXB1 release-keys" \
    BuildFingerprint=samsung/a71naxx/qssi:13/TP1A.220624.014/A715FXXSBDXB1:user/release-keys \
    DeviceProduct=a71naxx \
    SystemName=a71naxx
