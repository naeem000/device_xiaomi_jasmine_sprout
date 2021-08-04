#
# Copyright (C) 2018-2021 Xiaomi-SDM660 Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/jasmine_sprout/device.mk)

# Inherit some common RevengeOS stuff
$(call inherit-product, vendor/revengeos/config/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true

# Build Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210705.001 7380771 release-keys" \
    BUILD_FINGERPRINT="google/redfin/redfin:11/RQ3A.210705.001/7380771:user/release-keys"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

# Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := revengeos_jasmine_sprout
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_MODEL := Mi A2

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#TWRP
include recovery/twrp/xiaomi/jasmine_sprout/twrp.mk

