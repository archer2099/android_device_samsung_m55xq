#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),m55xq)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
include $(CLEAR_VARS)
endif
