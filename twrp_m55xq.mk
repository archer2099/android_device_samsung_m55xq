#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := m55xq

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from device
$(call inherit-product, device/samsung/$(PRODUCT_RELEASE_NAME)/device.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/$(PRODUCT_RELEASE_NAME)/recovery/root,recovery/root)

PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M556B
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m55xqddxx-user 12 SP2A.220305.013 M556BXXS3AXH1 release-keys"

BUILD_FINGERPRINT := samsung/m55xqddxx/$(PRODUCT_RELEASE_NAME):12/SP2A.220305.013/M556BXXS3AXH1:user/release-keys
