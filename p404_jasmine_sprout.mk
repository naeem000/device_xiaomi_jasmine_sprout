#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2021 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common p404 stuff.
$(call inherit-product, vendor/404/configs/common.mk)

# Inherit from jasmine_sprout device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

USE_LEGACY_BOOTANIMATION := true

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi A2
PRODUCT_NAME := p404_jasmine_sprout

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := jasmine

# Build type
P404_BUILDTYPE := tokui-Gapps

