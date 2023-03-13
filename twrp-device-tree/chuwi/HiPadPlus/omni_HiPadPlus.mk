#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from HiPadPlus device
$(call inherit-product, device/chuwi/HiPadPlus/device.mk)

PRODUCT_DEVICE := HiPadPlus
PRODUCT_NAME := omni_HiPadPlus
PRODUCT_BRAND := CHUWI
PRODUCT_MODEL := HiPadPlus
PRODUCT_MANUFACTURER := chuwi

PRODUCT_GMS_CLIENTID_BASE := android-elink

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_tb8788p1_64_wifi-user 11 RP1A.200720.011 1632966161 release-keys"

BUILD_FINGERPRINT := CHUWI/HiPadPlus_11_EEA/HiPadPlus:11/RP1A.200720.011/1632966161:user/release-keys
