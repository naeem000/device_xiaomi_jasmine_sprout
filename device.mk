#
# Copyright (C) 2021 Paranoid Android
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit the fusion-common definitions
$(call inherit-product, device/xiaomi/wayne-common/wayne-common.mk)

# Device Path
DEVICE_PATH := device/xiaomi/jasmine_sprout

# A/B
ENABLE_AB := true

# Fstab
PRODUCT_PACKAGES += \
    fstab.qcom

# Overlays
PRODUCT_PACKAGES += \
    JasmineWifi

# PRODUCT_SHIPPING_API_LEVEL indicates the first api level, device has been commercially launched on.
PRODUCT_SHIPPING_API_LEVEL := 27

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)
