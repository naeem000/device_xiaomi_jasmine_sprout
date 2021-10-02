#
# Copyright (C) 2018-2021 PixelBlaster-OS
#
# SPDX-License-Identifier: Apache-2.0
#

# inherit MI A2 device config for PixelBlaster-OS
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_jasmine_sprout.mk

COMMON_LUNCH_CHOICES := \
    aosp_jasmine_sprout-user \
    aosp_jasmine_sprout-userdebug \
    aosp_jasmine_sprout-eng
