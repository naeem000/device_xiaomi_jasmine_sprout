#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2018-2021 Xiaomi-SDM660 Project
#
# SPDX-License-Identifier: Apache-2.0
#

# inherit MI A2 device config for SparkOS
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/spark_jasmine_sprout.mk

COMMON_LUNCH_CHOICES := \
    spark_jasmine_sprout-user \
    spark_jasmine_sprout-userdebug \
    spark_jasmine_sprout-eng
