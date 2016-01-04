# Copyright (C) 2011 The Android Open Source Project
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

# Changes made relating to Tegra Processor platforms by NVIDIA CORPORATION are subject
# to the following terms and conditions:
#
# Copyright (c) 2012-2014 NVIDIA CORPORATION.  All Rights Reserved.
#
# NVIDIA CORPORATION and its licensors retain all intellectual property
# and proprietary rights in and to this software, related documentation
# and any modifications thereto.  Any use, reproduction, disclosure or
# distribution of this software and related documentation without an express
# license agreement from NVIDIA CORPORATION is strictly prohibited.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libpowerhal

#LOCAL_CFLAGS += -DGPU_IS_GK20A

LOCAL_SRC_FILES += nvpowerhal.cpp timeoutpoker.cpp

LOCAL_SRC_FILES += powerhal_utils.cpp

#LOCAL_REQUIRED_MODULES := libphs

include $(BUILD_STATIC_LIBRARY)
