#
# Copyright (C) 2018-2021 The Evolution X Project
#
# SPDX-License-Identifier: Apache-2.0

# Inherit device configuration
$(call inherit-product, device/xiaomi/jasmine_sprout/device.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Build Description
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jasmine-user 9 PKQ1.180904.001 V10.0.9.0.PDIMIXM release-keys" \

# Build Fingerprint
BUILD_FINGERPRINT := "xiaomi/wayne/wayne:8.1.0/OPM1.171019.011/V9.5.11.0.ODCCNFA:user/release-keys"

# Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := evolution_jasmine_sprout
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_MODEL := Mi A2

# Inherit Evolution-X build stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)
EVO_BUILD_TYPE := UNOFFICIAL
USE_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

