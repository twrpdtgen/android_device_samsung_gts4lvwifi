#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from gts4lvwifi device
$(call inherit-product, device/samsung/gts4lvwifi/device.mk)

PRODUCT_DEVICE := gts4lvwifi
PRODUCT_NAME := omni_gts4lvwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T720
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gts4lvwifixx-user 11 RP1A.200720.012 T720XXS3DWA1 release-keys"

BUILD_FINGERPRINT := samsung/gts4lvwifixx/gts4lvwifi:11/RP1A.200720.012/T720XXS3DWA1:user/release-keys
