#
# Copyright (C) 2018-2021 The Evolution X Project
#
# SPDX-License-Identifier: Apache-2.0
#

# inherit MI A2 device config for Evolution-X
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/evolution_jasmine_sprout.mk

COMMON_LUNCH_CHOICES := \
    evolution_jasmine_sprout-user \
    evolution_jasmine_sprout-userdebug \
    evolution_jasmine_sprout-eng
