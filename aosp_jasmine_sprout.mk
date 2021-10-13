#
# Copyright (C) 2018-2021 PixelBlaster-OS
#
# SPDX-License-Identifier: Apache-2.0

# Inherit device configuration
$(call inherit-product, device/xiaomi/jasmine_sprout/device.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Build Description
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jasmine-user 9 PKQ1.180904.001 V10.0.9.0.PDIMIXM release-keys" \
    PRODUCT_NAME="jasmine_sprout" \
    TARGET_DEVICE="jasmine_sprout"

# Build Fingerprint
BUILD_FINGERPRINT := "xiaomi/wayne/wayne:8.1.0/OPM1.171019.011/V9.5.11.0.ODCCNFA:user/release-keys"

# Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := aosp_jasmine_sprout
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_MODEL := Mi A2

# Inherit PixelBlaster-OS build stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
BLASTER_BUILD_TYPE := OFFICIAL
BLASTER_BUILD_VARIANT := GAPPS
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true

# PixelBlaster-OS
PRODUCT_PRODUCT_PROPERTIES += \
        ro.pb.maintainer= Naeem Mansuri \
        ro.pb.soc= SDM660 \
        ro.pb.camera= 12MP+20MP,20MP \
        ro.pb.version= 3.5 \
        ro.pb.codename= jasmine_sprout \
        ro.pb.device= Xiaomi Mi A2 \
        ro.pb.cores= 8       

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

